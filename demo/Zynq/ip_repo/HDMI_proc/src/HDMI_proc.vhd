-- Auteur : Stephane Mancini
-- stephane.mancini@grenoble-inp.fr


-- Affiche l'image provenant de la camera
-- Entree camera CSI type RPi
-- Domaine d'horloge de la camera
-- flux sortant : stream RGB 8bit par composante

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity HDMI_proc is
  
  port (

    led : out std_logic_vector(3 downto 0);
    btn: in std_logic_vector(3 downto 0);
    sw : in std_logic_vector(3 downto 0);
    
    clk_display : in std_logic;  -- 25
    clk_hdmi    : in std_logic;  -- 25*10

    
    hdmi_TMDS_Clk_p : out std_logic;
    hdmi_TMDS_Clk_n : out std_logic;
    hdmi_TMDS_Data_p : out std_logic_vector(2 downto 0);
    hdmi_TMDS_Data_n : out std_logic_vector(2 downto 0)
    
    );
end entity HDMI_proc;

architecture RTL of HDMI_proc is

  component HDMI_RAM_syn is
    port (
      led : out STD_LOGIC_VECTOR ( 3 downto 0 );
      push : in STD_LOGIC_VECTOR ( 3 downto 0 );
      sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
      clk_display : in STD_LOGIC;
      clk_hdmi : in STD_LOGIC;
      
      hdmi_TMDS_Clk_p : out STD_LOGIC;
      hdmi_TMDS_Clk_n : out STD_LOGIC;
      hdmi_TMDS_Data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
      hdmi_TMDS_Data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );

      clk_proc : in STD_LOGIC;

      \proc_display_mem_ctl[we]\ : in STD_LOGIC;
      \proc_display_mem_ctl[en]\ : in STD_LOGIC;
      \proc_display_mem_ctl[addr]\ : in STD_LOGIC_VECTOR ( 21 downto 0 );
      proc_display_mem_data : in STD_LOGIC_VECTOR (7 downto 0 )
      );
  end component HDMI_RAM_syn;
  
  signal clk_proc                  :  STD_LOGIC;

  signal \display_mem_ctl[we]\   : STD_LOGIC;
  signal \display_mem_ctl[en]\   :  STD_LOGIC;
  signal \display_mem_ctl[addr]\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal display_mem_data        : STD_LOGIC_VECTOR (7 downto 0 );
  
  component DispProcTest IS
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      img_out_triosy_lz : OUT STD_LOGIC;
      img_out_rsc_wadr : OUT STD_LOGIC_VECTOR (16 DOWNTO 0);
      img_out_rsc_d : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
      img_out_rsc_we : OUT STD_LOGIC
      );
  END component DispProcTest;
signal auto_reset, reset : std_logic;  
  
begin
reset_auto : process(clk_proc)
variable cpt : integer range 0 to 1024;
 begin
 if rising_edge(clk_proc) then
 reset <= btn(0) or auto_reset; 
   if cpt /= 1000 then 
   cpt := cpt +1;
  auto_reset <= '1';
else
  auto_reset <= '0';
end if;
end if;
end process reset_auto;
clk_proc <= clk_display;
  display:   HDMI_RAM_syn
    port map (
      led => led,
      push => btn,
      sw => sw,
      
      clk_display => clk_display,
      clk_hdmi => clk_hdmi,

      hdmi_TMDS_Clk_p => hdmi_TMDS_Clk_p,
      hdmi_TMDS_Clk_n => hdmi_TMDS_Clk_n,
      hdmi_TMDS_Data_p =>  hdmi_TMDS_Data_p,
      hdmi_TMDS_Data_n => hdmi_TMDS_Data_n,
      
 
      clk_proc => clk_proc,
      \proc_display_mem_ctl[we]\ => \display_mem_ctl[we]\,
      \proc_display_mem_ctl[en]\ => \display_mem_ctl[en]\,
      \proc_display_mem_ctl[addr]\ => \display_mem_ctl[addr]\,
      proc_display_mem_data => display_mem_data
      
      );
  \display_mem_ctl[addr]\(21 downto 17) <= (others=>'0');
  \display_mem_ctl[en]\ <= \display_mem_ctl[we]\;
  proc :  DispProcTest
    PORT map(
      clk => clk_proc,
      rst => reset,
      img_out_triosy_lz => open,
      img_out_rsc_wadr =>  \display_mem_ctl[addr]\(16 downto 0),
      img_out_rsc_d => display_mem_data,
      img_out_rsc_we => \display_mem_ctl[we]\
      );
  
end RTL;

