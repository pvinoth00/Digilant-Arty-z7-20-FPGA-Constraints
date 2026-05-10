## Arty Z7 Master XDC Constraint File
## Digilent Arty Z7 (Zynq-7010 / Zynq-7020)
## Source: Digilent Reference Manual (digilent.com/reference/programmable-logic/arty-z7)
##
## All constraints are commented by default.
## Uncomment only the lines your top-level Verilog module uses.
## Signal names must exactly match your module's port names.

##--------------------------------------------------------------------
## Clock (125 MHz from Ethernet PHY reference output → PL pin H16)
##--------------------------------------------------------------------
#set_property -dict { PACKAGE_PIN H16  IOSTANDARD LVCMOS33 } [get_ports { clk }]; # 125 MHz

##--------------------------------------------------------------------
## Audio Output (Mono, PWM/PDM)
## AUD_PWM → R18  (open-drain output; drive low for 0, high-Z for 1)
## AUD_SD  → T17  (active-high shutdown disable; drive high to enable audio)
##--------------------------------------------------------------------
#set_property -dict { PACKAGE_PIN R18  IOSTANDARD LVCMOS33 } [get_ports { aud_pwm }];
#set_property -dict { PACKAGE_PIN T17  IOSTANDARD LVCMOS33 } [get_ports { aud_sd  }];

##--------------------------------------------------------------------
## Switches (SW0–SW1, active-high when slid toward board edge)
##--------------------------------------------------------------------
#set_property -dict { PACKAGE_PIN G15  IOSTANDARD LVCMOS33 } [get_ports { sw[0] }];
#set_property -dict { PACKAGE_PIN P15  IOSTANDARD LVCMOS33 } [get_ports { sw[1] }];

##--------------------------------------------------------------------
## Push Buttons (BTN0–BTN3, active-high when pressed)
##--------------------------------------------------------------------
#set_property -dict { PACKAGE_PIN K18  IOSTANDARD LVCMOS33 } [get_ports { btn[0] }];
#set_property -dict { PACKAGE_PIN P16  IOSTANDARD LVCMOS33 } [get_ports { btn[1] }];
#set_property -dict { PACKAGE_PIN K19  IOSTANDARD LVCMOS33 } [get_ports { btn[2] }];
#set_property -dict { PACKAGE_PIN Y16  IOSTANDARD LVCMOS33 } [get_ports { btn[3] }];

##--------------------------------------------------------------------
## LEDs (LD0–LD3, active-high; drive high to illuminate)
##--------------------------------------------------------------------
#set_property -dict { PACKAGE_PIN M14  IOSTANDARD LVCMOS33 } [get_ports { led[0] }];
#set_property -dict { PACKAGE_PIN M15  IOSTANDARD LVCMOS33 } [get_ports { led[1] }];
#set_property -dict { PACKAGE_PIN G14  IOSTANDARD LVCMOS33 } [get_ports { led[2] }];
#set_property -dict { PACKAGE_PIN D18  IOSTANDARD LVCMOS33 } [get_ports { led[3] }];

##--------------------------------------------------------------------
## RGB LED 0 (LD4) — drive high to illuminate; use PWM ≤50% duty
##--------------------------------------------------------------------
#set_property -dict { PACKAGE_PIN L15  IOSTANDARD LVCMOS33 } [get_ports { rgb0_r }];
#set_property -dict { PACKAGE_PIN G17  IOSTANDARD LVCMOS33 } [get_ports { rgb0_g }];
#set_property -dict { PACKAGE_PIN N15  IOSTANDARD LVCMOS33 } [get_ports { rgb0_b }];

## RGB LED 1 (LD5) — drive high to illuminate; use PWM ≤50% duty
#set_property -dict { PACKAGE_PIN M17  IOSTANDARD LVCMOS33 } [get_ports { rgb1_r }];
#set_property -dict { PACKAGE_PIN L14  IOSTANDARD LVCMOS33 } [get_ports { rgb1_g }];
#set_property -dict { PACKAGE_PIN M16  IOSTANDARD LVCMOS33 } [get_ports { rgb1_b }];

##--------------------------------------------------------------------
## Pmod JA — High-Speed (differential pairs: 1&2, 3&4, 7&8, 9&10)
##--------------------------------------------------------------------
#set_property -dict { PACKAGE_PIN Y18  IOSTANDARD LVCMOS33 } [get_ports { ja[0] }]; # Pin 1
#set_property -dict { PACKAGE_PIN Y19  IOSTANDARD LVCMOS33 } [get_ports { ja[1] }]; # Pin 2
#set_property -dict { PACKAGE_PIN Y16  IOSTANDARD LVCMOS33 } [get_ports { ja[2] }]; # Pin 3
#set_property -dict { PACKAGE_PIN Y17  IOSTANDARD LVCMOS33 } [get_ports { ja[3] }]; # Pin 4
#set_property -dict { PACKAGE_PIN U18  IOSTANDARD LVCMOS33 } [get_ports { ja[4] }]; # Pin 7
#set_property -dict { PACKAGE_PIN U19  IOSTANDARD LVCMOS33 } [get_ports { ja[5] }]; # Pin 8
#set_property -dict { PACKAGE_PIN W18  IOSTANDARD LVCMOS33 } [get_ports { ja[6] }]; # Pin 9
#set_property -dict { PACKAGE_PIN W19  IOSTANDARD LVCMOS33 } [get_ports { ja[7] }]; # Pin 10

