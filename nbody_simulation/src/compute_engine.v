`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
//    Copyright 2019 Xilinx
// 
//    Licensed under the Apache License, Version 2.0 (the "License");
//    you may not use this file except in compliance with the License.
//    You may obtain a copy of the License at
// 
//      http://www.apache.org/licenses/LICENSE-2.0
// 
//    Unless required by applicable law or agreed to in writing, software
//    distributed under the License is distributed on an "AS IS" BASIS,
//    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//    See the License for the specific language governing permissions and
//    limitations under the License.
// 
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: Rajeev Patwari
// 
// Create Date: 04/18/2018 08:11:36 PM
// Design Name: compute engine
// Module Name: compute_engine
// Project Name: ZZSoC Proj 2
// Target Devices: XCZu3EG
// Tool Versions: 2018.3
// Description: 
//     Main compute engine. This decides whether to instantiate single gravity engine or 
//     parallel engines
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//   All code designed and developed by me
//////////////////////////////////////////////////////////////////////////////////


module compute_engine(
        rst,
        APB_M_paddr,
        APB_M_penable,
        APB_M_prdata,
        APB_M_pready,
        APB_M_psel,
        APB_M_pslverr,
        APB_M_pwdata,
        APB_M_pwrite,
        APB_M2_paddr,
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
        pll_locked,
        pl_clk1,
        pl_clk2_300MHz,
        pl_clk3_374MHz
        );
      
      input  wire [31:0]  APB_M_paddr;
      input  wire         APB_M_penable;
      output wire [31:0]  APB_M_prdata;
      output wire [0:0]   APB_M_pready;
      input  wire [0:0]   APB_M_psel;
      output wire [0:0]   APB_M_pslverr;
      input  wire [31:0]  APB_M_pwdata;
      input  wire         APB_M_pwrite;
      
      input  wire [31:0]  APB_M2_paddr;
      input  wire         APB_M2_penable;
      output wire [31:0]  APB_M2_prdata;
      output wire [0:0]   APB_M2_pready;
      input  wire [0:0]   APB_M2_psel;
      output wire [0:0]   APB_M2_pslverr;
      input  wire [31:0]  APB_M2_pwdata;
      input  wire         APB_M2_pwrite;
      
      input  wire [31:0]  APB_M3_paddr;
      input  wire         APB_M3_penable;
      output wire [31:0]  APB_M3_prdata;
      output wire [0:0]   APB_M3_pready;
      input  wire [0:0]   APB_M3_psel;
      output wire [0:0]   APB_M3_pslverr;
      input  wire [31:0]  APB_M3_pwdata;
      input  wire         APB_M3_pwrite;
                  
      input wire pl_clk1;
      input wire pll_locked;
      input wire pl_clk2_300MHz;
      input wire pl_clk3_374MHz;
      input wire rst;
      
      wire [31:0] reg0;
      wire [31:0] reg1;
      wire [31:0] reg2;
      wire [31:0] reg3;
      wire [31:0] outreg0;
      wire [31:0] outreg1;
      wire [31:0] outreg2;
      wire [31:0] outreg3;
      wire [31:0] outreg4;
      wire [31:0] outreg5;
      wire [31:0] outreg6;
      wire [31:0] outreg7;
      
      wire clk;
                   
      //assign clk = pl_clk1_25MHz;       
      assign clk = pl_clk1;   
      
      
      assign outreg0 = 32'hab0de;
      assign outreg2 = reg0;//{16'b0, out_fixed_invsqrt};
      assign outreg3 = 32'hffff_ffff;
      assign outreg4 = 32'hffff_ffff;
      assign outreg5 = 32'hffff_ffff;
      assign outreg6 = 32'hffff_ffff;
      assign outreg7 = 32'hffff_ffff;
      
`include "vars.vh"
      
