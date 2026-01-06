library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity axi_Z7_ProcHDMI_L8_S00_AXI is
  generic (
    -- Users to add parameters here

    -- User parameters ends
    -- Do not modify the parameters beyond this line

    -- Width of ID for for write address, write data, read address and read data
    C_S_AXI_ID_WIDTH	: integer	:= 1;
    -- Width of S_AXI data bus
    C_S_AXI_DATA_WIDTH	: integer	:= 32;
    -- Width of S_AXI address bus
    C_S_AXI_ADDR_WIDTH	: integer	:= 22;
    -- Width of optional user defined signal in write address channel
    C_S_AXI_AWUSER_WIDTH	: integer	:= 0;
    -- Width of optional user defined signal in read address channel
    C_S_AXI_ARUSER_WIDTH	: integer	:= 0;
    -- Width of optional user defined signal in write data channel
    C_S_AXI_WUSER_WIDTH	: integer	:= 0;
    -- Width of optional user defined signal in read data channel
    C_S_AXI_RUSER_WIDTH	: integer	:= 0;
    -- Width of optional user defined signal in write response channel
    C_S_AXI_BUSER_WIDTH	: integer	:= 0
	);
  port (
    -- Users to add ports here
    btn: in STD_LOGIC_VECTOR ( 3 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    
    
    clk_display : in std_logic;  -- 25
    clk_hdmi    : in std_logic;  -- 25*10

    
    hdmi_TMDS_Clk_p : out std_logic;
    hdmi_TMDS_Clk_n : out std_logic;
    hdmi_TMDS_Data_p : out std_logic_vector(2 downto 0);
    hdmi_TMDS_Data_n : out std_logic_vector(2 downto 0);
    -- User ports ends
    -- Do not modify the ports beyond this line

    -- Global Clock Signal
    S_AXI_ACLK	: in std_logic;
    -- Global Reset Signal. This Signal is Active LOW
    S_AXI_ARESETN	: in std_logic;
    -- Write Address ID
    S_AXI_AWID	: in std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
    -- Write address
    S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    -- Burst length. The burst length gives the exact number of transfers in a burst
    S_AXI_AWLEN	: in std_logic_vector(7 downto 0);
    -- Burst size. This signal indicates the size of each transfer in the burst
    S_AXI_AWSIZE	: in std_logic_vector(2 downto 0);
    -- Burst type. The burst type and the size information, 
    -- determine how the address for each transfer within the burst is calculated.
    S_AXI_AWBURST	: in std_logic_vector(1 downto 0);
    -- Lock type. Provides additional information about the
    -- atomic characteristics of the transfer.
    S_AXI_AWLOCK	: in std_logic;
    -- Memory type. This signal indicates how transactions
    -- are required to progress through a system.
    S_AXI_AWCACHE	: in std_logic_vector(3 downto 0);
    -- Protection type. This signal indicates the privilege
    -- and security level of the transaction, and whether
    -- the transaction is a data access or an instruction access.
    S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
    -- Quality of Service, QoS identifier sent for each
    -- write transaction.
    S_AXI_AWQOS	: in std_logic_vector(3 downto 0);
    -- Region identifier. Permits a single physical interface
    -- on a slave to be used for multiple logical interfaces.
    S_AXI_AWREGION	: in std_logic_vector(3 downto 0);
    -- Optional User-defined signal in the write address channel.
    S_AXI_AWUSER	: in std_logic_vector(C_S_AXI_AWUSER_WIDTH-1 downto 0);
    -- Write address valid. This signal indicates that
    -- the channel is signaling valid write address and
    -- control information.
    S_AXI_AWVALID	: in std_logic;
    -- Write address ready. This signal indicates that
    -- the slave is ready to accept an address and associated
    -- control signals.
    S_AXI_AWREADY	: out std_logic;
    -- Write Data
    S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    -- Write strobes. This signal indicates which byte
    -- lanes hold valid data. There is one write strobe
    -- bit for each eight bits of the write data bus.
    S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
    -- Write last. This signal indicates the last transfer
    -- in a write burst.
    S_AXI_WLAST	: in std_logic;
    -- Optional User-defined signal in the write data channel.
    S_AXI_WUSER	: in std_logic_vector(C_S_AXI_WUSER_WIDTH-1 downto 0);
    -- Write valid. This signal indicates that valid write
    -- data and strobes are available.
    S_AXI_WVALID	: in std_logic;
    -- Write ready. This signal indicates that the slave
    -- can accept the write data.
    S_AXI_WREADY	: out std_logic;
    -- Response ID tag. This signal is the ID tag of the
    -- write response.
    S_AXI_BID	: out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
    -- Write response. This signal indicates the status
    -- of the write transaction.
    S_AXI_BRESP	: out std_logic_vector(1 downto 0);
    -- Optional User-defined signal in the write response channel.
    S_AXI_BUSER	: out std_logic_vector(C_S_AXI_BUSER_WIDTH-1 downto 0);
    -- Write response valid. This signal indicates that the
    -- channel is signaling a valid write response.
    S_AXI_BVALID	: out std_logic;
    -- Response ready. This signal indicates that the master
    -- can accept a write response.
    S_AXI_BREADY	: in std_logic;
    -- Read address ID. This signal is the identification
    -- tag for the read address group of signals.
    S_AXI_ARID	: in std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
    -- Read address. This signal indicates the initial
    -- address of a read burst transaction.
    S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    -- Burst length. The burst length gives the exact number of transfers in a burst
    S_AXI_ARLEN	: in std_logic_vector(7 downto 0);
    -- Burst size. This signal indicates the size of each transfer in the burst
    S_AXI_ARSIZE	: in std_logic_vector(2 downto 0);
    -- Burst type. The burst type and the size information, 
    -- determine how the address for each transfer within the burst is calculated.
    S_AXI_ARBURST	: in std_logic_vector(1 downto 0);
    -- Lock type. Provides additional information about the
    -- atomic characteristics of the transfer.
    S_AXI_ARLOCK	: in std_logic;
    -- Memory type. This signal indicates how transactions
    -- are required to progress through a system.
    S_AXI_ARCACHE	: in std_logic_vector(3 downto 0);
    -- Protection type. This signal indicates the privilege
    -- and security level of the transaction, and whether
    -- the transaction is a data access or an instruction access.
    S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
    -- Quality of Service, QoS identifier sent for each
    -- read transaction.
    S_AXI_ARQOS	: in std_logic_vector(3 downto 0);
    -- Region identifier. Permits a single physical interface
    -- on a slave to be used for multiple logical interfaces.
    S_AXI_ARREGION	: in std_logic_vector(3 downto 0);
    -- Optional User-defined signal in the read address channel.
    S_AXI_ARUSER	: in std_logic_vector(C_S_AXI_ARUSER_WIDTH-1 downto 0);
    -- Write address valid. This signal indicates that
    -- the channel is signaling valid read address and
    -- control information.
    S_AXI_ARVALID	: in std_logic;
    -- Read address ready. This signal indicates that
    -- the slave is ready to accept an address and associated
    -- control signals.
    S_AXI_ARREADY	: out std_logic;
    -- Read ID tag. This signal is the identification tag
    -- for the read data group of signals generated by the slave.
    S_AXI_RID	: out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
    -- Read Data
    S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    -- Read response. This signal indicates the status of
    -- the read transfer.
    S_AXI_RRESP	: out std_logic_vector(1 downto 0);
    -- Read last. This signal indicates the last transfer
    -- in a read burst.
    S_AXI_RLAST	: out std_logic;
    -- Optional User-defined signal in the read address channel.
    S_AXI_RUSER	: out std_logic_vector(C_S_AXI_RUSER_WIDTH-1 downto 0);
    -- Read valid. This signal indicates that the channel
    -- is signaling the required read data.
    S_AXI_RVALID	: out std_logic;
    -- Read ready. This signal indicates that the master can
    -- accept the read data and response information.
    S_AXI_RREADY	: in std_logic
	);
end axi_Z7_ProcHDMI_L8_S00_AXI;

architecture arch_imp of axi_Z7_ProcHDMI_L8_S00_AXI is

  -- AXI4FULL signals
  signal axi_awaddr	: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
  signal axi_awready	: std_logic;
  signal axi_wready	: std_logic;
  signal axi_bresp	: std_logic_vector(1 downto 0);
  signal axi_buser	: std_logic_vector(C_S_AXI_BUSER_WIDTH-1 downto 0);
  signal axi_bvalid	: std_logic;
  signal axi_araddr	: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
  signal axi_arready	: std_logic;
  signal axi_rdata	: std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
  signal axi_rresp	: std_logic_vector(1 downto 0);
  signal axi_rlast	: std_logic;
  signal axi_ruser	: std_logic_vector(C_S_AXI_RUSER_WIDTH-1 downto 0);
  signal axi_rvalid	: std_logic;
  -- aw_wrap_en determines wrap boundary and enables wrapping
  signal  aw_wrap_en : std_logic; 
  -- ar_wrap_en determines wrap boundary and enables wrapping
  signal  ar_wrap_en : std_logic;
  -- aw_wrap_size is the size of the write transfer, the
  -- write address wraps to a lower address if upper address
  -- limit is reached
  signal aw_wrap_size : integer;
  -- ar_wrap_size is the size of the read transfer, the
  -- read address wraps to a lower address if upper address
  -- limit is reached
  signal ar_wrap_size : integer;
  -- The axi_awv_awr_flag flag marks the presence of write address valid
  signal axi_awv_awr_flag    : std_logic;
  --The axi_arv_arr_flag flag marks the presence of read address valid
  signal axi_arv_arr_flag    : std_logic;
  -- The axi_awlen_cntr internal write address counter to keep track of beats in a burst transaction
  signal axi_awlen_cntr      : std_logic_vector(7 downto 0);
  --The axi_arlen_cntr internal read address counter to keep track of beats in a burst transaction
  signal axi_arlen_cntr      : std_logic_vector(7 downto 0);
  signal axi_arburst      : std_logic_vector(2-1 downto 0);
  signal axi_awburst      : std_logic_vector(2-1 downto 0);
  signal axi_arlen      : std_logic_vector(8-1 downto 0);
  signal axi_awlen      : std_logic_vector(8-1 downto 0);
  --local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
  --ADDR_LSB is used for addressing 32/64 bit registers/memories
  --ADDR_LSB = 2 for 32 bits (n downto 2) 
  --ADDR_LSB = 3 for 42 bits (n downto 3)

-- --------------------------------------------
-- --------------------------------------------
-- --------------------------------------------
  
  constant ADDR_LSB  : integer := (C_S_AXI_DATA_WIDTH/32)+ 1;

  constant OPT_MEM_ADDR_BITS : integer := 20;
  
  constant USER_NUM_MEM: integer := 1;
  constant low : std_logic_vector (C_S_AXI_ADDR_WIDTH - 1 downto 0) := (others=>'0');
  ------------------------------------------------
  ---- Signals for user logic memory space example
  --------------------------------------------------
  signal mem_address : std_logic_vector(OPT_MEM_ADDR_BITS-1 downto 0);
  signal mem_select : std_logic_vector(USER_NUM_MEM-1 downto 0);
  type word_array is array (0 to USER_NUM_MEM-1) of std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
  signal axi_data_out : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);

  signal mem_rden, mem_wren : std_logic;