##--------------------------------------------------------------------
## Pmod JB — High-Speed (differential pairs: 1&2, 3&4, 7&8, 9&10)
##--------------------------------------------------------------------
#set_property -dict { PACKAGE_PIN W14  IOSTANDARD LVCMOS33 } [get_ports { jb[0] }]; # Pin 1
#set_property -dict { PACKAGE_PIN Y14  IOSTANDARD LVCMOS33 } [get_ports { jb[1] }]; # Pin 2
#set_property -dict { PACKAGE_PIN T11  IOSTANDARD LVCMOS33 } [get_ports { jb[2] }]; # Pin 3
#set_property -dict { PACKAGE_PIN T10  IOSTANDARD LVCMOS33 } [get_ports { jb[3] }]; # Pin 4
#set_property -dict { PACKAGE_PIN V16  IOSTANDARD LVCMOS33 } [get_ports { jb[4] }]; # Pin 7
#set_property -dict { PACKAGE_PIN W16  IOSTANDARD LVCMOS33 } [get_ports { jb[5] }]; # Pin 8
#set_property -dict { PACKAGE_PIN V12  IOSTANDARD LVCMOS33 } [get_ports { jb[6] }]; # Pin 9
#set_property -dict { PACKAGE_PIN W13  IOSTANDARD LVCMOS33 } [get_ports { jb[7] }]; # Pin 10

##--------------------------------------------------------------------
## HDMI Source / Output (J11) — TMDS differential pairs
##--------------------------------------------------------------------
#set_property -dict { PACKAGE_PIN J18  IOSTANDARD TMDS_33 } [get_ports { hdmi_tx_clk_p }];
#set_property -dict { PACKAGE_PIN K18  IOSTANDARD TMDS_33 } [get_ports { hdmi_tx_clk_n }];
#set_property -dict { PACKAGE_PIN K17  IOSTANDARD TMDS_33 } [get_ports { hdmi_tx_d_p[0] }];
#set_property -dict { PACKAGE_PIN K18  IOSTANDARD TMDS_33 } [get_ports { hdmi_tx_d_n[0] }];
#set_property -dict { PACKAGE_PIN K19  IOSTANDARD TMDS_33 } [get_ports { hdmi_tx_d_p[1] }];
#set_property -dict { PACKAGE_PIN J19  IOSTANDARD TMDS_33 } [get_ports { hdmi_tx_d_n[1] }];
#set_property -dict { PACKAGE_PIN J18  IOSTANDARD TMDS_33 } [get_ports { hdmi_tx_d_p[2] }];
#set_property -dict { PACKAGE_PIN H18  IOSTANDARD TMDS_33 } [get_ports { hdmi_tx_d_n[2] }];
#set_property -dict { PACKAGE_PIN G15  IOSTANDARD LVCMOS33 } [get_ports { hdmi_tx_cec }];
#set_property -dict { PACKAGE_PIN M17  IOSTANDARD LVCMOS33 } [get_ports { hdmi_tx_scl }];
#set_property -dict { PACKAGE_PIN M18  IOSTANDARD LVCMOS33 } [get_ports { hdmi_tx_sda }];
#set_property -dict { PACKAGE_PIN R19  IOSTANDARD LVCMOS33 } [get_ports { hdmi_tx_hpd }];

##--------------------------------------------------------------------
## HDMI Sink / Input (J10) — TMDS differential pairs
##--------------------------------------------------------------------
#set_property -dict { PACKAGE_PIN N18  IOSTANDARD TMDS_33 } [get_ports { hdmi_rx_clk_p }];
#set_property -dict { PACKAGE_PIN P19  IOSTANDARD TMDS_33 } [get_ports { hdmi_rx_clk_n }];
#set_property -dict { PACKAGE_PIN V20  IOSTANDARD TMDS_33 } [get_ports { hdmi_rx_d_p[0] }];
#set_property -dict { PACKAGE_PIN W20  IOSTANDARD TMDS_33 } [get_ports { hdmi_rx_d_n[0] }];
#set_property -dict { PACKAGE_PIN T20  IOSTANDARD TMDS_33 } [get_ports { hdmi_rx_d_p[1] }];
#set_property -dict { PACKAGE_PIN U20  IOSTANDARD TMDS_33 } [get_ports { hdmi_rx_d_n[1] }];
#set_property -dict { PACKAGE_PIN N20  IOSTANDARD TMDS_33 } [get_ports { hdmi_rx_d_p[2] }];
#set_property -dict { PACKAGE_PIN P20  IOSTANDARD TMDS_33 } [get_ports { hdmi_rx_d_n[2] }];
#set_property -dict { PACKAGE_PIN H17  IOSTANDARD LVCMOS33 } [get_ports { hdmi_rx_cec }];
#set_property -dict { PACKAGE_PIN U14  IOSTANDARD LVCMOS33 } [get_ports { hdmi_rx_scl }];
#set_property -dict { PACKAGE_PIN U15  IOSTANDARD LVCMOS33 } [get_ports { hdmi_rx_sda }];
#set_property -dict { PACKAGE_PIN T19  IOSTANDARD LVCMOS33 } [get_ports { hdmi_rx_hpa }];