apb3_regbank   i_apb3_regbank   (
             .clk(clk),
             .rst_in(rst),
             .APB_M_paddr(APB_M_paddr),
             .APB_M_penable(APB_M_penable),
             .APB_M_psel(APB_M_psel),
             .APB_M_pwdata(APB_M_pwdata),
             .APB_M_pwrite(APB_M_pwrite),
             .APB_M_pready(APB_M_pready),
             .APB_M_prdata(APB_M_prdata),
             .APB_M_pslverr(APB_M_pslverr),
             .reg0(reg0),
             .reg1(reg1),
             .reg2(reg2),
             .reg3(reg3),
             .outreg0(outreg0), 
             .outreg1(outreg1),
             .outreg2(outreg2),
             .outreg3(outreg3),
             .outreg4(outreg4),
             .outreg5(outreg5),
             .outreg6(outreg6),
             .outreg7(outreg7)   
);
          

wire [15:0]  addra_rxram0;
wire [31:0] dina_rxram0;
wire [31:0] douta_rxram0;
wire        wea_rxram0;
wire        ena_rxram0;
wire [15:0]  addrb_rxram0;
wire [31:0] dinb_rxram0;
wire [31:0] doutb_rxram0;
wire        web_rxram0;
wire        enb_rxram0;

wire [15:0]  addra_rxram1;
wire [31:0] dina_rxram1;
wire [31:0] douta_rxram1;
wire        wea_rxram1;
wire        ena_rxram1;
wire [15:0]  addrb_rxram1;
wire [31:0] dinb_rxram1;
wire [31:0] doutb_rxram1;
wire        web_rxram1;
wire        enb_rxram1;

wire [15:0]  addra_txram0;
wire [31:0] dina_txram0;
wire [31:0] douta_txram0;
wire        wea_txram0;
wire        ena_txram0;
wire [15:0]  addrb_txram0;
wire [31:0] dinb_txram0;
wire [31:0] doutb_txram0;
wire        web_txram0;
wire        enb_txram0;

wire [15:0]  addra_txram1;
wire [31:0] dina_txram1;
wire [31:0] douta_txram1;
wire        wea_txram1;
wire        ena_txram1;
wire [15:0]  addrb_txram1;
wire [31:0] dinb_txram1;
wire [31:0] doutb_txram1;
wire        web_txram1;
wire        enb_txram1;

