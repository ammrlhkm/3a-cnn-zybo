-- CNN Hardware Test (No Display)
-- Input: cnn_input_rom.vhd (24x24x3 normalized image)
-- Output: LEDs showing predicted CIFAR-10 class
-- Author: Generated for Zybo Z7-20

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CNN_Ref_Emulation is
  port (
    sys_clk : in std_logic;  -- 125 MHz system clock input
    btn : in std_logic_vector(3 downto 0);
    sw  : in std_logic_vector(3 downto 0);
    led : out std_logic_vector(3 downto 0)
  );
end entity CNN_Ref_Emulation;

architecture RTL of CNN_Ref_Emulation is

  -- CNN Hardware component (from Catapult HLS)
  component cnn_hardware is
    port(
      clk              : in  std_logic;
      rst              : in  std_logic;
      input_rsc_radr   : out std_logic_vector(10 downto 0);
      input_rsc_re     : out std_logic;
      input_rsc_q      : in  std_logic_vector(9 downto 0);
      input_triosy_lz  : out std_logic;
      output_rsc_dat   : out std_logic_vector(99 downto 0);
      output_triosy_lz : out std_logic
    );
  end component cnn_hardware;

  -- Input ROM component
  component cnn_input_rom is
    port (
      clk      : in  std_logic;
      addr     : in  std_logic_vector(10 downto 0);
      re       : in  std_logic;
      dout     : out std_logic_vector(9 downto 0)
    );
  end component cnn_input_rom;

  -- Clock Wizard component
  component clk_system_wrapper is
    port (
      sys_clk : in  std_logic;  -- 125 MHz input
      clk_cnn : out std_logic;  -- 50 MHz output
      reset   : in  std_logic;
      locked  : out std_logic
    );
  end component;

  -- Clock signals
  signal clk_cnn         : std_logic;  -- 50 MHz CNN clock from Clock Wizard
  signal locked          : std_logic;  -- Clock Wizard locked signal
  
  -- Signals
  signal reset_int       : std_logic;  -- Internal reset synchronized with locked
  signal cnn_run         : std_logic;  -- Run CNN when high
  
  -- CNN interface
  signal cnn_input_addr  : std_logic_vector(10 downto 0);
  signal cnn_input_re    : std_logic;
  signal cnn_input_data  : std_logic_vector(9 downto 0);
  signal cnn_input_done  : std_logic;
  signal cnn_output_dat  : std_logic_vector(99 downto 0);
  signal cnn_output_done : std_logic;
  
  -- Class probabilities (10 classes)
  type prob_array_t is array (0 to 9) of signed(9 downto 0);
  signal class_probs : prob_array_t;
  
  -- Argmax result
  signal max_class      : unsigned(3 downto 0);
  signal max_prob       : signed(9 downto 0);
  signal result_ready   : std_logic;
  
  -- Argmax pipeline stages (reduces critical path)
  signal stage1_max : prob_array_t;
  signal stage1_idx : prob_array_t;
  signal stage2_max : prob_array_t;
  signal stage2_idx : prob_array_t;
  signal stage3_max : signed(9 downto 0);
  signal stage3_idx : unsigned(3 downto 0);
  signal argmax_stage : unsigned(2 downto 0);