##--------------------------------------------------------------------
## Arduino/Shield Digital I/O (IO0–IO13, Arty Z7-20 also IO26–IO42)
##--------------------------------------------------------------------
#set_property -dict { PACKAGE_PIN T14  IOSTANDARD LVCMOS33 } [get_ports { io[0]  }]; # IO0
#set_property -dict { PACKAGE_PIN U12  IOSTANDARD LVCMOS33 } [get_ports { io[1]  }]; # IO1
#set_property -dict { PACKAGE_PIN U13  IOSTANDARD LVCMOS33 } [get_ports { io[2]  }]; # IO2
#set_property -dict { PACKAGE_PIN V13  IOSTANDARD LVCMOS33 } [get_ports { io[3]  }]; # IO3
#set_property -dict { PACKAGE_PIN V15  IOSTANDARD LVCMOS33 } [get_ports { io[4]  }]; # IO4
#set_property -dict { PACKAGE_PIN T15  IOSTANDARD LVCMOS33 } [get_ports { io[5]  }]; # IO5
#set_property -dict { PACKAGE_PIN R16  IOSTANDARD LVCMOS33 } [get_ports { io[6]  }]; # IO6
#set_property -dict { PACKAGE_PIN U17  IOSTANDARD LVCMOS33 } [get_ports { io[7]  }]; # IO7
#set_property -dict { PACKAGE_PIN V17  IOSTANDARD LVCMOS33 } [get_ports { io[8]  }]; # IO8
#set_property -dict { PACKAGE_PIN V18  IOSTANDARD LVCMOS33 } [get_ports { io[9]  }]; # IO9
#set_property -dict { PACKAGE_PIN T16  IOSTANDARD LVCMOS33 } [get_ports { io[10] }]; # IO10 / SS
#set_property -dict { PACKAGE_PIN R17  IOSTANDARD LVCMOS33 } [get_ports { io[11] }]; # IO11 / MOSI
#set_property -dict { PACKAGE_PIN P18  IOSTANDARD LVCMOS33 } [get_ports { io[12] }]; # IO12 / MISO
#set_property -dict { PACKAGE_PIN N17  IOSTANDARD LVCMOS33 } [get_ports { io[13] }]; # IO13 / SCLK

##--------------------------------------------------------------------
## Shield Analog Inputs (XADC — single-ended 0–3.3V scaled)
## NOTE: Use as XADC auxiliary channels, not standard LVCMOS I/O
##--------------------------------------------------------------------
#set_property -dict { PACKAGE_PIN E17  IOSTANDARD LVCMOS33 } [get_ports { vaux1_p  }];  # AN0
#set_property -dict { PACKAGE_PIN D17  IOSTANDARD LVCMOS33 } [get_ports { vaux1_n  }];  # AN0
#set_property -dict { PACKAGE_PIN E19  IOSTANDARD LVCMOS33 } [get_ports { vaux9_p  }];  # AN1
#set_property -dict { PACKAGE_PIN D18  IOSTANDARD LVCMOS33 } [get_ports { vaux9_n  }];  # AN1
#set_property -dict { PACKAGE_PIN K14  IOSTANDARD LVCMOS33 } [get_ports { vaux6_p  }];  # AN2
#set_property -dict { PACKAGE_PIN J14  IOSTANDARD LVCMOS33 } [get_ports { vaux6_n  }];  # AN2
#set_property -dict { PACKAGE_PIN G19  IOSTANDARD LVCMOS33 } [get_ports { vaux15_p }];  # AN3
#set_property -dict { PACKAGE_PIN G18  IOSTANDARD LVCMOS33 } [get_ports { vaux15_n }];  # AN3
#set_property -dict { PACKAGE_PIN J16  IOSTANDARD LVCMOS33 } [get_ports { vaux5_p  }];  # AN4
#set_property -dict { PACKAGE_PIN J17  IOSTANDARD LVCMOS33 } [get_ports { vaux5_n  }];  # AN4
#set_property -dict { PACKAGE_PIN H19  IOSTANDARD LVCMOS33 } [get_ports { vaux13_p }];  # AN5
#set_property -dict { PACKAGE_PIN H20  IOSTANDARD LVCMOS33 } [get_ports { vaux13_n }];  # AN5
