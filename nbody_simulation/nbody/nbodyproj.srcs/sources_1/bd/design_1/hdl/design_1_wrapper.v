//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Sun Jul 27 12:42:45 2025
//Host        : call-me-utka running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (APB_M2_paddr,
    APB_M2_penable,
    APB_M2_prdata,
    APB_M2_pready,
    APB_M2_psel,
    APB_M2_pslverr,
    APB_M2_pwdata,
    APB_M2_pwrite,
    APB_M3_paddr,
    APB_M3_penable,
    APB_M3_prdata,
    APB_M3_pready,
    APB_M3_psel,
    APB_M3_pslverr,
    APB_M3_pwdata,
    APB_M3_pwrite,
    APB_M_paddr,
    APB_M_penable,
    APB_M_prdata,
    APB_M_pready,
    APB_M_psel,
    APB_M_pslverr,
    APB_M_pwdata,
    APB_M_pwrite,
    bt_ctsn,
    bt_rtsn,
    gpio_sensors_tri_io,
    peripheral_reset,
    pl_clk1,
    pl_clk2_300MHz,
    pl_clk3_374MHz,
    pll_locked,
    uart0_ctsn,
    uart0_rtsn,
    uart0_rxd,
    uart0_txd,
    uart1_rxd,
    uart1_txd);
  output [39:0]APB_M2_paddr;
  output APB_M2_penable;
  input [31:0]APB_M2_prdata;
  input [0:0]APB_M2_pready;
  output [0:0]APB_M2_psel;
  input [0:0]APB_M2_pslverr;
  output [31:0]APB_M2_pwdata;
  output APB_M2_pwrite;
  output [39:0]APB_M3_paddr;
  output APB_M3_penable;
  input [31:0]APB_M3_prdata;
  input [0:0]APB_M3_pready;
  output [0:0]APB_M3_psel;
  input [0:0]APB_M3_pslverr;
  output [31:0]APB_M3_pwdata;
  output APB_M3_pwrite;
  output [39:0]APB_M_paddr;
  output APB_M_penable;
  input [31:0]APB_M_prdata;
  input [0:0]APB_M_pready;
  output [0:0]APB_M_psel;
  input [0:0]APB_M_pslverr;
  output [31:0]APB_M_pwdata;
  output APB_M_pwrite;
  input bt_ctsn;
  output bt_rtsn;
  inout [94:0]gpio_sensors_tri_io;
  output [0:0]peripheral_reset;
  output pl_clk1;
  output pl_clk2_300MHz;
  output pl_clk3_374MHz;
  output pll_locked;
  input uart0_ctsn;
  output uart0_rtsn;
  input uart0_rxd;
  output uart0_txd;
  input uart1_rxd;
  output uart1_txd;

  wire [39:0]APB_M2_paddr;
  wire APB_M2_penable;
  wire [31:0]APB_M2_prdata;
  wire [0:0]APB_M2_pready;
  wire [0:0]APB_M2_psel;
  wire [0:0]APB_M2_pslverr;
  wire [31:0]APB_M2_pwdata;
  wire APB_M2_pwrite;
  wire [39:0]APB_M3_paddr;
  wire APB_M3_penable;
  wire [31:0]APB_M3_prdata;
  wire [0:0]APB_M3_pready;
  wire [0:0]APB_M3_psel;
  wire [0:0]APB_M3_pslverr;
  wire [31:0]APB_M3_pwdata;
  wire APB_M3_pwrite;
  wire [39:0]APB_M_paddr;
  wire APB_M_penable;
  wire [31:0]APB_M_prdata;
  wire [0:0]APB_M_pready;
  wire [0:0]APB_M_psel;
  wire [0:0]APB_M_pslverr;
  wire [31:0]APB_M_pwdata;
  wire APB_M_pwrite;
  wire bt_ctsn;
  wire bt_rtsn;
  wire [0:0]gpio_sensors_tri_i_0;
  wire [1:1]gpio_sensors_tri_i_1;
  wire [10:10]gpio_sensors_tri_i_10;
  wire [11:11]gpio_sensors_tri_i_11;
  wire [12:12]gpio_sensors_tri_i_12;
  wire [13:13]gpio_sensors_tri_i_13;
  wire [14:14]gpio_sensors_tri_i_14;
  wire [15:15]gpio_sensors_tri_i_15;
  wire [16:16]gpio_sensors_tri_i_16;
  wire [17:17]gpio_sensors_tri_i_17;
  wire [18:18]gpio_sensors_tri_i_18;
  wire [19:19]gpio_sensors_tri_i_19;
  wire [2:2]gpio_sensors_tri_i_2;
  wire [20:20]gpio_sensors_tri_i_20;
  wire [21:21]gpio_sensors_tri_i_21;
  wire [22:22]gpio_sensors_tri_i_22;
  wire [23:23]gpio_sensors_tri_i_23;
  wire [24:24]gpio_sensors_tri_i_24;
  wire [25:25]gpio_sensors_tri_i_25;
  wire [26:26]gpio_sensors_tri_i_26;
  wire [27:27]gpio_sensors_tri_i_27;
  wire [28:28]gpio_sensors_tri_i_28;
  wire [29:29]gpio_sensors_tri_i_29;
  wire [3:3]gpio_sensors_tri_i_3;
  wire [30:30]gpio_sensors_tri_i_30;
  wire [31:31]gpio_sensors_tri_i_31;
  wire [32:32]gpio_sensors_tri_i_32;
  wire [33:33]gpio_sensors_tri_i_33;
  wire [34:34]gpio_sensors_tri_i_34;
  wire [35:35]gpio_sensors_tri_i_35;
  wire [36:36]gpio_sensors_tri_i_36;
  wire [37:37]gpio_sensors_tri_i_37;
  wire [38:38]gpio_sensors_tri_i_38;
  wire [39:39]gpio_sensors_tri_i_39;
  wire [4:4]gpio_sensors_tri_i_4;
  wire [40:40]gpio_sensors_tri_i_40;
  wire [41:41]gpio_sensors_tri_i_41;
  wire [42:42]gpio_sensors_tri_i_42;
  wire [43:43]gpio_sensors_tri_i_43;
  wire [44:44]gpio_sensors_tri_i_44;
  wire [45:45]gpio_sensors_tri_i_45;
  wire [46:46]gpio_sensors_tri_i_46;
  wire [47:47]gpio_sensors_tri_i_47;
  wire [48:48]gpio_sensors_tri_i_48;
  wire [49:49]gpio_sensors_tri_i_49;
  wire [5:5]gpio_sensors_tri_i_5;
  wire [50:50]gpio_sensors_tri_i_50;
  wire [51:51]gpio_sensors_tri_i_51;
  wire [52:52]gpio_sensors_tri_i_52;
  wire [53:53]gpio_sensors_tri_i_53;
  wire [54:54]gpio_sensors_tri_i_54;
  wire [55:55]gpio_sensors_tri_i_55;
  wire [56:56]gpio_sensors_tri_i_56;
  wire [57:57]gpio_sensors_tri_i_57;
  wire [58:58]gpio_sensors_tri_i_58;
  wire [59:59]gpio_sensors_tri_i_59;
  wire [6:6]gpio_sensors_tri_i_6;
  wire [60:60]gpio_sensors_tri_i_60;
  wire [61:61]gpio_sensors_tri_i_61;
  wire [62:62]gpio_sensors_tri_i_62;
  wire [63:63]gpio_sensors_tri_i_63;
  wire [64:64]gpio_sensors_tri_i_64;
  wire [65:65]gpio_sensors_tri_i_65;
  wire [66:66]gpio_sensors_tri_i_66;
  wire [67:67]gpio_sensors_tri_i_67;
  wire [68:68]gpio_sensors_tri_i_68;
  wire [69:69]gpio_sensors_tri_i_69;
  wire [7:7]gpio_sensors_tri_i_7;
  wire [70:70]gpio_sensors_tri_i_70;
  wire [71:71]gpio_sensors_tri_i_71;
  wire [72:72]gpio_sensors_tri_i_72;
  wire [73:73]gpio_sensors_tri_i_73;
  wire [74:74]gpio_sensors_tri_i_74;
  wire [75:75]gpio_sensors_tri_i_75;
  wire [76:76]gpio_sensors_tri_i_76;
  wire [77:77]gpio_sensors_tri_i_77;
  wire [78:78]gpio_sensors_tri_i_78;
  wire [79:79]gpio_sensors_tri_i_79;
  wire [8:8]gpio_sensors_tri_i_8;
  wire [80:80]gpio_sensors_tri_i_80;
  wire [81:81]gpio_sensors_tri_i_81;
  wire [82:82]gpio_sensors_tri_i_82;
  wire [83:83]gpio_sensors_tri_i_83;
  wire [84:84]gpio_sensors_tri_i_84;
  wire [85:85]gpio_sensors_tri_i_85;
  wire [86:86]gpio_sensors_tri_i_86;
  wire [87:87]gpio_sensors_tri_i_87;
  wire [88:88]gpio_sensors_tri_i_88;
  wire [89:89]gpio_sensors_tri_i_89;
  wire [9:9]gpio_sensors_tri_i_9;
  wire [90:90]gpio_sensors_tri_i_90;
  wire [91:91]gpio_sensors_tri_i_91;
  wire [92:92]gpio_sensors_tri_i_92;
  wire [93:93]gpio_sensors_tri_i_93;
  wire [94:94]gpio_sensors_tri_i_94;
  wire [0:0]gpio_sensors_tri_io_0;
  wire [1:1]gpio_sensors_tri_io_1;
  wire [10:10]gpio_sensors_tri_io_10;
  wire [11:11]gpio_sensors_tri_io_11;
  wire [12:12]gpio_sensors_tri_io_12;
  wire [13:13]gpio_sensors_tri_io_13;
  wire [14:14]gpio_sensors_tri_io_14;
  wire [15:15]gpio_sensors_tri_io_15;
  wire [16:16]gpio_sensors_tri_io_16;
  wire [17:17]gpio_sensors_tri_io_17;
  wire [18:18]gpio_sensors_tri_io_18;
  wire [19:19]gpio_sensors_tri_io_19;
  wire [2:2]gpio_sensors_tri_io_2;
  wire [20:20]gpio_sensors_tri_io_20;
  wire [21:21]gpio_sensors_tri_io_21;
  wire [22:22]gpio_sensors_tri_io_22;
  wire [23:23]gpio_sensors_tri_io_23;
  wire [24:24]gpio_sensors_tri_io_24;
  wire [25:25]gpio_sensors_tri_io_25;
  wire [26:26]gpio_sensors_tri_io_26;
  wire [27:27]gpio_sensors_tri_io_27;
  wire [28:28]gpio_sensors_tri_io_28;
  wire [29:29]gpio_sensors_tri_io_29;
  wire [3:3]gpio_sensors_tri_io_3;
  wire [30:30]gpio_sensors_tri_io_30;
  wire [31:31]gpio_sensors_tri_io_31;
  wire [32:32]gpio_sensors_tri_io_32;
  wire [33:33]gpio_sensors_tri_io_33;
  wire [34:34]gpio_sensors_tri_io_34;
  wire [35:35]gpio_sensors_tri_io_35;
  wire [36:36]gpio_sensors_tri_io_36;
  wire [37:37]gpio_sensors_tri_io_37;
  wire [38:38]gpio_sensors_tri_io_38;
  wire [39:39]gpio_sensors_tri_io_39;
  wire [4:4]gpio_sensors_tri_io_4;
  wire [40:40]gpio_sensors_tri_io_40;
  wire [41:41]gpio_sensors_tri_io_41;
  wire [42:42]gpio_sensors_tri_io_42;
  wire [43:43]gpio_sensors_tri_io_43;
  wire [44:44]gpio_sensors_tri_io_44;
  wire [45:45]gpio_sensors_tri_io_45;
  wire [46:46]gpio_sensors_tri_io_46;
  wire [47:47]gpio_sensors_tri_io_47;
  wire [48:48]gpio_sensors_tri_io_48;
  wire [49:49]gpio_sensors_tri_io_49;
  wire [5:5]gpio_sensors_tri_io_5;
  wire [50:50]gpio_sensors_tri_io_50;
  wire [51:51]gpio_sensors_tri_io_51;
  wire [52:52]gpio_sensors_tri_io_52;
  wire [53:53]gpio_sensors_tri_io_53;
  wire [54:54]gpio_sensors_tri_io_54;
  wire [55:55]gpio_sensors_tri_io_55;
  wire [56:56]gpio_sensors_tri_io_56;
  wire [57:57]gpio_sensors_tri_io_57;
  wire [58:58]gpio_sensors_tri_io_58;
  wire [59:59]gpio_sensors_tri_io_59;
  wire [6:6]gpio_sensors_tri_io_6;
  wire [60:60]gpio_sensors_tri_io_60;
  wire [61:61]gpio_sensors_tri_io_61;
  wire [62:62]gpio_sensors_tri_io_62;
  wire [63:63]gpio_sensors_tri_io_63;
  wire [64:64]gpio_sensors_tri_io_64;
  wire [65:65]gpio_sensors_tri_io_65;
  wire [66:66]gpio_sensors_tri_io_66;
  wire [67:67]gpio_sensors_tri_io_67;
  wire [68:68]gpio_sensors_tri_io_68;
  wire [69:69]gpio_sensors_tri_io_69;
  wire [7:7]gpio_sensors_tri_io_7;
  wire [70:70]gpio_sensors_tri_io_70;
  wire [71:71]gpio_sensors_tri_io_71;
  wire [72:72]gpio_sensors_tri_io_72;
  wire [73:73]gpio_sensors_tri_io_73;
  wire [74:74]gpio_sensors_tri_io_74;
  wire [75:75]gpio_sensors_tri_io_75;
  wire [76:76]gpio_sensors_tri_io_76;
  wire [77:77]gpio_sensors_tri_io_77;
  wire [78:78]gpio_sensors_tri_io_78;
  wire [79:79]gpio_sensors_tri_io_79;
  wire [8:8]gpio_sensors_tri_io_8;
  wire [80:80]gpio_sensors_tri_io_80;
  wire [81:81]gpio_sensors_tri_io_81;
  wire [82:82]gpio_sensors_tri_io_82;
  wire [83:83]gpio_sensors_tri_io_83;
  wire [84:84]gpio_sensors_tri_io_84;
  wire [85:85]gpio_sensors_tri_io_85;
  wire [86:86]gpio_sensors_tri_io_86;
  wire [87:87]gpio_sensors_tri_io_87;
  wire [88:88]gpio_sensors_tri_io_88;
  wire [89:89]gpio_sensors_tri_io_89;
  wire [9:9]gpio_sensors_tri_io_9;
  wire [90:90]gpio_sensors_tri_io_90;
  wire [91:91]gpio_sensors_tri_io_91;
  wire [92:92]gpio_sensors_tri_io_92;
  wire [93:93]gpio_sensors_tri_io_93;
  wire [94:94]gpio_sensors_tri_io_94;
  wire [0:0]gpio_sensors_tri_o_0;
  wire [1:1]gpio_sensors_tri_o_1;
  wire [10:10]gpio_sensors_tri_o_10;
  wire [11:11]gpio_sensors_tri_o_11;
  wire [12:12]gpio_sensors_tri_o_12;
  wire [13:13]gpio_sensors_tri_o_13;
  wire [14:14]gpio_sensors_tri_o_14;
  wire [15:15]gpio_sensors_tri_o_15;
  wire [16:16]gpio_sensors_tri_o_16;
  wire [17:17]gpio_sensors_tri_o_17;
  wire [18:18]gpio_sensors_tri_o_18;
  wire [19:19]gpio_sensors_tri_o_19;
  wire [2:2]gpio_sensors_tri_o_2;
  wire [20:20]gpio_sensors_tri_o_20;
  wire [21:21]gpio_sensors_tri_o_21;
  wire [22:22]gpio_sensors_tri_o_22;
  wire [23:23]gpio_sensors_tri_o_23;
  wire [24:24]gpio_sensors_tri_o_24;
  wire [25:25]gpio_sensors_tri_o_25;
  wire [26:26]gpio_sensors_tri_o_26;
  wire [27:27]gpio_sensors_tri_o_27;
  wire [28:28]gpio_sensors_tri_o_28;
  wire [29:29]gpio_sensors_tri_o_29;
  wire [3:3]gpio_sensors_tri_o_3;
  wire [30:30]gpio_sensors_tri_o_30;
  wire [31:31]gpio_sensors_tri_o_31;
  wire [32:32]gpio_sensors_tri_o_32;
  wire [33:33]gpio_sensors_tri_o_33;
  wire [34:34]gpio_sensors_tri_o_34;
  wire [35:35]gpio_sensors_tri_o_35;
  wire [36:36]gpio_sensors_tri_o_36;
  wire [37:37]gpio_sensors_tri_o_37;
  wire [38:38]gpio_sensors_tri_o_38;
  wire [39:39]gpio_sensors_tri_o_39;
  wire [4:4]gpio_sensors_tri_o_4;
  wire [40:40]gpio_sensors_tri_o_40;
  wire [41:41]gpio_sensors_tri_o_41;
  wire [42:42]gpio_sensors_tri_o_42;
  wire [43:43]gpio_sensors_tri_o_43;
  wire [44:44]gpio_sensors_tri_o_44;
  wire [45:45]gpio_sensors_tri_o_45;
  wire [46:46]gpio_sensors_tri_o_46;
  wire [47:47]gpio_sensors_tri_o_47;
  wire [48:48]gpio_sensors_tri_o_48;
  wire [49:49]gpio_sensors_tri_o_49;
  wire [5:5]gpio_sensors_tri_o_5;
  wire [50:50]gpio_sensors_tri_o_50;
  wire [51:51]gpio_sensors_tri_o_51;
  wire [52:52]gpio_sensors_tri_o_52;
  wire [53:53]gpio_sensors_tri_o_53;
  wire [54:54]gpio_sensors_tri_o_54;
  wire [55:55]gpio_sensors_tri_o_55;
  wire [56:56]gpio_sensors_tri_o_56;
  wire [57:57]gpio_sensors_tri_o_57;
  wire [58:58]gpio_sensors_tri_o_58;
  wire [59:59]gpio_sensors_tri_o_59;
  wire [6:6]gpio_sensors_tri_o_6;
  wire [60:60]gpio_sensors_tri_o_60;
  wire [61:61]gpio_sensors_tri_o_61;
  wire [62:62]gpio_sensors_tri_o_62;
  wire [63:63]gpio_sensors_tri_o_63;
  wire [64:64]gpio_sensors_tri_o_64;
  wire [65:65]gpio_sensors_tri_o_65;
  wire [66:66]gpio_sensors_tri_o_66;
  wire [67:67]gpio_sensors_tri_o_67;
  wire [68:68]gpio_sensors_tri_o_68;
  wire [69:69]gpio_sensors_tri_o_69;
  wire [7:7]gpio_sensors_tri_o_7;
  wire [70:70]gpio_sensors_tri_o_70;
  wire [71:71]gpio_sensors_tri_o_71;
  wire [72:72]gpio_sensors_tri_o_72;
  wire [73:73]gpio_sensors_tri_o_73;
  wire [74:74]gpio_sensors_tri_o_74;
  wire [75:75]gpio_sensors_tri_o_75;
  wire [76:76]gpio_sensors_tri_o_76;
  wire [77:77]gpio_sensors_tri_o_77;
  wire [78:78]gpio_sensors_tri_o_78;
  wire [79:79]gpio_sensors_tri_o_79;
  wire [8:8]gpio_sensors_tri_o_8;
  wire [80:80]gpio_sensors_tri_o_80;
  wire [81:81]gpio_sensors_tri_o_81;
  wire [82:82]gpio_sensors_tri_o_82;
  wire [83:83]gpio_sensors_tri_o_83;
  wire [84:84]gpio_sensors_tri_o_84;
  wire [85:85]gpio_sensors_tri_o_85;
  wire [86:86]gpio_sensors_tri_o_86;
  wire [87:87]gpio_sensors_tri_o_87;
  wire [88:88]gpio_sensors_tri_o_88;
  wire [89:89]gpio_sensors_tri_o_89;
  wire [9:9]gpio_sensors_tri_o_9;
  wire [90:90]gpio_sensors_tri_o_90;
  wire [91:91]gpio_sensors_tri_o_91;
  wire [92:92]gpio_sensors_tri_o_92;
  wire [93:93]gpio_sensors_tri_o_93;
  wire [94:94]gpio_sensors_tri_o_94;
  wire [0:0]gpio_sensors_tri_t_0;
  wire [1:1]gpio_sensors_tri_t_1;
  wire [10:10]gpio_sensors_tri_t_10;
  wire [11:11]gpio_sensors_tri_t_11;
  wire [12:12]gpio_sensors_tri_t_12;
  wire [13:13]gpio_sensors_tri_t_13;
  wire [14:14]gpio_sensors_tri_t_14;
  wire [15:15]gpio_sensors_tri_t_15;
  wire [16:16]gpio_sensors_tri_t_16;
  wire [17:17]gpio_sensors_tri_t_17;
  wire [18:18]gpio_sensors_tri_t_18;
  wire [19:19]gpio_sensors_tri_t_19;
  wire [2:2]gpio_sensors_tri_t_2;
  wire [20:20]gpio_sensors_tri_t_20;
  wire [21:21]gpio_sensors_tri_t_21;
  wire [22:22]gpio_sensors_tri_t_22;
  wire [23:23]gpio_sensors_tri_t_23;
  wire [24:24]gpio_sensors_tri_t_24;
  wire [25:25]gpio_sensors_tri_t_25;
  wire [26:26]gpio_sensors_tri_t_26;
  wire [27:27]gpio_sensors_tri_t_27;
  wire [28:28]gpio_sensors_tri_t_28;
  wire [29:29]gpio_sensors_tri_t_29;
  wire [3:3]gpio_sensors_tri_t_3;
  wire [30:30]gpio_sensors_tri_t_30;
  wire [31:31]gpio_sensors_tri_t_31;
  wire [32:32]gpio_sensors_tri_t_32;
  wire [33:33]gpio_sensors_tri_t_33;
  wire [34:34]gpio_sensors_tri_t_34;
  wire [35:35]gpio_sensors_tri_t_35;
  wire [36:36]gpio_sensors_tri_t_36;
  wire [37:37]gpio_sensors_tri_t_37;
  wire [38:38]gpio_sensors_tri_t_38;
  wire [39:39]gpio_sensors_tri_t_39;
  wire [4:4]gpio_sensors_tri_t_4;
  wire [40:40]gpio_sensors_tri_t_40;
  wire [41:41]gpio_sensors_tri_t_41;
  wire [42:42]gpio_sensors_tri_t_42;
  wire [43:43]gpio_sensors_tri_t_43;
  wire [44:44]gpio_sensors_tri_t_44;
  wire [45:45]gpio_sensors_tri_t_45;
  wire [46:46]gpio_sensors_tri_t_46;
  wire [47:47]gpio_sensors_tri_t_47;
  wire [48:48]gpio_sensors_tri_t_48;
  wire [49:49]gpio_sensors_tri_t_49;
  wire [5:5]gpio_sensors_tri_t_5;
  wire [50:50]gpio_sensors_tri_t_50;
  wire [51:51]gpio_sensors_tri_t_51;
  wire [52:52]gpio_sensors_tri_t_52;
  wire [53:53]gpio_sensors_tri_t_53;
  wire [54:54]gpio_sensors_tri_t_54;
  wire [55:55]gpio_sensors_tri_t_55;
  wire [56:56]gpio_sensors_tri_t_56;
  wire [57:57]gpio_sensors_tri_t_57;
  wire [58:58]gpio_sensors_tri_t_58;
  wire [59:59]gpio_sensors_tri_t_59;
  wire [6:6]gpio_sensors_tri_t_6;
  wire [60:60]gpio_sensors_tri_t_60;
  wire [61:61]gpio_sensors_tri_t_61;
  wire [62:62]gpio_sensors_tri_t_62;
  wire [63:63]gpio_sensors_tri_t_63;
  wire [64:64]gpio_sensors_tri_t_64;
  wire [65:65]gpio_sensors_tri_t_65;
  wire [66:66]gpio_sensors_tri_t_66;
  wire [67:67]gpio_sensors_tri_t_67;
  wire [68:68]gpio_sensors_tri_t_68;
  wire [69:69]gpio_sensors_tri_t_69;
  wire [7:7]gpio_sensors_tri_t_7;
  wire [70:70]gpio_sensors_tri_t_70;
  wire [71:71]gpio_sensors_tri_t_71;
  wire [72:72]gpio_sensors_tri_t_72;
  wire [73:73]gpio_sensors_tri_t_73;
  wire [74:74]gpio_sensors_tri_t_74;
  wire [75:75]gpio_sensors_tri_t_75;
  wire [76:76]gpio_sensors_tri_t_76;
  wire [77:77]gpio_sensors_tri_t_77;
  wire [78:78]gpio_sensors_tri_t_78;
  wire [79:79]gpio_sensors_tri_t_79;
  wire [8:8]gpio_sensors_tri_t_8;
  wire [80:80]gpio_sensors_tri_t_80;
  wire [81:81]gpio_sensors_tri_t_81;
  wire [82:82]gpio_sensors_tri_t_82;
  wire [83:83]gpio_sensors_tri_t_83;
  wire [84:84]gpio_sensors_tri_t_84;
  wire [85:85]gpio_sensors_tri_t_85;
  wire [86:86]gpio_sensors_tri_t_86;
  wire [87:87]gpio_sensors_tri_t_87;
  wire [88:88]gpio_sensors_tri_t_88;
  wire [89:89]gpio_sensors_tri_t_89;
  wire [9:9]gpio_sensors_tri_t_9;
  wire [90:90]gpio_sensors_tri_t_90;
  wire [91:91]gpio_sensors_tri_t_91;
  wire [92:92]gpio_sensors_tri_t_92;
  wire [93:93]gpio_sensors_tri_t_93;
  wire [94:94]gpio_sensors_tri_t_94;
  wire [0:0]peripheral_reset;
  wire pl_clk1;
  wire pl_clk2_300MHz;
  wire pl_clk3_374MHz;
  wire pll_locked;
  wire uart0_ctsn;
  wire uart0_rtsn;
  wire uart0_rxd;
  wire uart0_txd;
  wire uart1_rxd;
  wire uart1_txd;

  design_1 design_1_i
       (.APB_M2_paddr(APB_M2_paddr),
        .APB_M2_penable(APB_M2_penable),
        .APB_M2_prdata(APB_M2_prdata),
        .APB_M2_pready(APB_M2_pready),
        .APB_M2_psel(APB_M2_psel),
        .APB_M2_pslverr(APB_M2_pslverr),
        .APB_M2_pwdata(APB_M2_pwdata),
        .APB_M2_pwrite(APB_M2_pwrite),
        .APB_M3_paddr(APB_M3_paddr),
        .APB_M3_penable(APB_M3_penable),
        .APB_M3_prdata(APB_M3_prdata),
        .APB_M3_pready(APB_M3_pready),
        .APB_M3_psel(APB_M3_psel),
        .APB_M3_pslverr(APB_M3_pslverr),
        .APB_M3_pwdata(APB_M3_pwdata),
        .APB_M3_pwrite(APB_M3_pwrite),
        .APB_M_paddr(APB_M_paddr),
        .APB_M_penable(APB_M_penable),
        .APB_M_prdata(APB_M_prdata),
        .APB_M_pready(APB_M_pready),
        .APB_M_psel(APB_M_psel),
        .APB_M_pslverr(APB_M_pslverr),
        .APB_M_pwdata(APB_M_pwdata),
        .APB_M_pwrite(APB_M_pwrite),
        .bt_ctsn(bt_ctsn),
        .bt_rtsn(bt_rtsn),
        .gpio_sensors_tri_i({gpio_sensors_tri_i_94,gpio_sensors_tri_i_93,gpio_sensors_tri_i_92,gpio_sensors_tri_i_91,gpio_sensors_tri_i_90,gpio_sensors_tri_i_89,gpio_sensors_tri_i_88,gpio_sensors_tri_i_87,gpio_sensors_tri_i_86,gpio_sensors_tri_i_85,gpio_sensors_tri_i_84,gpio_sensors_tri_i_83,gpio_sensors_tri_i_82,gpio_sensors_tri_i_81,gpio_sensors_tri_i_80,gpio_sensors_tri_i_79,gpio_sensors_tri_i_78,gpio_sensors_tri_i_77,gpio_sensors_tri_i_76,gpio_sensors_tri_i_75,gpio_sensors_tri_i_74,gpio_sensors_tri_i_73,gpio_sensors_tri_i_72,gpio_sensors_tri_i_71,gpio_sensors_tri_i_70,gpio_sensors_tri_i_69,gpio_sensors_tri_i_68,gpio_sensors_tri_i_67,gpio_sensors_tri_i_66,gpio_sensors_tri_i_65,gpio_sensors_tri_i_64,gpio_sensors_tri_i_63,gpio_sensors_tri_i_62,gpio_sensors_tri_i_61,gpio_sensors_tri_i_60,gpio_sensors_tri_i_59,gpio_sensors_tri_i_58,gpio_sensors_tri_i_57,gpio_sensors_tri_i_56,gpio_sensors_tri_i_55,gpio_sensors_tri_i_54,gpio_sensors_tri_i_53,gpio_sensors_tri_i_52,gpio_sensors_tri_i_51,gpio_sensors_tri_i_50,gpio_sensors_tri_i_49,gpio_sensors_tri_i_48,gpio_sensors_tri_i_47,gpio_sensors_tri_i_46,gpio_sensors_tri_i_45,gpio_sensors_tri_i_44,gpio_sensors_tri_i_43,gpio_sensors_tri_i_42,gpio_sensors_tri_i_41,gpio_sensors_tri_i_40,gpio_sensors_tri_i_39,gpio_sensors_tri_i_38,gpio_sensors_tri_i_37,gpio_sensors_tri_i_36,gpio_sensors_tri_i_35,gpio_sensors_tri_i_34,gpio_sensors_tri_i_33,gpio_sensors_tri_i_32,gpio_sensors_tri_i_31,gpio_sensors_tri_i_30,gpio_sensors_tri_i_29,gpio_sensors_tri_i_28,gpio_sensors_tri_i_27,gpio_sensors_tri_i_26,gpio_sensors_tri_i_25,gpio_sensors_tri_i_24,gpio_sensors_tri_i_23,gpio_sensors_tri_i_22,gpio_sensors_tri_i_21,gpio_sensors_tri_i_20,gpio_sensors_tri_i_19,gpio_sensors_tri_i_18,gpio_sensors_tri_i_17,gpio_sensors_tri_i_16,gpio_sensors_tri_i_15,gpio_sensors_tri_i_14,gpio_sensors_tri_i_13,gpio_sensors_tri_i_12,gpio_sensors_tri_i_11,gpio_sensors_tri_i_10,gpio_sensors_tri_i_9,gpio_sensors_tri_i_8,gpio_sensors_tri_i_7,gpio_sensors_tri_i_6,gpio_sensors_tri_i_5,gpio_sensors_tri_i_4,gpio_sensors_tri_i_3,gpio_sensors_tri_i_2,gpio_sensors_tri_i_1,gpio_sensors_tri_i_0}),
        .gpio_sensors_tri_o({gpio_sensors_tri_o_94,gpio_sensors_tri_o_93,gpio_sensors_tri_o_92,gpio_sensors_tri_o_91,gpio_sensors_tri_o_90,gpio_sensors_tri_o_89,gpio_sensors_tri_o_88,gpio_sensors_tri_o_87,gpio_sensors_tri_o_86,gpio_sensors_tri_o_85,gpio_sensors_tri_o_84,gpio_sensors_tri_o_83,gpio_sensors_tri_o_82,gpio_sensors_tri_o_81,gpio_sensors_tri_o_80,gpio_sensors_tri_o_79,gpio_sensors_tri_o_78,gpio_sensors_tri_o_77,gpio_sensors_tri_o_76,gpio_sensors_tri_o_75,gpio_sensors_tri_o_74,gpio_sensors_tri_o_73,gpio_sensors_tri_o_72,gpio_sensors_tri_o_71,gpio_sensors_tri_o_70,gpio_sensors_tri_o_69,gpio_sensors_tri_o_68,gpio_sensors_tri_o_67,gpio_sensors_tri_o_66,gpio_sensors_tri_o_65,gpio_sensors_tri_o_64,gpio_sensors_tri_o_63,gpio_sensors_tri_o_62,gpio_sensors_tri_o_61,gpio_sensors_tri_o_60,gpio_sensors_tri_o_59,gpio_sensors_tri_o_58,gpio_sensors_tri_o_57,gpio_sensors_tri_o_56,gpio_sensors_tri_o_55,gpio_sensors_tri_o_54,gpio_sensors_tri_o_53,gpio_sensors_tri_o_52,gpio_sensors_tri_o_51,gpio_sensors_tri_o_50,gpio_sensors_tri_o_49,gpio_sensors_tri_o_48,gpio_sensors_tri_o_47,gpio_sensors_tri_o_46,gpio_sensors_tri_o_45,gpio_sensors_tri_o_44,gpio_sensors_tri_o_43,gpio_sensors_tri_o_42,gpio_sensors_tri_o_41,gpio_sensors_tri_o_40,gpio_sensors_tri_o_39,gpio_sensors_tri_o_38,gpio_sensors_tri_o_37,gpio_sensors_tri_o_36,gpio_sensors_tri_o_35,gpio_sensors_tri_o_34,gpio_sensors_tri_o_33,gpio_sensors_tri_o_32,gpio_sensors_tri_o_31,gpio_sensors_tri_o_30,gpio_sensors_tri_o_29,gpio_sensors_tri_o_28,gpio_sensors_tri_o_27,gpio_sensors_tri_o_26,gpio_sensors_tri_o_25,gpio_sensors_tri_o_24,gpio_sensors_tri_o_23,gpio_sensors_tri_o_22,gpio_sensors_tri_o_21,gpio_sensors_tri_o_20,gpio_sensors_tri_o_19,gpio_sensors_tri_o_18,gpio_sensors_tri_o_17,gpio_sensors_tri_o_16,gpio_sensors_tri_o_15,gpio_sensors_tri_o_14,gpio_sensors_tri_o_13,gpio_sensors_tri_o_12,gpio_sensors_tri_o_11,gpio_sensors_tri_o_10,gpio_sensors_tri_o_9,gpio_sensors_tri_o_8,gpio_sensors_tri_o_7,gpio_sensors_tri_o_6,gpio_sensors_tri_o_5,gpio_sensors_tri_o_4,gpio_sensors_tri_o_3,gpio_sensors_tri_o_2,gpio_sensors_tri_o_1,gpio_sensors_tri_o_0}),
        .gpio_sensors_tri_t({gpio_sensors_tri_t_94,gpio_sensors_tri_t_93,gpio_sensors_tri_t_92,gpio_sensors_tri_t_91,gpio_sensors_tri_t_90,gpio_sensors_tri_t_89,gpio_sensors_tri_t_88,gpio_sensors_tri_t_87,gpio_sensors_tri_t_86,gpio_sensors_tri_t_85,gpio_sensors_tri_t_84,gpio_sensors_tri_t_83,gpio_sensors_tri_t_82,gpio_sensors_tri_t_81,gpio_sensors_tri_t_80,gpio_sensors_tri_t_79,gpio_sensors_tri_t_78,gpio_sensors_tri_t_77,gpio_sensors_tri_t_76,gpio_sensors_tri_t_75,gpio_sensors_tri_t_74,gpio_sensors_tri_t_73,gpio_sensors_tri_t_72,gpio_sensors_tri_t_71,gpio_sensors_tri_t_70,gpio_sensors_tri_t_69,gpio_sensors_tri_t_68,gpio_sensors_tri_t_67,gpio_sensors_tri_t_66,gpio_sensors_tri_t_65,gpio_sensors_tri_t_64,gpio_sensors_tri_t_63,gpio_sensors_tri_t_62,gpio_sensors_tri_t_61,gpio_sensors_tri_t_60,gpio_sensors_tri_t_59,gpio_sensors_tri_t_58,gpio_sensors_tri_t_57,gpio_sensors_tri_t_56,gpio_sensors_tri_t_55,gpio_sensors_tri_t_54,gpio_sensors_tri_t_53,gpio_sensors_tri_t_52,gpio_sensors_tri_t_51,gpio_sensors_tri_t_50,gpio_sensors_tri_t_49,gpio_sensors_tri_t_48,gpio_sensors_tri_t_47,gpio_sensors_tri_t_46,gpio_sensors_tri_t_45,gpio_sensors_tri_t_44,gpio_sensors_tri_t_43,gpio_sensors_tri_t_42,gpio_sensors_tri_t_41,gpio_sensors_tri_t_40,gpio_sensors_tri_t_39,gpio_sensors_tri_t_38,gpio_sensors_tri_t_37,gpio_sensors_tri_t_36,gpio_sensors_tri_t_35,gpio_sensors_tri_t_34,gpio_sensors_tri_t_33,gpio_sensors_tri_t_32,gpio_sensors_tri_t_31,gpio_sensors_tri_t_30,gpio_sensors_tri_t_29,gpio_sensors_tri_t_28,gpio_sensors_tri_t_27,gpio_sensors_tri_t_26,gpio_sensors_tri_t_25,gpio_sensors_tri_t_24,gpio_sensors_tri_t_23,gpio_sensors_tri_t_22,gpio_sensors_tri_t_21,gpio_sensors_tri_t_20,gpio_sensors_tri_t_19,gpio_sensors_tri_t_18,gpio_sensors_tri_t_17,gpio_sensors_tri_t_16,gpio_sensors_tri_t_15,gpio_sensors_tri_t_14,gpio_sensors_tri_t_13,gpio_sensors_tri_t_12,gpio_sensors_tri_t_11,gpio_sensors_tri_t_10,gpio_sensors_tri_t_9,gpio_sensors_tri_t_8,gpio_sensors_tri_t_7,gpio_sensors_tri_t_6,gpio_sensors_tri_t_5,gpio_sensors_tri_t_4,gpio_sensors_tri_t_3,gpio_sensors_tri_t_2,gpio_sensors_tri_t_1,gpio_sensors_tri_t_0}),
        .peripheral_reset(peripheral_reset),
        .pl_clk1(pl_clk1),
        .pl_clk2_300MHz(pl_clk2_300MHz),
        .pl_clk3_374MHz(pl_clk3_374MHz),
        .pll_locked(pll_locked),
        .uart0_ctsn(uart0_ctsn),
        .uart0_rtsn(uart0_rtsn),
        .uart0_rxd(uart0_rxd),
        .uart0_txd(uart0_txd),
        .uart1_rxd(uart1_rxd),
        .uart1_txd(uart1_txd));
  IOBUF gpio_sensors_tri_iobuf_0
       (.I(gpio_sensors_tri_o_0),
        .IO(gpio_sensors_tri_io[0]),
        .O(gpio_sensors_tri_i_0),
        .T(gpio_sensors_tri_t_0));
  IOBUF gpio_sensors_tri_iobuf_1
       (.I(gpio_sensors_tri_o_1),
        .IO(gpio_sensors_tri_io[1]),
        .O(gpio_sensors_tri_i_1),
        .T(gpio_sensors_tri_t_1));
  IOBUF gpio_sensors_tri_iobuf_10
       (.I(gpio_sensors_tri_o_10),
        .IO(gpio_sensors_tri_io[10]),
        .O(gpio_sensors_tri_i_10),
        .T(gpio_sensors_tri_t_10));
  IOBUF gpio_sensors_tri_iobuf_11
       (.I(gpio_sensors_tri_o_11),
        .IO(gpio_sensors_tri_io[11]),
        .O(gpio_sensors_tri_i_11),
        .T(gpio_sensors_tri_t_11));
  IOBUF gpio_sensors_tri_iobuf_12
       (.I(gpio_sensors_tri_o_12),
        .IO(gpio_sensors_tri_io[12]),
        .O(gpio_sensors_tri_i_12),
        .T(gpio_sensors_tri_t_12));
  IOBUF gpio_sensors_tri_iobuf_13
       (.I(gpio_sensors_tri_o_13),
        .IO(gpio_sensors_tri_io[13]),
        .O(gpio_sensors_tri_i_13),
        .T(gpio_sensors_tri_t_13));
  IOBUF gpio_sensors_tri_iobuf_14
       (.I(gpio_sensors_tri_o_14),
        .IO(gpio_sensors_tri_io[14]),
        .O(gpio_sensors_tri_i_14),
        .T(gpio_sensors_tri_t_14));
  IOBUF gpio_sensors_tri_iobuf_15
       (.I(gpio_sensors_tri_o_15),
        .IO(gpio_sensors_tri_io[15]),
        .O(gpio_sensors_tri_i_15),
        .T(gpio_sensors_tri_t_15));
  IOBUF gpio_sensors_tri_iobuf_16
       (.I(gpio_sensors_tri_o_16),
        .IO(gpio_sensors_tri_io[16]),
        .O(gpio_sensors_tri_i_16),
        .T(gpio_sensors_tri_t_16));
  IOBUF gpio_sensors_tri_iobuf_17
       (.I(gpio_sensors_tri_o_17),
        .IO(gpio_sensors_tri_io[17]),
        .O(gpio_sensors_tri_i_17),
        .T(gpio_sensors_tri_t_17));
  IOBUF gpio_sensors_tri_iobuf_18
       (.I(gpio_sensors_tri_o_18),
        .IO(gpio_sensors_tri_io[18]),
        .O(gpio_sensors_tri_i_18),
        .T(gpio_sensors_tri_t_18));
  IOBUF gpio_sensors_tri_iobuf_19
       (.I(gpio_sensors_tri_o_19),
        .IO(gpio_sensors_tri_io[19]),
        .O(gpio_sensors_tri_i_19),
        .T(gpio_sensors_tri_t_19));
  IOBUF gpio_sensors_tri_iobuf_2
       (.I(gpio_sensors_tri_o_2),
        .IO(gpio_sensors_tri_io[2]),
        .O(gpio_sensors_tri_i_2),
        .T(gpio_sensors_tri_t_2));
  IOBUF gpio_sensors_tri_iobuf_20
       (.I(gpio_sensors_tri_o_20),
        .IO(gpio_sensors_tri_io[20]),
        .O(gpio_sensors_tri_i_20),
        .T(gpio_sensors_tri_t_20));
  IOBUF gpio_sensors_tri_iobuf_21
       (.I(gpio_sensors_tri_o_21),
        .IO(gpio_sensors_tri_io[21]),
        .O(gpio_sensors_tri_i_21),
        .T(gpio_sensors_tri_t_21));
  IOBUF gpio_sensors_tri_iobuf_22
       (.I(gpio_sensors_tri_o_22),
        .IO(gpio_sensors_tri_io[22]),
        .O(gpio_sensors_tri_i_22),
        .T(gpio_sensors_tri_t_22));
  IOBUF gpio_sensors_tri_iobuf_23
       (.I(gpio_sensors_tri_o_23),
        .IO(gpio_sensors_tri_io[23]),
        .O(gpio_sensors_tri_i_23),
        .T(gpio_sensors_tri_t_23));
  IOBUF gpio_sensors_tri_iobuf_24
       (.I(gpio_sensors_tri_o_24),
        .IO(gpio_sensors_tri_io[24]),
        .O(gpio_sensors_tri_i_24),
        .T(gpio_sensors_tri_t_24));
  IOBUF gpio_sensors_tri_iobuf_25
       (.I(gpio_sensors_tri_o_25),
        .IO(gpio_sensors_tri_io[25]),
        .O(gpio_sensors_tri_i_25),
        .T(gpio_sensors_tri_t_25));
  IOBUF gpio_sensors_tri_iobuf_26
       (.I(gpio_sensors_tri_o_26),
        .IO(gpio_sensors_tri_io[26]),
        .O(gpio_sensors_tri_i_26),
        .T(gpio_sensors_tri_t_26));
  IOBUF gpio_sensors_tri_iobuf_27
       (.I(gpio_sensors_tri_o_27),
        .IO(gpio_sensors_tri_io[27]),
        .O(gpio_sensors_tri_i_27),
        .T(gpio_sensors_tri_t_27));
  IOBUF gpio_sensors_tri_iobuf_28
       (.I(gpio_sensors_tri_o_28),
        .IO(gpio_sensors_tri_io[28]),
        .O(gpio_sensors_tri_i_28),
        .T(gpio_sensors_tri_t_28));
  IOBUF gpio_sensors_tri_iobuf_29
       (.I(gpio_sensors_tri_o_29),
        .IO(gpio_sensors_tri_io[29]),
        .O(gpio_sensors_tri_i_29),
        .T(gpio_sensors_tri_t_29));
  IOBUF gpio_sensors_tri_iobuf_3
       (.I(gpio_sensors_tri_o_3),
        .IO(gpio_sensors_tri_io[3]),
        .O(gpio_sensors_tri_i_3),
        .T(gpio_sensors_tri_t_3));
  IOBUF gpio_sensors_tri_iobuf_30
       (.I(gpio_sensors_tri_o_30),
        .IO(gpio_sensors_tri_io[30]),
        .O(gpio_sensors_tri_i_30),
        .T(gpio_sensors_tri_t_30));
  IOBUF gpio_sensors_tri_iobuf_31
       (.I(gpio_sensors_tri_o_31),
        .IO(gpio_sensors_tri_io[31]),
        .O(gpio_sensors_tri_i_31),
        .T(gpio_sensors_tri_t_31));
  IOBUF gpio_sensors_tri_iobuf_32
       (.I(gpio_sensors_tri_o_32),
        .IO(gpio_sensors_tri_io[32]),
        .O(gpio_sensors_tri_i_32),
        .T(gpio_sensors_tri_t_32));
  IOBUF gpio_sensors_tri_iobuf_33
       (.I(gpio_sensors_tri_o_33),
        .IO(gpio_sensors_tri_io[33]),
        .O(gpio_sensors_tri_i_33),
        .T(gpio_sensors_tri_t_33));
  IOBUF gpio_sensors_tri_iobuf_34
       (.I(gpio_sensors_tri_o_34),
        .IO(gpio_sensors_tri_io[34]),
        .O(gpio_sensors_tri_i_34),
        .T(gpio_sensors_tri_t_34));
  IOBUF gpio_sensors_tri_iobuf_35
       (.I(gpio_sensors_tri_o_35),
        .IO(gpio_sensors_tri_io[35]),
        .O(gpio_sensors_tri_i_35),
        .T(gpio_sensors_tri_t_35));
  IOBUF gpio_sensors_tri_iobuf_36
       (.I(gpio_sensors_tri_o_36),
        .IO(gpio_sensors_tri_io[36]),
        .O(gpio_sensors_tri_i_36),
        .T(gpio_sensors_tri_t_36));
  IOBUF gpio_sensors_tri_iobuf_37
       (.I(gpio_sensors_tri_o_37),
        .IO(gpio_sensors_tri_io[37]),
        .O(gpio_sensors_tri_i_37),
        .T(gpio_sensors_tri_t_37));
  IOBUF gpio_sensors_tri_iobuf_38
       (.I(gpio_sensors_tri_o_38),
        .IO(gpio_sensors_tri_io[38]),
        .O(gpio_sensors_tri_i_38),
        .T(gpio_sensors_tri_t_38));
  IOBUF gpio_sensors_tri_iobuf_39
       (.I(gpio_sensors_tri_o_39),
        .IO(gpio_sensors_tri_io[39]),
        .O(gpio_sensors_tri_i_39),
        .T(gpio_sensors_tri_t_39));
  IOBUF gpio_sensors_tri_iobuf_4
       (.I(gpio_sensors_tri_o_4),
        .IO(gpio_sensors_tri_io[4]),
        .O(gpio_sensors_tri_i_4),
        .T(gpio_sensors_tri_t_4));
  IOBUF gpio_sensors_tri_iobuf_40
       (.I(gpio_sensors_tri_o_40),
        .IO(gpio_sensors_tri_io[40]),
        .O(gpio_sensors_tri_i_40),
        .T(gpio_sensors_tri_t_40));
  IOBUF gpio_sensors_tri_iobuf_41
       (.I(gpio_sensors_tri_o_41),
        .IO(gpio_sensors_tri_io[41]),
        .O(gpio_sensors_tri_i_41),
        .T(gpio_sensors_tri_t_41));
  IOBUF gpio_sensors_tri_iobuf_42
       (.I(gpio_sensors_tri_o_42),
        .IO(gpio_sensors_tri_io[42]),
        .O(gpio_sensors_tri_i_42),
        .T(gpio_sensors_tri_t_42));
  IOBUF gpio_sensors_tri_iobuf_43
       (.I(gpio_sensors_tri_o_43),
        .IO(gpio_sensors_tri_io[43]),
        .O(gpio_sensors_tri_i_43),
        .T(gpio_sensors_tri_t_43));
  IOBUF gpio_sensors_tri_iobuf_44
       (.I(gpio_sensors_tri_o_44),
        .IO(gpio_sensors_tri_io[44]),
        .O(gpio_sensors_tri_i_44),
        .T(gpio_sensors_tri_t_44));
  IOBUF gpio_sensors_tri_iobuf_45
       (.I(gpio_sensors_tri_o_45),
        .IO(gpio_sensors_tri_io[45]),
        .O(gpio_sensors_tri_i_45),
        .T(gpio_sensors_tri_t_45));
  IOBUF gpio_sensors_tri_iobuf_46
       (.I(gpio_sensors_tri_o_46),
        .IO(gpio_sensors_tri_io[46]),
        .O(gpio_sensors_tri_i_46),
        .T(gpio_sensors_tri_t_46));
  IOBUF gpio_sensors_tri_iobuf_47
       (.I(gpio_sensors_tri_o_47),
        .IO(gpio_sensors_tri_io[47]),
        .O(gpio_sensors_tri_i_47),
        .T(gpio_sensors_tri_t_47));
  IOBUF gpio_sensors_tri_iobuf_48
       (.I(gpio_sensors_tri_o_48),
        .IO(gpio_sensors_tri_io[48]),
        .O(gpio_sensors_tri_i_48),
        .T(gpio_sensors_tri_t_48));
  IOBUF gpio_sensors_tri_iobuf_49
       (.I(gpio_sensors_tri_o_49),
        .IO(gpio_sensors_tri_io[49]),
        .O(gpio_sensors_tri_i_49),
        .T(gpio_sensors_tri_t_49));
  IOBUF gpio_sensors_tri_iobuf_5
       (.I(gpio_sensors_tri_o_5),
        .IO(gpio_sensors_tri_io[5]),
        .O(gpio_sensors_tri_i_5),
        .T(gpio_sensors_tri_t_5));
  IOBUF gpio_sensors_tri_iobuf_50
       (.I(gpio_sensors_tri_o_50),
        .IO(gpio_sensors_tri_io[50]),
        .O(gpio_sensors_tri_i_50),
        .T(gpio_sensors_tri_t_50));
  IOBUF gpio_sensors_tri_iobuf_51
       (.I(gpio_sensors_tri_o_51),
        .IO(gpio_sensors_tri_io[51]),
        .O(gpio_sensors_tri_i_51),
        .T(gpio_sensors_tri_t_51));
  IOBUF gpio_sensors_tri_iobuf_52
       (.I(gpio_sensors_tri_o_52),
        .IO(gpio_sensors_tri_io[52]),
        .O(gpio_sensors_tri_i_52),
        .T(gpio_sensors_tri_t_52));
  IOBUF gpio_sensors_tri_iobuf_53
       (.I(gpio_sensors_tri_o_53),
        .IO(gpio_sensors_tri_io[53]),
        .O(gpio_sensors_tri_i_53),
        .T(gpio_sensors_tri_t_53));
  IOBUF gpio_sensors_tri_iobuf_54
       (.I(gpio_sensors_tri_o_54),
        .IO(gpio_sensors_tri_io[54]),
        .O(gpio_sensors_tri_i_54),
        .T(gpio_sensors_tri_t_54));
  IOBUF gpio_sensors_tri_iobuf_55
       (.I(gpio_sensors_tri_o_55),
        .IO(gpio_sensors_tri_io[55]),
        .O(gpio_sensors_tri_i_55),
        .T(gpio_sensors_tri_t_55));
  IOBUF gpio_sensors_tri_iobuf_56
       (.I(gpio_sensors_tri_o_56),
        .IO(gpio_sensors_tri_io[56]),
        .O(gpio_sensors_tri_i_56),
        .T(gpio_sensors_tri_t_56));
  IOBUF gpio_sensors_tri_iobuf_57
       (.I(gpio_sensors_tri_o_57),
        .IO(gpio_sensors_tri_io[57]),
        .O(gpio_sensors_tri_i_57),
        .T(gpio_sensors_tri_t_57));
  IOBUF gpio_sensors_tri_iobuf_58
       (.I(gpio_sensors_tri_o_58),
        .IO(gpio_sensors_tri_io[58]),
        .O(gpio_sensors_tri_i_58),
        .T(gpio_sensors_tri_t_58));
  IOBUF gpio_sensors_tri_iobuf_59
       (.I(gpio_sensors_tri_o_59),
        .IO(gpio_sensors_tri_io[59]),
        .O(gpio_sensors_tri_i_59),
        .T(gpio_sensors_tri_t_59));
  IOBUF gpio_sensors_tri_iobuf_6
       (.I(gpio_sensors_tri_o_6),
        .IO(gpio_sensors_tri_io[6]),
        .O(gpio_sensors_tri_i_6),
        .T(gpio_sensors_tri_t_6));
  IOBUF gpio_sensors_tri_iobuf_60
       (.I(gpio_sensors_tri_o_60),
        .IO(gpio_sensors_tri_io[60]),
        .O(gpio_sensors_tri_i_60),
        .T(gpio_sensors_tri_t_60));
  IOBUF gpio_sensors_tri_iobuf_61
       (.I(gpio_sensors_tri_o_61),
        .IO(gpio_sensors_tri_io[61]),
        .O(gpio_sensors_tri_i_61),
        .T(gpio_sensors_tri_t_61));
  IOBUF gpio_sensors_tri_iobuf_62
       (.I(gpio_sensors_tri_o_62),
        .IO(gpio_sensors_tri_io[62]),
        .O(gpio_sensors_tri_i_62),
        .T(gpio_sensors_tri_t_62));
  IOBUF gpio_sensors_tri_iobuf_63
       (.I(gpio_sensors_tri_o_63),
        .IO(gpio_sensors_tri_io[63]),
        .O(gpio_sensors_tri_i_63),
        .T(gpio_sensors_tri_t_63));
  IOBUF gpio_sensors_tri_iobuf_64
       (.I(gpio_sensors_tri_o_64),
        .IO(gpio_sensors_tri_io[64]),
        .O(gpio_sensors_tri_i_64),
        .T(gpio_sensors_tri_t_64));
  IOBUF gpio_sensors_tri_iobuf_65
       (.I(gpio_sensors_tri_o_65),
        .IO(gpio_sensors_tri_io[65]),
        .O(gpio_sensors_tri_i_65),
        .T(gpio_sensors_tri_t_65));
  IOBUF gpio_sensors_tri_iobuf_66
       (.I(gpio_sensors_tri_o_66),
        .IO(gpio_sensors_tri_io[66]),
        .O(gpio_sensors_tri_i_66),
        .T(gpio_sensors_tri_t_66));
  IOBUF gpio_sensors_tri_iobuf_67
       (.I(gpio_sensors_tri_o_67),
        .IO(gpio_sensors_tri_io[67]),
        .O(gpio_sensors_tri_i_67),
        .T(gpio_sensors_tri_t_67));
  IOBUF gpio_sensors_tri_iobuf_68
       (.I(gpio_sensors_tri_o_68),
        .IO(gpio_sensors_tri_io[68]),
        .O(gpio_sensors_tri_i_68),
        .T(gpio_sensors_tri_t_68));
  IOBUF gpio_sensors_tri_iobuf_69
       (.I(gpio_sensors_tri_o_69),
        .IO(gpio_sensors_tri_io[69]),
        .O(gpio_sensors_tri_i_69),
        .T(gpio_sensors_tri_t_69));
  IOBUF gpio_sensors_tri_iobuf_7
       (.I(gpio_sensors_tri_o_7),
        .IO(gpio_sensors_tri_io[7]),
        .O(gpio_sensors_tri_i_7),
        .T(gpio_sensors_tri_t_7));
  IOBUF gpio_sensors_tri_iobuf_70
       (.I(gpio_sensors_tri_o_70),
        .IO(gpio_sensors_tri_io[70]),
        .O(gpio_sensors_tri_i_70),
        .T(gpio_sensors_tri_t_70));
  IOBUF gpio_sensors_tri_iobuf_71
       (.I(gpio_sensors_tri_o_71),
        .IO(gpio_sensors_tri_io[71]),
        .O(gpio_sensors_tri_i_71),
        .T(gpio_sensors_tri_t_71));
  IOBUF gpio_sensors_tri_iobuf_72
       (.I(gpio_sensors_tri_o_72),
        .IO(gpio_sensors_tri_io[72]),
        .O(gpio_sensors_tri_i_72),
        .T(gpio_sensors_tri_t_72));
  IOBUF gpio_sensors_tri_iobuf_73
       (.I(gpio_sensors_tri_o_73),
        .IO(gpio_sensors_tri_io[73]),
        .O(gpio_sensors_tri_i_73),
        .T(gpio_sensors_tri_t_73));
  IOBUF gpio_sensors_tri_iobuf_74
       (.I(gpio_sensors_tri_o_74),
        .IO(gpio_sensors_tri_io[74]),
        .O(gpio_sensors_tri_i_74),
        .T(gpio_sensors_tri_t_74));
  IOBUF gpio_sensors_tri_iobuf_75
       (.I(gpio_sensors_tri_o_75),
        .IO(gpio_sensors_tri_io[75]),
        .O(gpio_sensors_tri_i_75),
        .T(gpio_sensors_tri_t_75));
  IOBUF gpio_sensors_tri_iobuf_76
       (.I(gpio_sensors_tri_o_76),
        .IO(gpio_sensors_tri_io[76]),
        .O(gpio_sensors_tri_i_76),
        .T(gpio_sensors_tri_t_76));
  IOBUF gpio_sensors_tri_iobuf_77
       (.I(gpio_sensors_tri_o_77),
        .IO(gpio_sensors_tri_io[77]),
        .O(gpio_sensors_tri_i_77),
        .T(gpio_sensors_tri_t_77));
  IOBUF gpio_sensors_tri_iobuf_78
       (.I(gpio_sensors_tri_o_78),
        .IO(gpio_sensors_tri_io[78]),
        .O(gpio_sensors_tri_i_78),
        .T(gpio_sensors_tri_t_78));
  IOBUF gpio_sensors_tri_iobuf_79
       (.I(gpio_sensors_tri_o_79),
        .IO(gpio_sensors_tri_io[79]),
        .O(gpio_sensors_tri_i_79),
        .T(gpio_sensors_tri_t_79));
  IOBUF gpio_sensors_tri_iobuf_8
       (.I(gpio_sensors_tri_o_8),
        .IO(gpio_sensors_tri_io[8]),
        .O(gpio_sensors_tri_i_8),
        .T(gpio_sensors_tri_t_8));
  IOBUF gpio_sensors_tri_iobuf_80
       (.I(gpio_sensors_tri_o_80),
        .IO(gpio_sensors_tri_io[80]),
        .O(gpio_sensors_tri_i_80),
        .T(gpio_sensors_tri_t_80));
  IOBUF gpio_sensors_tri_iobuf_81
       (.I(gpio_sensors_tri_o_81),
        .IO(gpio_sensors_tri_io[81]),
        .O(gpio_sensors_tri_i_81),
        .T(gpio_sensors_tri_t_81));
  IOBUF gpio_sensors_tri_iobuf_82
       (.I(gpio_sensors_tri_o_82),
        .IO(gpio_sensors_tri_io[82]),
        .O(gpio_sensors_tri_i_82),
        .T(gpio_sensors_tri_t_82));
  IOBUF gpio_sensors_tri_iobuf_83
       (.I(gpio_sensors_tri_o_83),
        .IO(gpio_sensors_tri_io[83]),
        .O(gpio_sensors_tri_i_83),
        .T(gpio_sensors_tri_t_83));
  IOBUF gpio_sensors_tri_iobuf_84
       (.I(gpio_sensors_tri_o_84),
        .IO(gpio_sensors_tri_io[84]),
        .O(gpio_sensors_tri_i_84),
        .T(gpio_sensors_tri_t_84));
  IOBUF gpio_sensors_tri_iobuf_85
       (.I(gpio_sensors_tri_o_85),
        .IO(gpio_sensors_tri_io[85]),
        .O(gpio_sensors_tri_i_85),
        .T(gpio_sensors_tri_t_85));
  IOBUF gpio_sensors_tri_iobuf_86
       (.I(gpio_sensors_tri_o_86),
        .IO(gpio_sensors_tri_io[86]),
        .O(gpio_sensors_tri_i_86),
        .T(gpio_sensors_tri_t_86));
  IOBUF gpio_sensors_tri_iobuf_87
       (.I(gpio_sensors_tri_o_87),
        .IO(gpio_sensors_tri_io[87]),
        .O(gpio_sensors_tri_i_87),
        .T(gpio_sensors_tri_t_87));
  IOBUF gpio_sensors_tri_iobuf_88
       (.I(gpio_sensors_tri_o_88),
        .IO(gpio_sensors_tri_io[88]),
        .O(gpio_sensors_tri_i_88),
        .T(gpio_sensors_tri_t_88));
  IOBUF gpio_sensors_tri_iobuf_89
       (.I(gpio_sensors_tri_o_89),
        .IO(gpio_sensors_tri_io[89]),
        .O(gpio_sensors_tri_i_89),
        .T(gpio_sensors_tri_t_89));
  IOBUF gpio_sensors_tri_iobuf_9
       (.I(gpio_sensors_tri_o_9),
        .IO(gpio_sensors_tri_io[9]),
        .O(gpio_sensors_tri_i_9),
        .T(gpio_sensors_tri_t_9));
  IOBUF gpio_sensors_tri_iobuf_90
       (.I(gpio_sensors_tri_o_90),
        .IO(gpio_sensors_tri_io[90]),
        .O(gpio_sensors_tri_i_90),
        .T(gpio_sensors_tri_t_90));
  IOBUF gpio_sensors_tri_iobuf_91
       (.I(gpio_sensors_tri_o_91),
        .IO(gpio_sensors_tri_io[91]),
        .O(gpio_sensors_tri_i_91),
        .T(gpio_sensors_tri_t_91));
  IOBUF gpio_sensors_tri_iobuf_92
       (.I(gpio_sensors_tri_o_92),
        .IO(gpio_sensors_tri_io[92]),
        .O(gpio_sensors_tri_i_92),
        .T(gpio_sensors_tri_t_92));
  IOBUF gpio_sensors_tri_iobuf_93
       (.I(gpio_sensors_tri_o_93),
        .IO(gpio_sensors_tri_io[93]),
        .O(gpio_sensors_tri_i_93),
        .T(gpio_sensors_tri_t_93));
  IOBUF gpio_sensors_tri_iobuf_94
       (.I(gpio_sensors_tri_o_94),
        .IO(gpio_sensors_tri_io[94]),
        .O(gpio_sensors_tri_i_94),
        .T(gpio_sensors_tri_t_94));
endmodule