begin

  clk_wiz_inst : clk_system_wrapper
    port map (
      sys_clk => sys_clk,   -- 125 MHz input
      clk_cnn => clk_cnn,   -- 50 MHz output for CNN
      reset   => '0',       -- No reset for Clock Wizard
      locked  => locked     -- PLL locked indicator
    );
  
  -- Control logic
  -- SW(0) = 1: Run CNN
  -- SW(0) = 0: Reset
  cnn_run <= sw(0);
  reset_int <= not sw(0) or not locked;

  -- Input ROM
  input_rom : cnn_input_rom
    port map (
      clk      => clk_cnn,
      addr     => cnn_input_addr,
      re       => cnn_input_re,
      dout     => cnn_input_data
    );

  -- CNN core
  cnn : cnn_hardware
    port map (
      clk              => clk_cnn,
      rst              => reset_int,
      input_rsc_radr   => cnn_input_addr,
      input_rsc_re     => cnn_input_re,
      input_rsc_q      => cnn_input_data,
      input_triosy_lz  => cnn_input_done,
      output_rsc_dat   => cnn_output_dat,
      output_triosy_lz => cnn_output_done
    );

  -- Extract 10 class probabilities from 100-bit output
  process(cnn_output_dat)
  begin
    for i in 0 to 9 loop
      class_probs(i) <= signed(cnn_output_dat(i*10+9 downto i*10));
    end loop;
  end process;

  -- Pipelined argmax (reduces critical path from ~40 to ~12 logic levels)
  -- This finds the class with maximum probability
  process(clk_cnn)
  begin
    if rising_edge(clk_cnn) then
      if reset_int = '1' then
        result_ready <= '0';
        argmax_stage <= (others => '0');
        max_class <= (others => '0');
        max_prob <= (others => '0');
        
      elsif cnn_output_done = '1' and result_ready = '0' then
        case to_integer(argmax_stage) is
          -- Stage 0: Compare pairs (0vs1, 2vs3, 4vs5, 6vs7, 8vs9)
          when 0 =>
            if class_probs(0) > class_probs(1) then
              stage1_max(0) <= class_probs(0);
              stage1_idx(0) <= to_signed(0, 10);
            else
              stage1_max(0) <= class_probs(1);
              stage1_idx(0) <= to_signed(1, 10);
            end if;
            
            if class_probs(2) > class_probs(3) then
              stage1_max(1) <= class_probs(2);
              stage1_idx(1) <= to_signed(2, 10);
            else
              stage1_max(1) <= class_probs(3);
              stage1_idx(1) <= to_signed(3, 10);
            end if;
            
            if class_probs(4) > class_probs(5) then
              stage1_max(2) <= class_probs(4);
              stage1_idx(2) <= to_signed(4, 10);
            else
              stage1_max(2) <= class_probs(5);
              stage1_idx(2) <= to_signed(5, 10);
            end if;
            
            if class_probs(6) > class_probs(7) then
              stage1_max(3) <= class_probs(6);
              stage1_idx(3) <= to_signed(6, 10);
            else
              stage1_max(3) <= class_probs(7);
              stage1_idx(3) <= to_signed(7, 10);
            end if;
            
            if class_probs(8) > class_probs(9) then
              stage1_max(4) <= class_probs(8);
              stage1_idx(4) <= to_signed(8, 10);
            else
              stage1_max(4) <= class_probs(9);
              stage1_idx(4) <= to_signed(9, 10);
            end if;
            
            argmax_stage <= argmax_stage + 1;
          
          -- Stage 1: Compare winners from stage 0
          when 1 =>
            -- Compare (0,1) vs (2,3)
            if stage1_max(0) > stage1_max(1) then
              stage2_max(0) <= stage1_max(0);
              stage2_idx(0) <= stage1_idx(0);
            else
              stage2_max(0) <= stage1_max(1);
              stage2_idx(0) <= stage1_idx(1);
            end if;
            
            -- Compare (4,5) vs (6,7)
            if stage1_max(2) > stage1_max(3) then
              stage2_max(1) <= stage1_max(2);
              stage2_idx(1) <= stage1_idx(2);
            else
              stage2_max(1) <= stage1_max(3);
              stage2_idx(1) <= stage1_idx(3);
            end if;
            
            -- Pass through (8,9) winner
            stage2_max(2) <= stage1_max(4);
            stage2_idx(2) <= stage1_idx(4);
            
            argmax_stage <= argmax_stage + 1;
          
          -- Stage 2: Compare (0-3) vs (4-7)
          when 2 =>
            if stage2_max(0) > stage2_max(1) then
              stage3_max <= stage2_max(0);
              stage3_idx <= unsigned(stage2_idx(0)(3 downto 0));
            else
              stage3_max <= stage2_max(1);
              stage3_idx <= unsigned(stage2_idx(1)(3 downto 0));
            end if;
            
            argmax_stage <= argmax_stage + 1;
          
          -- Stage 3: Final comparison with (8,9) winner
          when 3 =>
            if stage2_max(2) > stage3_max then
              max_class <= unsigned(stage2_idx(2)(3 downto 0));
              max_prob <= stage2_max(2);
            else
              max_class <= stage3_idx;
              max_prob <= stage3_max;
            end if;
            
            result_ready <= '1';
            argmax_stage <= argmax_stage + 1;
          
          when others =>
            -- Hold result until reset
            null;
        end case;
        
      end if;
    end if;
  end process;

  led <= std_logic_vector(max_class);

end RTL;