begin
  -- I/O Connections assignments

  S_AXI_AWREADY	<= axi_awready;
  S_AXI_WREADY	<= axi_wready;
  S_AXI_BRESP	<= axi_bresp;
  S_AXI_BUSER	<= axi_buser;
  S_AXI_BVALID	<= axi_bvalid;
  S_AXI_ARREADY	<= axi_arready;
  S_AXI_RDATA	<= axi_rdata;
  S_AXI_RRESP	<= axi_rresp;
  S_AXI_RLAST	<= axi_rlast;
  S_AXI_RUSER	<= axi_ruser;
  S_AXI_RVALID	<= axi_rvalid;
  S_AXI_BID <= S_AXI_AWID;
  S_AXI_RID <= S_AXI_ARID;
  aw_wrap_size <= ((C_S_AXI_DATA_WIDTH)/8 * to_integer(unsigned(axi_awlen))); 
  ar_wrap_size <= ((C_S_AXI_DATA_WIDTH)/8 * to_integer(unsigned(axi_arlen))); 
  aw_wrap_en <= '1' when (((axi_awaddr AND std_logic_vector(to_unsigned(aw_wrap_size,C_S_AXI_ADDR_WIDTH))) XOR std_logic_vector(to_unsigned(aw_wrap_size,C_S_AXI_ADDR_WIDTH))) = low) else '0';
  ar_wrap_en <= '1' when (((axi_araddr AND std_logic_vector(to_unsigned(ar_wrap_size,C_S_AXI_ADDR_WIDTH))) XOR std_logic_vector(to_unsigned(ar_wrap_size,C_S_AXI_ADDR_WIDTH))) = low) else '0';

  -- Implement axi_awready generation

  -- axi_awready is asserted for one S_AXI_ACLK clock cycle when both
  -- S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
  -- de-asserted when reset is low.

  process (S_AXI_ACLK)
  begin
    if rising_edge(S_AXI_ACLK) then 
      if S_AXI_ARESETN = '0' then
        axi_awready <= '0';
        axi_awv_awr_flag <= '0';
      else
        if (axi_awready = '0' and S_AXI_AWVALID = '1' and axi_awv_awr_flag = '0' and axi_arv_arr_flag = '0') then
          -- slave is ready to accept an address and
          -- associated control signals
          axi_awv_awr_flag  <= '1'; -- used for generation of bresp() and bvalid
          axi_awready <= '1';
        elsif (S_AXI_WLAST = '1' and axi_wready = '1') then 
	      -- preparing to accept next address after current write burst tx completion
          axi_awv_awr_flag  <= '0';
        else
          axi_awready <= '0';
        end if;
      end if;
    end if;         
  end process; 
  -- Implement axi_awaddr latching

  -- This process is used to latch the address when both 
  -- S_AXI_AWVALID and S_AXI_WVALID are valid. 

  process (S_AXI_ACLK)
  begin
    if rising_edge(S_AXI_ACLK) then 
      if S_AXI_ARESETN = '0' then
        axi_awaddr <= (others => '0');
        axi_awburst <= (others => '0'); 
        axi_awlen <= (others => '0'); 
        axi_awlen_cntr <= (others => '0');
      else
        if (axi_awready = '0' and S_AXI_AWVALID = '1' and axi_awv_awr_flag = '0') then
	      -- address latching 
          axi_awaddr <= S_AXI_AWADDR(C_S_AXI_ADDR_WIDTH - 1 downto 0);  ---- start address of transfer
          axi_awlen_cntr <= (others => '0');
          axi_awburst <= S_AXI_AWBURST;
          axi_awlen <= S_AXI_AWLEN;
        elsif((axi_awlen_cntr <= axi_awlen) and axi_wready = '1' and S_AXI_WVALID = '1') then     
          axi_awlen_cntr <= std_logic_vector (unsigned(axi_awlen_cntr) + 1);

          case (axi_awburst) is
            when "00" => -- fixed burst
              -- The write address for all the beats in the transaction are fixed
              axi_awaddr     <= axi_awaddr;       ----for awsize = 4 bytes (010)
            when "01" => --incremental burst
              -- The write address for all the beats in the transaction are increments by awsize
              axi_awaddr(C_S_AXI_ADDR_WIDTH - 1 downto ADDR_LSB) <= std_logic_vector (unsigned(axi_awaddr(C_S_AXI_ADDR_WIDTH - 1 downto ADDR_LSB)) + 1);--awaddr aligned to 4 byte boundary
              axi_awaddr(ADDR_LSB-1 downto 0)  <= (others => '0');  ----for awsize = 4 bytes (010)
            when "10" => --Wrapping burst
              -- The write address wraps when the address reaches wrap boundary 
              if (aw_wrap_en = '1') then
                axi_awaddr <= std_logic_vector (unsigned(axi_awaddr) - (to_unsigned(aw_wrap_size,C_S_AXI_ADDR_WIDTH)));                
              else 
                axi_awaddr(C_S_AXI_ADDR_WIDTH - 1 downto ADDR_LSB) <= std_logic_vector (unsigned(axi_awaddr(C_S_AXI_ADDR_WIDTH - 1 downto ADDR_LSB)) + 1);--awaddr aligned to 4 byte boundary
                axi_awaddr(ADDR_LSB-1 downto 0)  <= (others => '0');  ----for awsize = 4 bytes (010)
              end if;
            when others => --reserved (incremental burst for example)
              axi_awaddr(C_S_AXI_ADDR_WIDTH - 1 downto ADDR_LSB) <= std_logic_vector (unsigned(axi_awaddr(C_S_AXI_ADDR_WIDTH - 1 downto ADDR_LSB)) + 1);--for awsize = 4 bytes (010)
              axi_awaddr(ADDR_LSB-1 downto 0)  <= (others => '0');
          end case;        
        end if;
      end if;
    end if;
  end process;
  -- Implement axi_wready generation

  -- axi_wready is asserted for one S_AXI_ACLK clock cycle when both
  -- S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
  -- de-asserted when reset is low. 

  process (S_AXI_ACLK)
  begin
    if rising_edge(S_AXI_ACLK) then 
      if S_AXI_ARESETN = '0' then
        axi_wready <= '0';
      else
        if (axi_wready = '0' and S_AXI_WVALID = '1' and axi_awv_awr_flag = '1') then
          axi_wready <= '1';
        -- elsif (axi_awv_awr_flag = '0') then
        elsif (S_AXI_WLAST = '1' and axi_wready = '1') then 

          axi_wready <= '0';
        end if;
      end if;
    end if;         
  end process; 
  -- Implement write response logic generation

  -- The write response and response valid signals are asserted by the slave 
  -- when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
  -- This marks the acceptance of address and indicates the status of 
  -- write transaction.

  process (S_AXI_ACLK)
  begin
    if rising_edge(S_AXI_ACLK) then 
      if S_AXI_ARESETN = '0' then
        axi_bvalid  <= '0';
        axi_bresp  <= "00"; --need to work more on the responses
        axi_buser <= (others => '0');
      else
        if (axi_awv_awr_flag = '1' and axi_wready = '1' and S_AXI_WVALID = '1' and axi_bvalid = '0' and S_AXI_WLAST = '1' ) then
          axi_bvalid <= '1';
          axi_bresp  <= "00"; 
        elsif (S_AXI_BREADY = '1' and axi_bvalid = '1') then  
	      --check if bready is asserted while bvalid is high)
          axi_bvalid <= '0';                      
        end if;
      end if;
    end if;         
  end process; 
  -- Implement axi_arready generation

  -- axi_arready is asserted for one S_AXI_ACLK clock cycle when
  -- S_AXI_ARVALID is asserted. axi_awready is 
  -- de-asserted when reset (active low) is asserted. 
  -- The read address is also latched when S_AXI_ARVALID is 
  -- asserted. axi_araddr is reset to zero on reset assertion.

  process (S_AXI_ACLK)
  begin
    if rising_edge(S_AXI_ACLK) then 
      if S_AXI_ARESETN = '0' then
        axi_arready <= '0';
        axi_arv_arr_flag <= '0';
      else
        if (axi_arready = '0' and S_AXI_ARVALID = '1' and axi_awv_awr_flag = '0' and axi_arv_arr_flag = '0') then
          axi_arready <= '1';
          axi_arv_arr_flag <= '1';
        elsif (axi_rvalid = '1' and S_AXI_RREADY = '1' and (axi_arlen_cntr = axi_arlen)) then 
	      -- preparing to accept next address after current read completion
          axi_arv_arr_flag <= '0';
        else
          axi_arready <= '0';
        end if;
      end if;
    end if;         
  end process; 
  -- Implement axi_araddr latching

  --This process is used to latch the address when both 
  --S_AXI_ARVALID and S_AXI_RVALID are valid. 
  process (S_AXI_ACLK)
  begin
    if rising_edge(S_AXI_ACLK) then 
      if S_AXI_ARESETN = '0' then
        axi_araddr <= (others => '0');
        axi_arburst <= (others => '0');
        axi_arlen <= (others => '0'); 
        axi_arlen_cntr <= (others => '0');
        axi_rlast <= '0';
        axi_ruser <= (others => '0');
      else
        if (axi_arready = '0' and S_AXI_ARVALID = '1' and axi_arv_arr_flag = '0') then
          -- address latching 
          axi_araddr <= S_AXI_ARADDR(C_S_AXI_ADDR_WIDTH - 1 downto 0); ---- start address of transfer
          axi_arlen_cntr <= (others => '0');
          axi_rlast <= '0';
          axi_arburst <= S_AXI_ARBURST;
          axi_arlen <= S_AXI_ARLEN;
        elsif((axi_arlen_cntr <= axi_arlen) and axi_rvalid = '1' and S_AXI_RREADY = '1') then     
          axi_arlen_cntr <= std_logic_vector (unsigned(axi_arlen_cntr) + 1);
          axi_rlast <= '0';      
          
          case (axi_arburst) is
            when "00" =>  -- fixed burst
              -- The read address for all the beats in the transaction are fixed
              axi_araddr     <= axi_araddr;      ----for arsize = 4 bytes (010)
            when "01" =>  --incremental burst
              -- The read address for all the beats in the transaction are increments by awsize
              axi_araddr(C_S_AXI_ADDR_WIDTH - 1 downto ADDR_LSB) <= std_logic_vector (unsigned(axi_araddr(C_S_AXI_ADDR_WIDTH - 1 downto ADDR_LSB)) + 1); --araddr aligned to 4 byte boundary
              axi_araddr(ADDR_LSB-1 downto 0)  <= (others => '0');  ----for awsize = 4 bytes (010)
            when "10" =>  --Wrapping burst
              -- The read address wraps when the address reaches wrap boundary 
              if (ar_wrap_en = '1') then   
                axi_araddr <= std_logic_vector (unsigned(axi_araddr) - (to_unsigned(ar_wrap_size,C_S_AXI_ADDR_WIDTH)));
              else 
                axi_araddr(C_S_AXI_ADDR_WIDTH - 1 downto ADDR_LSB) <= std_logic_vector (unsigned(axi_araddr(C_S_AXI_ADDR_WIDTH - 1 downto ADDR_LSB)) + 1); --araddr aligned to 4 byte boundary
                axi_araddr(ADDR_LSB-1 downto 0)  <= (others => '0');  ----for awsize = 4 bytes (010)
              end if;
            when others => --reserved (incremental burst for example)
              axi_araddr(C_S_AXI_ADDR_WIDTH - 1 downto ADDR_LSB) <= std_logic_vector (unsigned(axi_araddr(C_S_AXI_ADDR_WIDTH - 1 downto ADDR_LSB)) + 1);--for arsize = 4 bytes (010)
			  axi_araddr(ADDR_LSB-1 downto 0)  <= (others => '0');
          end case;         
        elsif((axi_arlen_cntr = axi_arlen) and axi_rlast = '0' and axi_arv_arr_flag = '1') then  
          axi_rlast <= '1';
        elsif (S_AXI_RREADY = '1') then  
          axi_rlast <= '0';
        end if;
      end if;
    end if;
  end  process;  
  -- Implement axi_arvalid generation

  -- axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
  -- S_AXI_ARVALID and axi_arready are asserted. The slave registers 
  -- data are available on the axi_rdata bus at this instance. The 
  -- assertion of axi_rvalid marks the validity of read data on the 
  -- bus and axi_rresp indicates the status of read transaction.axi_rvalid 
  -- is deasserted on reset (active low). axi_rresp and axi_rdata are 
  -- cleared to zero on reset (active low).  

  process (S_AXI_ACLK)
  begin
    if rising_edge(S_AXI_ACLK) then
      if S_AXI_ARESETN = '0' then
        axi_rvalid <= '0';
        axi_rresp  <= "00";
      else
        if (axi_arv_arr_flag = '1' and axi_rvalid = '0') then
          axi_rvalid <= '1';
          axi_rresp  <= "00"; -- 'OKAY' response
        elsif (axi_rvalid = '1' and S_AXI_RREADY = '1') then
          axi_rvalid <= '0';
        end  if;      
      end if;
    end if;
  end  process;
  -- ------------------------------------------
  -- -- Example code to access user logic memory region
  -- ------------------------------------------

  
  
  mem_select  <= "1";
  mem_address <= axi_araddr(ADDR_LSB+OPT_MEM_ADDR_BITS-1 downto ADDR_LSB) when axi_arv_arr_flag = '1' else
                 axi_awaddr(ADDR_LSB+OPT_MEM_ADDR_BITS-1 downto ADDR_LSB) when axi_awv_awr_flag = '1' else
                 (others => '0');
  
  mem_wren <= axi_wready and S_AXI_WVALID ;
  mem_rden <= axi_arv_arr_flag ;

  
  --Output register or memory read data
  
  
  process(axi_data_out, axi_rvalid ) is
  begin
    if (axi_rvalid = '1') then
      -- When there is a valid read address (S_AXI_ARVALID) with 
      -- acceptance of read address by the slave (axi_arready), 
      -- output the read dada 
      axi_rdata <= axi_data_out;  -- memory range 0 read data
    else
      axi_rdata <= (others => '0');
    end if;  
  end process;

  -- Add user logic here
  capture : block
    constant l_mem_bus_data_n : integer := 32;
    constant l_mem_bus_addr_n : integer := 18;

    -- CNN Input memory: 1728 addresses x 10 bits
    constant cnn_input_data_n  : integer := 10;
    constant cnn_input_addr_n  : integer := 11;  -- 2^11 = 2048 > 1728
    
    -- CNN Output memory: 10 addresses x 10 bits (for 10 class probabilities)
    constant cnn_output_data_n  : integer := 10;
    constant cnn_output_addr_n  : integer := 4;   -- 2^4 = 16 > 10
    
    constant cs_n_regs       : integer := 0;
    constant cs_n_cnn_input  : integer := 1;
    constant cs_n_cnn_output : integer := 2;

    signal regs_data_in   : std_logic_vector(l_mem_bus_data_n-1 downto 0);
    signal regs_data_out   : std_logic_vector(l_mem_bus_data_n-1 downto 0);

    signal read_write_cs, read_write_cs_q : std_logic_vector(3 downto 0);

    constant N_CLASSES : integer := 10;
    
    -- HDMI_RAM_syn component removed per user request
    
    component cnn_hardware_opt is
      port(
        clk                   : in  std_logic;
        rst                   : in  std_logic;
        -- Input memory interface (read from dual-port RAM)
        image_in_rsc_radr     : out std_logic_vector(10 downto 0);  -- Read address
        image_in_rsc_re       : out std_logic;                       -- Read enable
        image_in_rsc_q        : in  std_logic_vector(9 downto 0);   -- Read data
        image_in_triosy_lz    : out std_logic;                       -- Input handshake
        -- Output memory interface (write to dual-port RAM)
        prob_out_rsc_wadr     : out std_logic_vector(3 downto 0);   -- Write address
        prob_out_rsc_d        : out std_logic_vector(9 downto 0);   -- Write data
        prob_out_rsc_we       : out std_logic;                       -- Write enable
        prob_out_triosy_lz    : out std_logic;                       -- Output handshake
        -- Control and status (handshake protocol)
        start_sync_vld        : in  std_logic;                       -- Start valid (start signal)
        start_sync_rdy        : out std_logic;                       -- Start ready (acknowledgment)
        done_sync_vld         : out std_logic                        -- Done valid (done signal)
      );
    end component cnn_hardware_opt;
    
    COMPONENT mem2p_10_10
      PORT (
        clka : IN STD_LOGIC;
        ena : IN STD_LOGIC;
        wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        addra : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        dina : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
        douta : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
        clkb : IN STD_LOGIC;
        enb : IN STD_LOGIC;
        web : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        addrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        dinb : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
        doutb : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
        );
    END component mem2p_10_10;

    COMPONENT mem2p_1728_10
      PORT (
        clka : IN STD_LOGIC;
        ena : IN STD_LOGIC;
        wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
        dina : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
        douta : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
        clkb : IN STD_LOGIC;
        enb : IN STD_LOGIC;
        web : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        addrb : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
        dinb : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
        doutb : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
        );
    END component mem2p_1728_10;
    -- Interface to CNN input memory
    -- from AXI bus
    signal cnn_input_bus_wadr     : STD_LOGIC_VECTOR (cnn_input_addr_n-1 DOWNTO 0);
    signal cnn_input_bus_data     : STD_LOGIC_VECTOR (cnn_input_data_n-1 DOWNTO 0);
    signal cnn_input_bus_en       : STD_LOGIC;
    signal cnn_input_bus_wr       : STD_LOGIC_VECTOR (0 DOWNTO 0);
    signal cnn_input_bus_data_out : STD_LOGIC_VECTOR (cnn_input_data_n-1 DOWNTO 0);
    -- from CNN IP (read interface)
    signal cnn_image_in_rsc_radr   : STD_LOGIC_VECTOR (cnn_input_addr_n-1 DOWNTO 0);
    signal cnn_image_in_rsc_q      : STD_LOGIC_VECTOR (cnn_input_data_n-1 DOWNTO 0);
    signal cnn_image_in_rsc_re     : STD_LOGIC;
    signal cnn_image_in_triosy_lz  : STD_LOGIC;
    -- Interface to CNN output memory (10 class probabilities)
    -- from AXI bus (read-only for software)
    signal cnn_output_bus_wadr     : STD_LOGIC_VECTOR (cnn_output_addr_n-1 DOWNTO 0);
    signal cnn_output_bus_data     : STD_LOGIC_VECTOR (cnn_output_data_n-1 DOWNTO 0);
    signal cnn_output_bus_en       : STD_LOGIC;
    signal cnn_output_bus_wr       : STD_LOGIC_VECTOR (0 DOWNTO 0);
    signal cnn_output_bus_data_out : STD_LOGIC_VECTOR (cnn_output_data_n-1 DOWNTO 0);
    -- from CNN IP (write interface)
    signal cnn_prob_out_rsc_wadr   : STD_LOGIC_VECTOR (cnn_output_addr_n-1 DOWNTO 0);
    signal cnn_prob_out_rsc_d      : STD_LOGIC_VECTOR (cnn_output_data_n-1 DOWNTO 0);
    signal cnn_prob_out_rsc_we     : STD_LOGIC;
    signal cnn_prob_out_triosy_lz  : STD_LOGIC;
    
    
    -- CNN control and status registers
    signal cnn_start              : STD_LOGIC;  -- Start CNN processing
    signal cnn_ctrl               : STD_LOGIC_VECTOR (7 DOWNTO 0);  -- Control register
    -- Handshake signals from CNN hardware
    signal cnn_start_rdy          : STD_LOGIC;  -- Start ready acknowledgment
    signal cnn_done_vld           : STD_LOGIC;  -- Done valid signal
    
    -- LED[3] clock pulse indicator (synchronized from clk_proc domain)
    signal led3_blink             : STD_LOGIC := '0';  -- Blink signal in clk_proc domain
    signal led3_blink_sync        : STD_LOGIC := '0';  -- Synchronized to clk_sys domain
    
    signal proc_rst : std_logic;

    signal rst : std_logic;
    signal clk_sys : std_logic;
    signal clk_proc : std_logic;
    
    -- CDC synchronization for DONE signal (triosy_lz pulse from clk_proc to clk_sys)
    -- The triosy_lz signal is a 1-cycle pulse in clk_proc domain, so we need to:
    -- 1. Latch it in clk_proc domain (hold until acknowledged)
    -- 2. Synchronize it to clk_sys domain via 2-stage synchronizer
    -- 3. Provide a clear mechanism from software
    signal done_latch_proc        : STD_LOGIC := '0';  -- Latched done in clk_proc domain
    signal done_sync_stage1       : STD_LOGIC := '0';  -- CDC stage 1
    signal done_sync_stage2       : STD_LOGIC := '0';  -- CDC stage 2 (safe to use in clk_sys)
    signal done_clear_req         : STD_LOGIC := '0';  -- Clear request from clk_sys
    signal done_clear_sync1       : STD_LOGIC := '0';  -- CDC for clear (to clk_proc)
    signal done_clear_sync2       : STD_LOGIC := '0';  -- CDC for clear (to clk_proc)
    
    -- CDC synchronization for start_rdy signal (from clk_proc to clk_sys for LED display)
    signal start_rdy_sync1        : STD_LOGIC := '0';  -- CDC stage 1
    signal start_rdy_sync2        : STD_LOGIC := '0';  -- CDC stage 2 (safe to use for LEDs)
    
    -- LED register (directly accessible, no variable needed)
    signal led_reg_sig            : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');

  begin
    rst <= not S_AXI_ARESETN;
    clk_sys <= S_AXI_ACLK;
    clk_proc <= clk_display; -- CNN processing clock
    
    -- Note: Display logic removed for CNN-only design
    -- HDMI outputs tied off (HDMI_RAM_syn removed per user request)
    hdmi_TMDS_Clk_p <= '0';
    hdmi_TMDS_Clk_n <= '0';
    hdmi_TMDS_Data_p <= (others => '0');
    hdmi_TMDS_Data_n <= (others => '0');
    
    cnn_proc: cnn_hardware_opt
      port map (
        clk                   => clk_proc,
        rst                   => proc_rst,
        -- Input memory interface
        image_in_rsc_radr     => cnn_image_in_rsc_radr,
        image_in_rsc_re       => cnn_image_in_rsc_re,
        image_in_rsc_q        => cnn_image_in_rsc_q,
        image_in_triosy_lz    => cnn_image_in_triosy_lz,
        -- Output memory interface
        prob_out_rsc_wadr     => cnn_prob_out_rsc_wadr,
        prob_out_rsc_d        => cnn_prob_out_rsc_d,
        prob_out_rsc_we       => cnn_prob_out_rsc_we,
        prob_out_triosy_lz    => cnn_prob_out_triosy_lz,
        -- Control and status (handshake protocol)
        start_sync_vld        => cnn_start,
        start_sync_rdy        => cnn_start_rdy,
        done_sync_vld         => cnn_done_vld
      );
    cnn_input_mem :  mem2p_1728_10
      PORT map (
        clka  =>  clk_sys,
        ena   =>  cnn_input_bus_en,
        wea   =>  cnn_input_bus_wr,
        addra =>  cnn_input_bus_wadr,
        dina  =>  cnn_input_bus_data,
        douta =>  cnn_input_bus_data_out,
        clkb  =>  clk_proc,
        enb   =>  cnn_image_in_rsc_re,
        web   =>  "0",
        addrb =>  cnn_image_in_rsc_radr,
        dinb  =>  (others => '0'),
        doutb =>  cnn_image_in_rsc_q
      );
    
    -- Output memory: CNN writes via prob_out_rsc_* interface, CPU reads via bus interface
    cnn_output_mem :  mem2p_10_10
      PORT map (
        clka  =>  clk_sys,
        ena   =>  cnn_output_bus_en,
        wea   =>  cnn_output_bus_wr,
        addra =>  cnn_output_bus_wadr,
        dina  =>  cnn_output_bus_data,
        douta =>  cnn_output_bus_data_out,
        clkb  =>  clk_proc,
        enb   =>  cnn_prob_out_rsc_we,      -- CNN hardware controls enable
        web(0)=>  cnn_prob_out_rsc_we,      -- CNN hardware controls write enable
        addrb =>  cnn_prob_out_rsc_wadr,    -- CNN hardware provides address
        dinb  =>  cnn_prob_out_rsc_d,       -- CNN hardware provides data
        doutb =>  open
      );
    
    -- CDC synchronization for DONE signal
    -- Step 1: Latch the triosy pulse in clk_proc domain, hold until cleared
    done_latch_proc_process : process(clk_proc)
    begin
      if rising_edge(clk_proc) then
        if proc_rst = '1' or done_clear_sync2 = '1' or sw(0) = '1' then
          done_latch_proc <= '0';  -- Clear on reset, software clear, or SW(0) reset
        elsif cnn_done_vld = '1' then
          done_latch_proc <= '1';  -- Capture the done signal and hold it
        end if;
      end if;
    end process done_latch_proc_process;
    
    -- Step 2: Synchronize clear request from clk_sys to clk_proc
    done_clear_cdc : process(clk_proc)
    begin
      if rising_edge(clk_proc) then
        done_clear_sync1 <= done_clear_req;
        done_clear_sync2 <= done_clear_sync1;
      end if;
    end process done_clear_cdc;
    
    -- Step 3: Synchronize latched done from clk_proc to clk_sys (2-stage synchronizer)
    done_sync_cdc : process(clk_sys)
    begin
      if rising_edge(clk_sys) then
        if S_AXI_ARESETN = '0' then
          done_sync_stage1 <= '0';
          done_sync_stage2 <= '0';
        else
          done_sync_stage1 <= done_latch_proc;
          done_sync_stage2 <= done_sync_stage1;
        end if;
      end if;
    end process done_sync_cdc;
    
    -- CDC synchronization for start_rdy (for LED[3] in normal mode)
    start_rdy_sync_cdc : process(clk_sys)
    begin
      if rising_edge(clk_sys) then
        if S_AXI_ARESETN = '0' then
          start_rdy_sync1 <= '0';
          start_rdy_sync2 <= '0';
        else
          start_rdy_sync1 <= cnn_start_rdy;
          start_rdy_sync2 <= start_rdy_sync1;
        end if;
      end if;
    end process start_rdy_sync_cdc;
    
    -- SW(0) provides hardware reset: combine with software reset
    proc_rst <= rst or sw(0);
    