// just fix to this - port a for write and port b for read
xilinx_true_dual_port_write_first_2_clock_ram #( .RAM_DEPTH(`MAX_PARTICLES )) i_rxram_0 (
                    .addra(addra_rxram0),   // Port A address bus, width determined from RAM_DEPTH
                    .addrb(addrb_rxram0),   // Port B address bus, width determined from RAM_DEPTH
                    .dina(dina_rxram0),     // Port A RAM input data, width determined from RAM_WIDTH
                    .dinb(dinb_rxram0),     // Port B RAM input data, width determined from RAM_WIDTH
                    .clka(clk),     // Port A clock
                    .clkb(clk),     // Port B clock
                    .wea(wea_rxram0),       // Port A write enable
                    .web(web_rxram0),       // Port B write enable
                    .ena(ena_rxram0),       // Port A RAM Enable, for additional power savings, disable port when not in use
                    .enb(enb_rxram0),       // Port B RAM Enable, for additional power savings, disable port when not in use
                    .rsta(rst),     // Port A output reset (does not affect memory contents)
                    .rstb(rst),     // Port B output reset (does not affect memory contents)
                    .regcea(1'b1), // Port A output register enable
                    .regceb(1'b1), // Port B output register enable
                    .douta(douta_rxram0),   // Port A RAM output data, width determined from RAM_WIDTH
                    .doutb(doutb_rxram0)    // Port B RAM output data, width determined from RAM_WIDTH
        );
assign web_rxram0 = 1'b0; 

xilinx_true_dual_port_write_first_2_clock_ram #( .RAM_DEPTH(`MAX_PARTICLES )) i_rxram_1 (
                    .addra(addra_rxram1),   // Port A address bus, width determined from RAM_DEPTH
                    .addrb(addrb_rxram1),   // Port B address bus, width determined from RAM_DEPTH
                    .dina(dina_rxram1),     // Port A RAM input data, width determined from RAM_WIDTH
                    .dinb(dinb_rxram1),     // Port B RAM input data, width determined from RAM_WIDTH
                    .clka(clk),     // Port A clock
                    .clkb(clk),     // Port B clock
                    .wea(wea_rxram1),       // Port A write enable
                    .web(web_rxram1),       // Port B write enable
                    .ena(ena_rxram1),       // Port A RAM Enable, for additional power savings, disable port when not in use
                    .enb(enb_rxram1),       // Port B RAM Enable, for additional power savings, disable port when not in use
                    .rsta(rst),     // Port A output reset (does not affect memory contents)
                    .rstb(rst),     // Port B output reset (does not affect memory contents)
                    .regcea(1'b1), // Port A output register enable
                    .regceb(1'b1), // Port B output register enable
                    .douta(douta_rxram1),   // Port A RAM output data, width determined from RAM_WIDTH
                    .doutb(doutb_rxram1)    // Port B RAM output data, width determined from RAM_WIDTH
        );
assign web_rxram1 = 1'b0; 

xilinx_true_dual_port_write_first_2_clock_ram #( .RAM_DEPTH(`MAX_PARTICLES )) i_txram_0 (
                    .addra(addra_txram0),   // Port A address bus, width determined from RAM_DEPTH
                    .addrb(addrb_txram0),   // Port B address bus, width determined from RAM_DEPTH
                    .dina(dina_txram0),     // Port A RAM input data, width determined from RAM_WIDTH
                    .dinb(dinb_txram0),     // Port B RAM input data, width determined from RAM_WIDTH
                    .clka(clk),     // Port A clock
                    .clkb(clk),     // Port B clock
                    .wea(wea_txram0),       // Port A write enable
                    .web(web_txram0),       // Port B write enable
                    .ena(ena_txram0),       // Port A RAM Enable, for additional power savings, disable port when not in use
                    .enb(enb_txram0),       // Port B RAM Enable, for additional power savings, disable port when not in use
                    .rsta(rst),     // Port A output reset (does not affect memory contents)
                    .rstb(rst),     // Port B output reset (does not affect memory contents)
                    .regcea(1'b1), // Port A output register enable
                    .regceb(1'b1), // Port B output register enable
                    .douta(douta_txram0),   // Port A RAM output data, width determined from RAM_WIDTH
                    .doutb(doutb_txram0)    // Port B RAM output data, width determined from RAM_WIDTH
        );
        
assign web_txram0 = 1'b0; 

xilinx_true_dual_port_write_first_2_clock_ram #( .RAM_DEPTH(`MAX_PARTICLES )) i_txram_1 (
                    .addra(addra_txram1),   // Port A address bus, width determined from RAM_DEPTH
                    .addrb(addrb_txram1),   // Port B address bus, width determined from RAM_DEPTH
                    .dina(dina_txram1),     // Port A RAM input data, width determined from RAM_WIDTH
                    .dinb(dinb_txram1),     // Port B RAM input data, width determined from RAM_WIDTH
                    .clka(clk),     // Port A clock
                    .clkb(clk),     // Port B clock
                    .wea(wea_txram1),       // Port A write enable
                    .web(web_txram1),       // Port B write enable
                    .ena(ena_txram1),       // Port A RAM Enable, for additional power savings, disable port when not in use
                    .enb(enb_txram1),       // Port B RAM Enable, for additional power savings, disable port when not in use
                    .rsta(rst),     // Port A output reset (does not affect memory contents)
                    .rstb(rst),     // Port B output reset (does not affect memory contents)
                    .regcea(1'b1), // Port A output register enable
                    .regceb(1'b1), // Port B output register enable
                    .douta(douta_txram1),   // Port A RAM output data, width determined from RAM_WIDTH
                    .doutb(doutb_txram1)    // Port B RAM output data, width determined from RAM_WIDTH
        );
        
assign web_txram1 = 1'b0; 

apb3_bram_cntrl i_apb3_bram_cntrl(
                 .clk(clk),
                 .rst_in(rst),
                 .APB_M_paddr(APB_M2_paddr),
                 .APB_M_penable(APB_M2_penable),
                 .APB_M_psel(APB_M2_psel),
                 .APB_M_pwdata(APB_M2_pwdata),
                 .APB_M_pwrite(APB_M2_pwrite),
                 .APB_M_pready(APB_M2_pready),
                 .APB_M_prdata(APB_M2_prdata),
                 .APB_M_pslverr(APB_M2_pslverr),
                 
                 .APB_M2_paddr(APB_M3_paddr),
                 .APB_M2_penable(APB_M3_penable),
                 .APB_M2_psel(APB_M3_psel),
                 .APB_M2_pwdata(APB_M3_pwdata),
                 .APB_M2_pwrite(APB_M3_pwrite),
                 .APB_M2_pready(APB_M3_pready),
                 .APB_M2_prdata(APB_M3_prdata),
                 .APB_M2_pslverr(APB_M3_pslverr),
                 
                 // rx ram - write to this ram through sw 
                 // the following signals are generated from apb3 bram controller to write to rxram
                 .addra_rxram0(addra_rxram0),  
                 .dina_rxram0(dina_rxram0), 
                 .wea_rxram0(wea_rxram0), 
                 .ena_rxram0(ena_rxram0),
                 .douta_rxram0(douta_rxram0),  
                 
                 .addra_rxram1(addra_rxram1),  
                 .dina_rxram1(dina_rxram1), 
                 .wea_rxram1(wea_rxram1), 
                 .ena_rxram1(ena_rxram1),
                 .douta_rxram1(douta_rxram1),  
                 
                 // tx bram - read from this ram through sw
                 // the following signals are generated from apb3 bram controller to read from txram
                 .addrb_txram0(addrb_txram0),  
                 .enb_txram0(enb_txram0),
                 .doutb_txram0(doutb_txram0),
                 
                 .addrb_txram1(addrb_txram1),  
                 .enb_txram1(enb_txram1),
                 .doutb_txram1(doutb_txram1)  
                  
);

wire [15:0] timestep;
wire [15:0] softening_factor;
wire [15:0] num_of_bodies;

assign timestep = reg2[15:0];
assign softening_factor = reg3[15:0];
assign num_of_bodies = reg3[31:16];


`ifdef PARALLEL
        parallel_gravity_accelerator i_parallel_gravity_accelerator(
                     .clk(clk),
                     .rst_in(rst),
                     
                     // read from rxram 
                     .addrb_rxram0(addrb_rxram0),  
                     .enb_rxram0(enb_rxram0),
                     .doutb_rxram0(doutb_rxram0),  
                     
                     .addrb_rxram1(addrb_rxram1),  
                     .enb_rxram1(enb_rxram1),
                     .doutb_rxram1(doutb_rxram1),  
                     
                     // write to txram
                     .addra_txram0(addra_txram0),  
                     .dina_txram0(dina_txram0), 
                     .wea_txram0(wea_txram0), 
                     .ena_txram0(ena_txram0),
                     
                     .addra_txram1(addra_txram1),  
                     .dina_txram1(dina_txram1), 
                     .wea_txram1(wea_txram1), 
                     .ena_txram1(ena_txram1),
                     
                     //control in
                     .pll_locked(pll_locked),
                     .cntrl_reg0(reg0),
                     //status out
                     .status_reg0(outreg1),
                     .timestep(timestep),
                     .softening_factor(softening_factor),
                     .num_of_bodies(num_of_bodies)
                    );

`else
        gravity_accelerator i_gravity_accelerator(
                     .clk(clk),
                     .rst_in(rst),
                     
                     // read from rxram 
                     .addrb_rxram0(addrb_rxram0),  
                     .enb_rxram0(enb_rxram0),
                     .doutb_rxram0(doutb_rxram0),  
                     
                     .addrb_rxram1(addrb_rxram1),  
                     .enb_rxram1(enb_rxram1),
                     .doutb_rxram1(doutb_rxram1),  
                     
                     // write to txram
                     .addra_txram0(addra_txram0),  
                     .dina_txram0(dina_txram0), 
                     .wea_txram0(wea_txram0), 
                     .ena_txram0(ena_txram0),
                     
                     .addra_txram1(addra_txram1),  
                     .dina_txram1(dina_txram1), 
                     .wea_txram1(wea_txram1), 
                     .ena_txram1(ena_txram1),
                     
                     //control in
                     .pll_locked(pll_locked),
                     .cntrl_reg0(reg0),
                     //status out
                     .status_reg0(outreg1),
                     .timestep(timestep),
                     .softening_factor(softening_factor),
                     .num_of_bodies(num_of_bodies)
                    );
 `endif                   
    
endmodule
