library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity axi_Z7_CamProcOverlay_L8_S00_AXI is
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
    clk_camera  : in std_logic;  -- 180
    clk_hdmi    : in std_logic;  -- 25*10

    
    hdmi_TMDS_Clk_p : out std_logic;
    hdmi_TMDS_Clk_n : out std_logic;
    hdmi_TMDS_Data_p : out std_logic_vector(2 downto 0);
    hdmi_TMDS_Data_n : out std_logic_vector(2 downto 0);
    
    D_PHY_CLK_N : in std_logic;
    D_PHY_CLK_P : in std_logic;
    D_PHY_DATA_N:  in std_logic_vector(0 to 1);
    D_PHY_DATA_P:  in std_logic_vector(0 to 1);
    
    D_PHY_LP_CLK_N : in std_logic;
    D_PHY_LP_CLK_P : in std_logic;
    D_PHY_LP_DATA_N:  in std_logic_vector(0 to 1);
    D_PHY_LP_DATA_P:  in std_logic_vector(0 to 1);
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
end axi_Z7_CamProcOverlay_L8_S00_AXI;

architecture arch_imp of axi_Z7_CamProcOverlay_L8_S00_AXI is

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
    constant l_mem_bus_addr_n : integer := 16;
    constant l_overlay_mem_bus_addr_n : integer := 15;

    constant vlign_data_n : integer := 8;
    constant vlign_addr_n : integer := 8;

    constant cs_n_regs     : integer := 0;
    constant cs_n_vlign    : integer := 1;
    constant cs_n_overlay  : integer := 2;

    signal regs_data_in   : std_logic_vector(l_mem_bus_data_n-1 downto 0);
    signal regs_data_out   : std_logic_vector(l_mem_bus_data_n-1 downto 0);

    signal read_write_cs, read_write_cs_q : std_logic_vector(3 downto 0);
    
    component MC_HDMI_Overlay_RAM_320x240_L8 is
      port (
        push: in STD_LOGIC_VECTOR ( 3 downto 0 );
        sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
        led : out STD_LOGIC_VECTOR ( 3 downto 0 );
        
        
        clk_display : in std_logic;  -- 25
        clk_camera  : in std_logic;  -- 180
        clk_hdmi    : in std_logic;  -- 25*10
        clk_overlay : in std_logic;  -- user defined

        clk_proc    : in std_logic;  -- 25*10

        hdmi_TMDS_Clk_p  : out std_logic;
        hdmi_TMDS_Clk_n  : out std_logic;
        hdmi_TMDS_Data_p : out std_logic_vector(2 downto 0);
        hdmi_TMDS_Data_n : out std_logic_vector(2 downto 0);
        
        D_PHY_CLK_N     : in std_logic;
        D_PHY_CLK_P     : in std_logic;
        D_PHY_DATA_N    :  in std_logic_vector(0 to 1);
        D_PHY_DATA_P    :  in std_logic_vector(0 to 1);
        
        D_PHY_LP_CLK_N  : in std_logic;
        D_PHY_LP_CLK_P  : in std_logic;
        D_PHY_LP_DATA_N :  in std_logic_vector(0 to 1);
        D_PHY_LP_DATA_P :  in std_logic_vector(0 to 1);
                                        -- memory interface
        \camera_mem_ctl[we]\ : in STD_LOGIC;
        \camera_mem_ctl[en]\ : in STD_LOGIC;
        \camera_mem_ctl[addr]\ : in STD_LOGIC_VECTOR ( 21 downto 0 );
        camera_mem_data : out STD_LOGIC_VECTOR (7 downto 0 );
        \display_mem_ctl[we]\ : in STD_LOGIC;
        \display_mem_ctl[en]\ : in STD_LOGIC;
        \display_mem_ctl[addr]\ : in STD_LOGIC_VECTOR ( 21 downto 0 );
        display_mem_data : in STD_LOGIC_VECTOR (7 downto 0 );
        \overlay_mem_ctl[we]\ : in STD_LOGIC;
        \overlay_mem_ctl[en]\ : in STD_LOGIC;
        \overlay_mem_ctl[addr]\ : in STD_LOGIC_VECTOR ( 21 downto 0 );
        overlay_mem_data : in STD_LOGIC_VECTOR (3 downto 0 )
        
        );
    end component MC_HDMI_Overlay_RAM_320x240_L8;
    
    component ImgProcParamTest IS
      PORT(
        clk : IN STD_LOGIC;
        rst : IN STD_LOGIC;
        img_in_triosy_lz : OUT STD_LOGIC;
        img_in_rsc_radr : OUT STD_LOGIC_VECTOR (16 DOWNTO 0);
        img_in_rsc_re : OUT STD_LOGIC;
        img_in_rsc_q : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        
        img_out_triosy_lz : OUT STD_LOGIC;
        img_out_rsc_wadr : OUT STD_LOGIC_VECTOR (16 DOWNTO 0);
        img_out_rsc_d : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
        img_out_rsc_we : OUT STD_LOGIC;
        
        vlign_in_triosy_lz : OUT STD_LOGIC;
        vlign_in_rsc_radr : OUT STD_LOGIC_VECTOR (vlign_addr_n-1 DOWNTO 0);
        vlign_in_rsc_re : OUT STD_LOGIC;
        vlign_in_rsc_q : IN STD_LOGIC_VECTOR (vlign_data_n-1 DOWNTO 0);
        
        avg_rsc_z          : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
        avg_rsc_lz         : OUT STD_LOGIC;
        avg_triosy_lz  : OUT STD_LOGIC;
        
        --ctrl_rsc_z : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        --ctrl_triosy_lz : OUT STD_LOGIC
        ctrl: IN STD_LOGIC_VECTOR (7 DOWNTO 0)

        );
    END component ImgProcParamTest;
    
    COMPONENT mem2p_240_8
      PORT (
        clka : IN STD_LOGIC;
        ena : IN STD_LOGIC;
        wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        addra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        clkb : IN STD_LOGIC;
        enb : IN STD_LOGIC;
        web : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        addrb : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        dinb : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        doutb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    END component mem2p_240_8;
    -- parametrage de vlign par les constante vlign_data_n et vlign_addr_n
    -- (ligne 537)
    signal vlign_bus_wadr      : STD_LOGIC_VECTOR (vlign_addr_n-1 DOWNTO 0);
    signal vlign_bus_data : STD_LOGIC_VECTOR (vlign_data_n-1 DOWNTO 0);
    signal vlign_bus_en        : STD_LOGIC;
    signal vlign_bus_wr        : STD_LOGIC_VECTOR (0 DOWNTO 0);
    signal vlign_bus_data_out : STD_LOGIC_VECTOR (vlign_data_n-1 DOWNTO 0);
    
    signal overlay_bus_en, overlay_bus_wr        : std_logic;
    signal overlay_bus_strb          : std_logic_vector(4-1 downto 0);
    signal overlay_bus_addr      : std_logic_vector(l_overlay_mem_bus_addr_n-1 downto 0);
    signal overlay_bus_data_in   : std_logic_vector(l_mem_bus_data_n-1 downto 0);
    signal overlay_bus_data_out   : std_logic_vector(l_mem_bus_data_n-1 downto 0);
    
    
    signal \camera_mem_ctl[we]\    : STD_LOGIC;
    signal \camera_mem_ctl[en]\    : STD_LOGIC;
    signal \camera_mem_ctl[addr]\  : STD_LOGIC_VECTOR ( 21 downto 0 );
    signal camera_mem_data         : STD_LOGIC_VECTOR (7 downto 0 );
    signal \display_mem_ctl[we]\   : STD_LOGIC;
    signal \display_mem_ctl[en]\   : STD_LOGIC;
    signal \display_mem_ctl[addr]\ : STD_LOGIC_VECTOR ( 21 downto 0 );
    signal display_mem_data        : STD_LOGIC_VECTOR (7 downto 0 );
    signal \overlay_mem_ctl[we]\   : STD_LOGIC;
    signal \overlay_mem_ctl[en]\   : STD_LOGIC;
    signal \overlay_mem_ctl[addr]\ : STD_LOGIC_VECTOR ( 21 downto 0 );
    signal overlay_mem_data        : STD_LOGIC_VECTOR (3 downto 0 );
    
    signal vlign_in_rsc_radr      : STD_LOGIC_VECTOR (vlign_addr_n-1 DOWNTO 0);
    signal vlign_in_rsc_q         : STD_LOGIC_VECTOR (vlign_data_n-1 DOWNTO 0);
    signal vlign_in_rsc_re        : STD_LOGIC;
    signal vlign_in_triosy_lz : STD_LOGIC;
    
    signal avg_rsc_z              : STD_LOGIC_VECTOR (7 DOWNTO 0);
    signal avg_rsc_lz             : STD_LOGIC;
    signal avg_triosy_lz      : STD_LOGIC;
    signal ctrl                   : STD_LOGIC_VECTOR (7 DOWNTO 0);
    
    signal proc_rst : std_logic;

    signal rst : std_logic;
    signal clk_sys : std_logic;
    signal clk_proc : std_logic;
    signal clk_overlay : std_logic;

  begin
    rst <= not S_AXI_ARESETN;
    CLK_sys      <= S_AXI_ACLK;

    clk_proc <= clk_display; -- clk_proc peut etre independant des autres horloges
    
    capture_overlay : MC_HDMI_Overlay_RAM_320x240_L8
      Port map(
        push                 => btn,
        sw                  => sw ,
        led                 => open ,

        
        clk_display         => clk_display ,
        clk_camera          => clk_camera  ,
        clk_hdmi            => clk_hdmi    ,
        clk_proc            => clk_proc    ,
        clk_overlay         => clk_overlay    ,

        hdmi_TMDS_Clk_p     => hdmi_TMDS_Clk_p  ,
        hdmi_TMDS_Clk_n     => hdmi_TMDS_Clk_n  ,
        hdmi_TMDS_Data_p    => hdmi_TMDS_Data_p ,
        hdmi_TMDS_Data_n    => hdmi_TMDS_Data_n ,

        D_PHY_CLK_N         => D_PHY_CLK_N     ,
        D_PHY_CLK_P         => D_PHY_CLK_P     ,
        D_PHY_DATA_N        => D_PHY_DATA_N    ,
        D_PHY_DATA_P        => D_PHY_DATA_P    ,

        D_PHY_LP_CLK_N      => D_PHY_LP_CLK_N  ,
        D_PHY_LP_CLK_P      => D_PHY_LP_CLK_P  ,
        D_PHY_LP_DATA_N     => D_PHY_LP_DATA_N ,
        D_PHY_LP_DATA_P     => D_PHY_LP_DATA_P ,
        -- memory interface
        
        \camera_mem_ctl[we]\    => \camera_mem_ctl[we]\    ,
        \camera_mem_ctl[en]\    => \camera_mem_ctl[en]\    ,
        \camera_mem_ctl[addr]\  => \camera_mem_ctl[addr]\  ,
        camera_mem_data         => camera_mem_data         ,
        \display_mem_ctl[we]\   => \display_mem_ctl[we]\   ,
        \display_mem_ctl[en]\   => \display_mem_ctl[en]\   ,
        \display_mem_ctl[addr]\ => \display_mem_ctl[addr]\ ,
        display_mem_data        => display_mem_data        ,
        \overlay_mem_ctl[we]\   => \overlay_mem_ctl[we]\   ,
        \overlay_mem_ctl[en]\   => \overlay_mem_ctl[en]\   ,
        \overlay_mem_ctl[addr]\ => \overlay_mem_ctl[addr]\ ,
        overlay_mem_data        => overlay_mem_data        

        );
    \camera_mem_ctl[we]\ <= '0';
    \camera_mem_ctl[addr]\(21 downto 17) <= (others=>'0');
    \display_mem_ctl[addr]\(21 downto 17) <= (others=>'0');
    \display_mem_ctl[en]\ <= \display_mem_ctl[we]\;
    -- l'overlay est pilote par le logiciel a travers le bus axi
    -- pour ecrire depuis l'unite de calcul, modifier l'origine de ces signaux
    \overlay_mem_ctl[addr]\(21 downto l_overlay_mem_bus_addr_n) <= (others=>'0');
    \overlay_mem_ctl[addr]\(l_overlay_mem_bus_addr_n-1 downto 0) <= overlay_bus_addr(l_overlay_mem_bus_addr_n-1 downto 0);
    \overlay_mem_ctl[we]\ <= overlay_bus_wr;
    \overlay_mem_ctl[en]\ <= \overlay_mem_ctl[we]\;
    overlay_mem_data <= overlay_bus_data_in(3 downto 0);
    clk_overlay <= clk_sys; --- ATTENTION : sur l'horloge du bus !!!!!
    
    proc: ImgProcParamTest
      port map (
        clk => clk_proc,
        rst => proc_rst,
        img_in_triosy_lz => open,
        img_out_triosy_lz => open,
        img_in_rsc_radr => \camera_mem_ctl[addr]\(16 downto 0),
        img_in_rsc_re => \camera_mem_ctl[en]\,
        img_in_rsc_q => camera_mem_data,
        
        img_out_rsc_wadr =>  \display_mem_ctl[addr]\(16 downto 0),
        img_out_rsc_d => display_mem_data,
        img_out_rsc_we => \display_mem_ctl[we]\,
        
        vlign_in_rsc_radr      => vlign_in_rsc_radr      ,
        vlign_in_rsc_q         => vlign_in_rsc_q         ,
        vlign_in_rsc_re        => vlign_in_rsc_re        ,
        vlign_in_triosy_lz => vlign_in_triosy_lz ,
        
        avg_rsc_z              => avg_rsc_z              ,
        avg_rsc_lz             => avg_rsc_lz             ,
        avg_triosy_lz      => avg_triosy_lz      ,
        
        --ctrl_triosy_lz=> open,
        --ctrl_rsc_z                   => ctrl
        ctrl                  => ctrl


        );
    vlign :  mem2p_240_8
      PORT map (
        clka  =>  CLK_sys,
        ena   =>  vlign_bus_en,
        wea   =>  vlign_bus_wr,
        addra =>  vlign_bus_wadr,
        dina  =>  vlign_bus_data,
        douta =>  vlign_bus_data_out ,
        clkb  =>  clk_proc ,
        enb   =>  vlign_in_rsc_re,
        web   =>  "0" ,
        addrb =>  vlign_in_rsc_radr,
        dinb  =>  "00000000" ,
        doutb =>  vlign_in_rsc_q
        );
    
-- decodeur d'adresse principal, selon les bits de poids fort
-- mem_address : adress in 32bit word
-- AXI bus Address  MSB 2bit + l_mem_bus_addr_n + 00
-- 2  + 16 + 2    
    decod_local : process(S_AXI_WSTRB, mem_address, mem_wren, mem_rden)
      variable addr_msb : std_logic_vector(1 downto 0);
      variable cs : std_logic_vector(3 downto 0); 
    begin
      
      addr_msb :=  mem_address(l_mem_bus_addr_n+1 downto l_mem_bus_addr_n);
      cs := (others=>'0');
      cs(to_integer(unsigned(addr_msb))) := mem_wren or mem_rden;
      read_write_cs <= cs;
    end process decod_local;
    
    vlign_bus_wadr  <=  mem_address(vlign_addr_n-1 downto 0);
    vlign_bus_data  <= S_AXI_WDATA(vlign_data_n-1 downto 0);
    vlign_bus_en  <= (mem_rden or mem_wren)  and read_write_cs(cs_n_vlign);
    vlign_bus_wr(0)  <= mem_wren and read_write_cs(cs_n_vlign);

    -- overlay sur 3eme plage d'adresse
    overlay_bus_strb <= S_AXI_WSTRB;
    overlay_bus_wr <= mem_wren and read_write_cs(cs_n_overlay);
    overlay_bus_en <= overlay_bus_wr or mem_rden;
    overlay_bus_addr <= mem_address(l_overlay_mem_bus_addr_n-1 downto 0);
    overlay_bus_data_in <= S_AXI_WDATA;


    read_pipe : process (CLK_sys)
      variable read_ack : boolean:= false;
    begin  
      if rising_edge(CLK_sys) then
        if S_AXI_ARESETN= '0' then
          read_write_cs_q <= (others=>'0');
        else
          read_write_cs_q <= read_write_cs;
        end if;
      end if;
    end process read_pipe;
    
    read_switch : process(read_write_cs_q, vlign_bus_data_out, regs_data_out)
    begin
      axi_data_out <= (others=>'0');
      -- exemple de lecture de memoire
      if read_write_cs_q(cs_n_vlign)='1' then
        axi_data_out(vlign_data_n-1 downto 0) <= vlign_bus_data_out;
      end if;
      --if read_write_cs_q(1)='1' then
      --  axi_data_out <= overlay_bus_data_out;
      --end if;
      if read_write_cs_q(cs_n_regs)='1' then
        axi_data_out <= regs_data_out;
      end if;
    end process read_switch;
    
    registres : process(CLK_sys)
      variable regs_addr : std_logic_vector(2 downto 0);
      variable regs_cs : std_logic_vector(7 downto 0);
    -- Memory mapping of registers
    -- 0 => W :reset
    -- 1 => W : ctrl
    -- 2 => R: avg  
    -- 3 => W :LED
    begin
      if rising_edge(CLK_sys) then
        if S_AXI_ARESETN= '0' then
          proc_rst <='0';
          ctrl  <= (others=>'0');
          led <= (others=>'0');

          regs_data_out  <= (others=>'0');
        else
          regs_data_out <= (others=>'0'); 
          if read_write_cs(cs_n_regs)='1' then
            regs_data_out <= (others=>'0'); 
            regs_addr := mem_address(2 downto 0);  -- a modifier selon nombre de registress
            regs_cs := (others=>'0');
            regs_cs(to_integer(unsigned(regs_addr))) := '1';
            if  regs_cs(0)='1' then
              -- registre en ecriture
              if mem_wren='1' then
                proc_rst <= S_AXI_WDATA(0);
              end if;
            end if;
            
            if regs_cs(1)='1' then
              -- registre en ecriture
              if mem_wren='1' then
                ctrl <= S_AXI_WDATA(7 downto 0);
              end if;
            end if;
            if regs_cs(2)='1' then
              -- registre en lecture     
              if mem_rden='1' then                   
                regs_data_out(7 downto 0) <= avg_rsc_z; 
              end if;
            end if;
            if regs_cs(3)='1' then
              -- registre en ecriture
              if mem_wren='1' then
                led <= S_AXI_WDATA(4-1 downto 0);
              end if;
            end if;
            
          end if;
        end if;
      end if;

    end process registres;
    

  end block capture;
-- User logic ends

end arch_imp;
