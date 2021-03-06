reg_gain="0x00"
reg_blue="0x01"
reg_red="0x02"
reg_vref="0x03"
reg_com1="0x04"
com1_ccir656="0x40"
reg_bave="0x05"
reg_gbave="0x06"
reg_aechh="0x07"
reg_rave="0x08"
reg_com2="0x09"
com2_ssleep="0x10"
reg_pid="0x0a"
reg_ver="0x0b"
reg_com3="0x0c"
com3_swap="0x40"
com3_scaleen="0x08"
com3_dcwen="0x04"
reg_com4="0x0d"
reg_com5="0x0e"
reg_com6="0x0f"
reg_aech="0x10"
reg_clkrc="0x11"
clk_ext="0x40"
clk_scale="0x3f"
reg_com7="0x12"
com7_reset="0x80"
com7_fmt_mask="0x38"
com7_fmt_vga="0x00"
com7_fmt_cif="0x20"
com7_fmt_qvga="0x10"
com7_fmt_qcif="0x08"
com7_rgb="0x04"
com7_yuv="0x00"
com7_bayer="0x01"
com7_pbayer="0x05"
reg_com8="0x13"
com8_fastaec="0x80"
com8_aecstep="0x40"
com8_bfilt="0x20"
com8_agc="0x04"
com8_awb="0x02"
com8_aec="0x01"
reg_com9="0x14"
reg_com10="0x15"
com10_hsync="0x40"
com10_pclk_hb="0x20"
com10_href_rev="0x08"
com10_vs_lead="0x04"
com10_vs_neg="0x02"
com10_hs_neg="0x01"
reg_hstart="0x17"
reg_hstop="0x18"
reg_vstart="0x19"
reg_vstop="0x1a"
reg_pshft="0x1b"
reg_midh="0x1c"
reg_midl="0x1d"
reg_mvfp="0x1e"
mvfp_mirror="0x20"
mvfp_flip="0x10"
reg_aew="0x24"
reg_aeb="0x25"
reg_vpt="0x26"
reg_hsyst="0x30"
reg_hsyen="0x31"
reg_href="0x32"
reg_tslb="0x3a"
tslb_ylast="0x04"
reg_com11="0x3b"
com11_night="0x80"
com11_nmfr="0x60"
com11_hzauto="0x10"
com11_50hz="0x08"
com11_exp="0x02"
reg_com12="0x3c"
com12_href="0x80"
reg_com13="0x3d"
com13_gamma="0x80"
com13_uvsat="0x40"
com13_uvswap="0x01"
reg_com14="0x3e"
com14_dcwen="0x10"
reg_edge="0x3f"
reg_com15="0x40"
com15_r10f0="0x00"
com15_r01fe="0x80"
com15_r00ff="0xc0"
com15_rgb565="0x10"
com15_rgb555="0x30"
reg_com16="0x41"
com16_awbgain="0x08"
reg_com17="0x42"
com17_aecwin="0xc0"
com17_cbar="0x08"
reg_cmatrix_base="0x4f"
cmatrix_len="6"
reg_cmatrix_sign="0x58"
reg_bright="0x55"
reg_contras="0x56"
reg_gfix="0x69"
reg_reg76="0x76"
r76_blkpcor="0x80"
r76_whtpcor="0x40"
reg_rgb444="0x8c"
r444_enable="0x02"
r444_rgbx="0x01"
reg_haecc1="0x9f"
reg_haecc2="0xa0"
reg_bd50max="0xa5"
reg_haecc3="0xa6"
reg_haecc4="0xa7"
reg_haecc5="0xa8"
reg_haecc6="0xa9"
reg_haecc7="0xaa"
reg_bd60max="0xab"

bus=1
cam_addr=0x21

i2cset -y $bus $cam_addr $reg_com7 0x80
i2cset -y $bus $cam_addr $reg_clkrc 0x80
i2cset -y $bus $cam_addr $reg_com11 0x0a
i2cset -y $bus $cam_addr $reg_tslb 0x04
i2cset -y $bus $cam_addr $reg_com7 0x04
i2cset -y $bus $cam_addr $reg_com7 0x04
i2cset -y $bus $cam_addr $reg_rgb444 0x00
i2cset -y $bus $cam_addr $reg_com15 0xd0

i2cset -y $bus $cam_addr $reg_hstart 0x16
i2cset -y $bus $cam_addr $reg_hstop 0x04
i2cset -y $bus $cam_addr $reg_href 0x24
i2cset -y $bus $cam_addr $reg_vstart 0x02
i2cset -y $bus $cam_addr $reg_vstop 0x7a
i2cset -y $bus $cam_addr $reg_vref 0x0a
i2cset -y $bus $cam_addr $reg_com10 0x02
i2cset -y $bus $cam_addr $reg_com3 0x04
i2cset -y $bus $cam_addr $reg_mvfp 0x3f
i2cset -y $bus $cam_addr $reg_com14 0x19
i2cset -y $bus $cam_addr 0x72 0x11
i2cset -y $bus $cam_addr 0x73 0xf1

i2cset -y $bus $cam_addr 0x4f 0x80
i2cset -y $bus $cam_addr 0x50 0x80
i2cset -y $bus $cam_addr 0x51 0x00
i2cset -y $bus $cam_addr 0x52 0x22
i2cset -y $bus $cam_addr 0x53 0x5e
i2cset -y $bus $cam_addr 0x54 0x80
i2cset -y $bus $cam_addr 0x56 0x40
i2cset -y $bus $cam_addr 0x58 0x9e
i2cset -y $bus $cam_addr 0x59 0x88
i2cset -y $bus $cam_addr 0x5a 0x88
i2cset -y $bus $cam_addr 0x5b 0x44
i2cset -y $bus $cam_addr 0x5c 0x67
i2cset -y $bus $cam_addr 0x5d 0x49
i2cset -y $bus $cam_addr 0x5e 0x0e
i2cset -y $bus $cam_addr 0x69 0x00
i2cset -y $bus $cam_addr 0x6a 0x40
i2cset -y $bus $cam_addr 0x6b 0x0a
i2cset -y $bus $cam_addr 0x6c 0x0a
i2cset -y $bus $cam_addr 0x6d 0x55
i2cset -y $bus $cam_addr 0x6e 0x11
i2cset -y $bus $cam_addr 0x6f 0x9f
i2cset -y $bus $cam_addr 0xb0 0x84



