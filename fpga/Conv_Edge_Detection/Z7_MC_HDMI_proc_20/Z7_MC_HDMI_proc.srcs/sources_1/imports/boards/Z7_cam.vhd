-- Auteur : Stephane Mancini
-- stephane.mancini@grenoble-inp.fr


-- Affiche l'image provenant de la camera
-- Entree camera CSI type RPi
-- Domaine d'horloge de la camera
-- flux sortant : stream RGB 8bit par composante

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library vfixe ;
use vfixe.vfixe.all;
use vfixe.reduce_pack.all;
use vfixe.reduce_pack_boolean.all;

library divers;
use divers.data_pkg.all;

library RAM;
use RAM.RAM_pkg.all;

library img;
use img.vecteur_pkg.all;
use img.image_pkg.all;
--use img.volume_pkg.all;

library io_video;
use io_video.io_video_pkg.all;
use io_video.MIPICSI_pkg.all;

entity Z7_cam is
  port (

    led : out std_logic_vector(3 downto 0);
    push: in std_logic_vector(3 downto 0);
    sw : in std_logic_vector(3 downto 0);
    
    clk_25 : in std_logic;
    clk_180  : in std_logic;
    clk_hdmi  : in std_logic;

    
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
      D_PHY_LP_DATA_P:  in std_logic_vector(0 to 1)
    
    );
end entity  Z7_cam;

architecture RTL of Z7_cam is
 signal VGA_RED : std_logic_vector(7 downto 0);
  signal    VGA_GREEN :  std_logic_vector(7 downto 0);
  signal    VGA_BLUE :  std_logic_vector(7 downto 0);
  signal    VGA_VS :  std_logic;
   signal   VGA_HS :  std_logic;
   signal         VGA_active : std_logic;
 signal VGA_data : std_logic_vector(23 downto 0);
signal rst_async,rst_async_n :  std_logic;
component MC_display_VGA_640x480  is
    Generic (
      canal_invert : boolean_vector(1 downto 0) := (false, false)
      );
    port (

      led : out std_logic_vector(3 downto 0);
      push: in std_logic_vector(3 downto 0);
      sw : in std_logic_vector(3 downto 0);
      
      clk_25 : in std_logic;
      clk_180  : in std_logic;
      VGA_RED : out std_logic_vector(7 downto 0);
      VGA_GREEN : out std_logic_vector(7 downto 0);
      VGA_BLUE : out std_logic_vector(7 downto 0);
      VGA_VS : out std_logic;
      VGA_HS : out std_logic;
      VGA_active : out std_logic;
  
      D_PHY_CLK_N : in std_logic;
      D_PHY_CLK_P : in std_logic;
      D_PHY_DATA_N:  in std_logic_vector(0 to 1);
      D_PHY_DATA_P:  in std_logic_vector(0 to 1);
      
         D_PHY_LP_CLK_N : in std_logic;
       D_PHY_LP_CLK_P : in std_logic;
       D_PHY_LP_DATA_N:  in std_logic_vector(0 to 1);
       D_PHY_LP_DATA_P:  in std_logic_vector(0 to 1)
      );
      end component MC_display_VGA_640x480;
      
      component MC_display_VGA_320x240 is
          Generic (
            canal_invert : boolean_vector(1 downto 0) := (false, false)
            );
          port (
      
            led : out std_logic_vector(3 downto 0);
            push: in std_logic_vector(3 downto 0);
            sw : in std_logic_vector(3 downto 0);
            
            clk_25 : in std_logic;
            clk_180  : in std_logic;
            VGA_RED : out std_logic_vector(7 downto 0);
            VGA_GREEN : out std_logic_vector(7 downto 0);
            VGA_BLUE : out std_logic_vector(7 downto 0);
            VGA_VS : out std_logic;
            VGA_HS : out std_logic;
            VGA_active : out std_logic;
        
            D_PHY_CLK_N : in std_logic;
            D_PHY_CLK_P : in std_logic;
            D_PHY_DATA_N:  in std_logic_vector(0 to 1);
            D_PHY_DATA_P:  in std_logic_vector(0 to 1);
            
               D_PHY_LP_CLK_N : in std_logic;
             D_PHY_LP_CLK_P : in std_logic;
             D_PHY_LP_DATA_N:  in std_logic_vector(0 to 1);
             D_PHY_LP_DATA_P:  in std_logic_vector(0 to 1)
            );
            end component MC_display_VGA_320x240;
            
            
            
            
            
      component rgb2dvi is
         Generic (
            kGenerateSerialClk : boolean := false;
            kClkPrimitive : string := "PLL"; -- "MMCM" or "PLL" to instantiate, if kGenerateSerialClk true
            kClkRange : natural := 1;  -- MULT_F = kClkRange*5 (choose >=120MHz=1, >=60MHz=2, >=40MHz=3)      
            kRstActiveHigh : boolean := true); --true, if active-high; false, if active-low
         Port (
            -- DVI 1.0 TMDS video interface
            TMDS_Clk_p : out std_logic;
            TMDS_Clk_n : out std_logic;
            TMDS_Data_p : out std_logic_vector(2 downto 0);
            TMDS_Data_n : out std_logic_vector(2 downto 0);
            
            -- Auxiliary signals 
            aRst : in std_logic; --asynchronous reset; must be reset when RefClk is not within spec
            aRst_n : in std_logic; --asynchronous reset; must be reset when RefClk is not within spec
            
            -- Video in
            vid_pData : in std_logic_vector(23 downto 0);
            vid_pVDE : in std_logic;
            vid_pHSync : in std_logic;
            vid_pVSync : in std_logic;
            PixelClk : in std_logic; --pixel-clock recovered from the DVI interface
            
            SerialClk : in std_logic); -- 5x PixelClk
         
      end component rgb2dvi;
  constant canal_invert : boolean_vector( 0 to 1) := (false, false);

