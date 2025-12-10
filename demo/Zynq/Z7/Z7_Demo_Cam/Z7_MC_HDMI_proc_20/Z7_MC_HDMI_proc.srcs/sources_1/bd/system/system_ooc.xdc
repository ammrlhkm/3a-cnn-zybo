################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name pl_clk -period 8 [get_ports pl_clk]
create_clock -name D_PHY_CLK_N -period 10 [get_ports D_PHY_CLK_N]
create_clock -name D_PHY_CLK_P -period 10 [get_ports D_PHY_CLK_P]
create_clock -name D_PHY_LP_CLK_N -period 10 [get_ports D_PHY_LP_CLK_N]
create_clock -name D_PHY_LP_CLK_P -period 10 [get_ports D_PHY_LP_CLK_P]
create_clock -name processing_system7_1_FCLK_CLK0 -period 10 [get_pins processing_system7_1/FCLK_CLK0]

################################################################################