-- Address decoder for CNN memories and registers
-- mem_address : address in 32bit words 
    --  00 => registers (control, status)
    --  01 => cnn_input memory (1728 x 10-bit)
    --  02 => cnn_output memory (10 x 10-bit, read-only for CPU)
    decod_local : process(S_AXI_WSTRB, mem_address, mem_wren, mem_rden)
      variable addr_msb : std_logic_vector(1 downto 0);
      variable cs : std_logic_vector(3 downto 0); 
    begin
      
      addr_msb :=  mem_address(l_mem_bus_addr_n+1 downto l_mem_bus_addr_n);
      cs := (others=>'0');
      cs(to_integer(unsigned(addr_msb))) := mem_wren or mem_rden;
      read_write_cs <= cs;
    end process decod_local;
    
    cnn_input_bus_wadr  <=  mem_address(cnn_input_addr_n-1 downto 0);
    cnn_input_bus_data  <= S_AXI_WDATA(cnn_input_data_n-1 downto 0);
    cnn_input_bus_en  <= (mem_rden or mem_wren) and read_write_cs(cs_n_cnn_input);
    cnn_input_bus_wr(0)  <= mem_wren and read_write_cs(cs_n_cnn_input);

    cnn_output_bus_wadr  <=  mem_address(cnn_output_addr_n-1 downto 0);
    cnn_output_bus_data  <= S_AXI_WDATA(cnn_output_data_n-1 downto 0);
    cnn_output_bus_en  <= mem_rden and read_write_cs(cs_n_cnn_output);  -- Read-only
    cnn_output_bus_wr(0)  <= '0';  -- CPU cannot write to output memory

    

    read_pipe : process (clk_sys)
      variable read_ack : boolean:= false;
    begin  
      if rising_edge(clk_sys) then
        if S_AXI_ARESETN= '0' then
          read_write_cs_q <= (others=>'0');
        else
          read_write_cs_q <= read_write_cs;
        end if;
      end if;
    end process read_pipe;
    
    read_switch : process(read_write_cs_q, cnn_input_bus_data_out, cnn_output_bus_data_out, regs_data_out)
    begin
      axi_data_out <= (others=>'0');
      
      if read_write_cs_q(cs_n_cnn_input)='1' then
        axi_data_out(cnn_input_data_n-1 downto 0) <= cnn_input_bus_data_out;
      end if;
      
      if read_write_cs_q(cs_n_cnn_output)='1' then
        axi_data_out(cnn_output_data_n-1 downto 0) <= cnn_output_bus_data_out;
      end if;
      
      if read_write_cs_q(cs_n_regs)='1' then
        axi_data_out <= regs_data_out;
      end if;
    end process read_switch;
    
    registres : process(clk_sys)
      variable regs_addr : std_logic_vector(2 downto 0);
      variable regs_cs : std_logic_vector(7 downto 0);
    -- Memory mapping of registers
    -- 0 => W : reset (proc_rst) - Note: proc_rst is now also controlled by SW(0)
    -- 1 => W : control (cnn_start, cnn_ctrl)
    -- 2 => R : status (cnn_done)
    -- 3 => W : LED (used when SW(1)=1)
    begin
      if rising_edge(clk_sys) then
        if S_AXI_ARESETN= '0' or sw(0) = '1' then
          -- Reset on AXI reset OR SW(0) active
          cnn_start <= '0';
          cnn_ctrl  <= (others=>'0');
          led_reg_sig <= (others=>'0');
          regs_data_out  <= (others=>'0');
        else
          regs_data_out <= (others=>'0');
          -- Do NOT auto-clear cnn_start - hold it until software clears it
          
          if read_write_cs(cs_n_regs)='1' then
            regs_data_out <= (others=>'0'); 
            regs_addr := mem_address(2 downto 0);
            regs_cs := (others=>'0');
            regs_cs(to_integer(unsigned(regs_addr))) := '1';
            
            if regs_cs(0)='1' then
              -- Reset register (write)
              -- Bit 0: (reserved - proc_rst now controlled by SW(0))
              -- Bit 1: done_clear_req - clear the latched DONE flag
              if mem_wren='1' then
                done_clear_req <= S_AXI_WDATA(1);  -- Clear DONE latch when bit 1 is written
              else
                done_clear_req <= '0';  -- Auto-clear the clear request
              end if;
            end if;
            
            if regs_cs(1)='1' then
              -- Control register (read/write) - hold cnn_start value
              if mem_wren='1' then
                cnn_start <= S_AXI_WDATA(0);  -- bit 0: start CNN (held until explicitly cleared)
                cnn_ctrl <= S_AXI_WDATA(7 downto 0);
              end if;
              if mem_rden='1' then
                regs_data_out(0) <= cnn_start;  -- bit 0: readback start signal
                regs_data_out(7 downto 0) <= cnn_ctrl;  -- bits 7:0: readback ctrl
              end if;
            end if;
            
            if regs_cs(2)='1' then
              -- Status register (read)
              if mem_rden='1' then
                regs_data_out(0) <= done_sync_stage2;  -- bit 0: DONE flag (synchronized and latched)
                regs_data_out(1) <= cnn_start_rdy; -- bit 1: start_sync_rdy flag
                regs_data_out(2) <= cnn_done_vld;  -- bit 2: raw done_vld (for debug)
                regs_data_out(3) <= done_latch_proc;  -- bit 3: latched done in proc domain (for debug)
              end if;
            end if;
            
            if regs_cs(3)='1' then
              -- LED register (read/write) - used when SW(1)=1
              if mem_wren='1' then
                led_reg_sig <= S_AXI_WDATA(3 downto 0);
              end if;
              if mem_rden='1' then
                regs_data_out(3 downto 0) <= led_reg_sig;  -- readback LED register value
              end if;
            end if;
          end if;
        end if;
      end if;
    end process registres;
    
    -- Clock pulse indicator on LED[3]: blinks every 1 second at 25 MHz
    -- At 25 MHz: 25,000,000 cycles per second
    -- Toggle every 25M cycles => 0.5Hz blink (1s on, 1s off)
    clk_pulse_indicator : process(clk_proc)
      variable counter : unsigned(24 downto 0);  -- 25-bit counter (supports up to 33M)
    begin
      if rising_edge(clk_proc) then
        counter := counter + 1;
        
        -- Toggle LED[3] every 25,000,000 clock cycles (1 second)
        if counter = 25000000 then
          counter := (others => '0');
          led3_blink <= not led3_blink;
        end if;
      end if;
    end process clk_pulse_indicator;
    
    -- CDC synchronizer: bring led3_blink from clk_proc domain to clk_sys domain
    -- Simple 2-stage synchronizer to safely cross clock domains
    cdc_sync_led3 : process(clk_sys)
      variable sync_stage1 : std_logic := '0';
    begin
      if rising_edge(clk_sys) then
        sync_stage1 := led3_blink;
        led3_blink_sync <= sync_stage1;
      end if;
    end process cdc_sync_led3;
    
    -- LED assignment based on SW(1) mode select:
    -- SW(1) = '0' (Normal mode):
    --   LED(0) = cnn_start (start signal)
    --   LED(1) = done_sync_stage2 (synchronized DONE signal)
    --   LED(2) = led3_blink_sync (1Hz clock pulse indicator)
    --   LED(3) = start_rdy_sync2 (hardware ready - indicates when new inference can start)
    -- SW(1) = '1' (Register mode):
    --   LEDs follow led_reg_sig (software-controlled via AXI register)
    led(0) <= cnn_start         when sw(1) = '0' else led_reg_sig(0);
    led(1) <= done_sync_stage2  when sw(1) = '0' else led_reg_sig(1);
    led(2) <= led3_blink_sync   when sw(1) = '0' else led_reg_sig(2);
    led(3) <= start_rdy_sync2   when sw(1) = '0' else led_reg_sig(3);

  end block capture;
-- User logic ends

end arch_imp;