begin
  MC : MC_display_VGA_320x240
    generic map (
      canal_invert => canal_invert 
      )
    port map (

      led => led ,
      push=> push,
      sw => sw ,

      clk_25 => clk_25 ,
      clk_180  => clk_180  ,
      VGA_RED => VGA_RED ,
      VGA_GREEN => VGA_GREEN ,
      VGA_BLUE => VGA_BLUE ,
      VGA_VS => VGA_VS ,
      VGA_HS => VGA_HS ,
      VGA_active => VGA_active ,


      D_PHY_CLK_N => D_PHY_CLK_N ,
      D_PHY_CLK_P => D_PHY_CLK_P ,
      D_PHY_DATA_N=> D_PHY_DATA_N,
      D_PHY_DATA_P=> D_PHY_DATA_P,
      
                        D_PHY_LP_CLK_N => D_PHY_LP_CLK_N ,
                        D_PHY_LP_CLK_P => D_PHY_LP_CLK_P ,
                        D_PHY_LP_DATA_N=> D_PHY_LP_DATA_N,
                        D_PHY_LP_DATA_P=> D_PHY_LP_DATA_P

      );
  
      hdmi : rgb2dvi
        generic map (
        kGenerateSerialCLK => false
        )
                    Port map(
                      -- DVI 1.0 TMDS video interface
                      TMDS_Clk_p => hdmi_TMDS_Clk_p,
                      TMDS_Clk_n => hdmi_TMDS_Clk_n,
                      TMDS_Data_p => hdmi_TMDS_Data_p,
                      TMDS_Data_n => hdmi_TMDS_Data_n,
                      
                      -- Auxiliary signals 
                      aRst => rst_async,
                      aRst_n => rst_async_n,
                      
                      -- Video in
                      vid_pData => vga_data,
                      vid_pVDE => VGA_active,
                      vid_pHSync => VGA_HS,
                      vid_pVSync => VGA_VS,
                      PixelClk => clk_25,
                      
                      SerialClk => clk_hdmi
                      );
      
 vga_data <=vga_RED  & vga_BLUE & vga_GREEN;    
    rst_async <= '0';
    
    
hdmi_reset : process(clk_hdmi)
     variable n : integer range 0 to 50;
   begin
     if rising_edge(clk_hdmi) then
      -- rst_async <= '0';        rst_async_n <= '1';

       if n<40 then
         n := n+1;
       --  rst_async <= '1';         rst_async_n <= '0';

       end if; 
     end if;
   end process hdmi_reset;
end RTL;
