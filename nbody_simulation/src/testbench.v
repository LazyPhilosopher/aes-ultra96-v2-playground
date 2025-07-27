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
// Company: xilinx
// Engineer: Rajeev Patwari
// 
// Create Date: 04/18/2018 11:54:30 PM
// Design Name: 
// Module Name: testbench
// Project Name: ZZSoc Proj 2 NBody Sim
// Target Devices: XCZU3EG
// Tool Versions: 2018.1
// Description: 
//    Simulate 6 iterations of gravity accelerator. 
//    Agnostic to single or parallel gravity accelerator engines
// Dependencies: 
// 
// Revision:
// Revision 0.02 - Added comments
// Additional Comments:
//    1. All code developed by me. 
//    2. Contains bus functional models for AXI4 Lite transactions to read/write 
//       from/to RAMs for simulations
//    3. Performs several iterations of N-Body computations
// 
//////////////////////////////////////////////////////////////////////////////////


`define tCK_CLK_200 5.000
`define tCK_CLK_300 3.333
`define tCK_CLK_374 2.673
`define tCK_CLK `tCK_CLK_200 
`define VERBOSITY

module testbench(
    );
    
    reg        clk1;
    reg        clk2;
    reg        clk3;
    wire       clk;
    reg        rst;
    wire pll_locked;
    
    reg [31:0]  apb3_addr;
    wire [31:0] apb3_rdata;
    reg [31:0]  apb3_wdata;
    reg         apb3_write;
    reg         apb3_sel;
    reg         apb3_penable;
    wire        apb3_pslverr;
    wire        apb3_ready;
    
    reg [31:0]  apb3_2_addr;
    wire [31:0] apb3_2_rdata;
    reg [31:0]  apb3_2_wdata;
    reg         apb3_2_write;
    reg         apb3_2_sel;
    reg         apb3_2_penable;
    wire        apb3_2_pslverr;
    wire        apb3_2_ready;
 
    reg [31:0]  apb3_3_addr;
    wire [31:0] apb3_3_rdata;
    reg [31:0]  apb3_3_wdata;
    reg         apb3_3_write;
    reg         apb3_3_sel;
    reg         apb3_3_penable;
    wire        apb3_3_pslverr;
    wire        apb3_3_ready;
           
    wire       apb3_ready_and_clk;
    wire       apb3_2_ready_and_clk;
    wire       apb3_3_ready_and_clk;
    reg [31:0] rddata;
    
    always
            #(`tCK_CLK_200/2) clk1 <= ~clk1;
    always
            #(`tCK_CLK_300/2) clk2 <= ~clk2;
    always
            #(`tCK_CLK_374/2) clk3 <= ~clk3;
            
    assign clk = clk2;
    integer ia;                                            
    initial
    begin
        clk1 = 1'd0;
        clk2 = 1'd0;
        clk3 = 1'd0;
        
        rst = 1'd1;
        
        apb3_addr  = 32'd0;
        apb3_wdata = 32'd0;
        apb3_write = 0;
        apb3_sel = 0;
        apb3_penable = 0;
        
        apb3_2_addr  = 32'd0;
        apb3_2_wdata = 32'd0;
        apb3_2_write = 0;
        apb3_2_sel = 0;
        apb3_2_penable = 0;
        
        apb3_3_addr  = 32'd0;
        apb3_3_wdata = 32'd0;
        apb3_3_write = 0;
        apb3_3_sel = 0;
        apb3_3_penable = 0;
        
        #(`tCK_CLK*50);
        rst = 1'd0;
        
        #(`tCK_CLK*20);
        
        // task_apb3_rd   - cntrl/status 
        // task_apb3_2_rd - rxram0 0x0000 to 0x7FFF; rxram1 0x8000 to 0xFFFF
        // task_apb3_3_rd - txram0 0x0000 to 0x7FFF;
        
        task_apb3_rd(32'h0, rddata);
        task_apb3_wr(32'hc, (16'd16<<16)+16'd300); // num_of_bodies=16, softening factor=300
        task_apb3_wr(32'h8, 32'd100);    // timestep=100
        
        task_apb3_rd(32'h0, rddata);
        task_apb3_rd(32'h4, rddata);
        task_apb3_rd(32'h8, rddata);
        task_apb3_rd(32'hc, rddata);
        task_apb3_rd(32'h80, rddata);
        task_apb3_rd(32'h84, rddata);
                                                        
        // test rams
        /*task_apb3_2_wr(32'h0000, 32'h00050006); task_apb3_2_wr(32'h8000, 32'h00040007);
        task_apb3_2_wr(32'h0004, 32'h00010001); task_apb3_2_wr(32'h8004, 32'h00010001);
        task_apb3_2_wr(32'h0008, 32'h00030004); task_apb3_2_wr(32'h8008, 32'h00030004);
        task_apb3_2_wr(32'h000C, 32'h00070005); task_apb3_2_wr(32'h800C, 32'h00200003);
        task_apb3_2_wr(32'h0010, 32'h0002000c); task_apb3_2_wr(32'h8010, 32'h00080001);
        */
        // load x, y, z, m fro 16 particles
        task_apb3_2_wr(32'h0000, (16'd610<<16)+(16'd508)); task_apb3_2_wr(32'h8000, (16'd25<<16)+(16'd109)); //1
        task_apb3_2_wr(32'h0004, (16'd657<<16)+(16'd283)); task_apb3_2_wr(32'h8004, (16'd19<<16)+(16'd106)); //2
        task_apb3_2_wr(32'h0008, (16'd827<<16)+(16'd457)); task_apb3_2_wr(32'h8008, (16'd5<<16)+(16'd100));  //3
        task_apb3_2_wr(32'h000C, (16'd810<<16)+(16'd395)); task_apb3_2_wr(32'h800C, (16'd44<<16)+(16'd109)); //4
        task_apb3_2_wr(32'h0010, (16'd726<<16)+(16'd514)); task_apb3_2_wr(32'h8010, (16'd71<<16)+(16'd103)); //5
        task_apb3_2_wr(32'h0014, (16'd692<<16)+(16'd381)); task_apb3_2_wr(32'h8014, (16'd24<<16)+(16'd106)); //6
        task_apb3_2_wr(32'h0018, (16'd811<<16)+(16'd199)); task_apb3_2_wr(32'h8018, (16'd45<<16)+(16'd105)); //7
        task_apb3_2_wr(32'h001c, (16'd591<<16)+(16'd216)); task_apb3_2_wr(32'h801c, (16'd11<<16)+(16'd104)); //8
        task_apb3_2_wr(32'h0020, (16'd542<<16)+(16'd444)); task_apb3_2_wr(32'h8020, (16'd25<<16)+(16'd108)); //9
        task_apb3_2_wr(32'h0024, (16'd709<<16)+(16'd546)); task_apb3_2_wr(32'h8024, (16'd93<<16)+(16'd101)); //10
        task_apb3_2_wr(32'h0028, (16'd657<<16)+(16'd283)); task_apb3_2_wr(32'h8028, (16'd19<<16)+(16'd106)); //11
        task_apb3_2_wr(32'h002c, (16'd827<<16)+(16'd457)); task_apb3_2_wr(32'h802c, (16'd5<<16)+(16'd100));  //12
        task_apb3_2_wr(32'h0030, (16'd810<<16)+(16'd395)); task_apb3_2_wr(32'h8030, (16'd44<<16)+(16'd109)); //13
        task_apb3_2_wr(32'h0034, (16'd811<<16)+(16'd199)); task_apb3_2_wr(32'h8034, (16'd45<<16)+(16'd105)); //14
        task_apb3_2_wr(32'h0038, (16'd591<<16)+(16'd216)); task_apb3_2_wr(32'h8038, (16'd11<<16)+(16'd104)); //15
        task_apb3_2_wr(32'h003c, (16'd692<<16)+(16'd381)); task_apb3_2_wr(32'h803c, (16'd24<<16)+(16'd106)); //16
                                                        
        // sanity check        
        task_apb3_2_rd(32'h0000, rddata);task_apb3_2_rd(32'h8000, rddata);
        task_apb3_2_rd(32'h0004, rddata);task_apb3_2_rd(32'h8004, rddata);
        task_apb3_2_rd(32'h0008, rddata);task_apb3_2_rd(32'h8008, rddata);
        task_apb3_2_rd(32'h000C, rddata);task_apb3_2_rd(32'h8010, rddata);
        task_apb3_2_rd(32'h0010, rddata);task_apb3_2_rd(32'h8014, rddata);
        
        
		// perform 6 iterations of computation
        for ( ia=0; ia<6; ia=ia+1)
        begin
            $display("[INFO]: Current loop iteration: %d", ia);
            #(`tCK_CLK*1000);
            task_apb3_wr(32'h0, 32'h0000_0001);
            $display("[INFO]: Triggered iteration. main_fsm_start set");
            `ifdef PARALLEL
              wait(i_compute_engine.i_parallel_gravity_accelerator.main_fsm_done)
            `else
              wait(i_compute_engine.i_gravity_accelerator.main_fsm_done)
            `endif
            $display("[INFO]: Received main_fsm_done");
            task_apb3_rd(32'h84, rddata);
            $display("[INFO]: Status_reg0: 0x%x", rddata);
            task_apb3_wr(32'h0, 32'h0000_0000);
            $display("[INFO]: Cleared main_fsm_start");
        end                                                                     
        
        
        
        // read txrams
        task_apb3_3_rd(32'h0000, rddata); task_apb3_3_rd(32'h8000, rddata);
        task_apb3_3_rd(32'h0004, rddata); task_apb3_3_rd(32'h8004, rddata);
        task_apb3_3_rd(32'h0008, rddata); task_apb3_3_rd(32'h8008, rddata);
        task_apb3_3_rd(32'h0010, rddata); task_apb3_3_rd(32'h800c, rddata);
        task_apb3_3_rd(32'h0014, rddata); task_apb3_3_rd(32'h8014, rddata);
                                
        #(`tCK_CLK*30);
        $finish;
    end
    
    
compute_engine i_compute_engine(
            .rst(rst),
            .APB_M_paddr(apb3_addr),
            .APB_M_penable(apb3_penable),
            .APB_M_prdata(apb3_rdata),
            .APB_M_pready(apb3_ready),
            .APB_M_psel(apb3_sel),
            .APB_M_pslverr(apb3_pslverr),
            .APB_M_pwdata(apb3_wdata),
            .APB_M_pwrite(apb3_write),
            .APB_M2_paddr(apb3_2_addr),
            .APB_M2_penable(apb3_2_penable),
            .APB_M2_prdata(apb3_2_rdata),
            .APB_M2_pready(apb3_2_ready),
            .APB_M2_psel(apb3_2_sel),
            .APB_M2_pslverr(apb3_2_pslverr),
            .APB_M2_pwdata(apb3_2_wdata),
            .APB_M2_pwrite(apb3_2_write),
            .APB_M3_paddr(apb3_3_addr),
            .APB_M3_penable(apb3_3_penable),
            .APB_M3_prdata(apb3_3_rdata),
            .APB_M3_pready(apb3_3_ready),
            .APB_M3_psel(apb3_3_sel),
            .APB_M3_pslverr(apb3_3_pslverr),
            .APB_M3_pwdata(apb3_3_wdata),
            .APB_M3_pwrite(apb3_3_write),
            .pl_clk1(clk1),
            .pl_clk2_300MHz(clk2),
            .pl_clk3_374MHz(clk3),
            .pll_locked(pll_locked)
            );    
    


assign apb3_ready_and_clk    = apb3_ready && ~clk;
assign apb3_2_ready_and_clk  = apb3_2_ready && ~clk;
assign apb3_3_ready_and_clk  = apb3_3_ready && ~clk;

// -------------------------------------------------------------------------
// Task : AXI4 Lite Read Task
// Description: Performs a single read on APB3 bus
task task_apb3_rd;
    input  [31:0] addr;
    output [31:0] rddata; 
    begin
        @(negedge clk);
        apb3_addr = addr;
        @(negedge apb3_ready_and_clk);
        apb3_penable = 1;
        #(`tCK_CLK);
        apb3_penable = 1'b0;
        rddata = apb3_rdata;
        `ifdef VERBOSITY
            $display("[INFO]:%0t: Task task_apb3_rd - Read Data Addr:0x%x Data:0x%x",$time, addr, rddata);
        `endif
        #(`tCK_CLK*2);
    end
endtask

// -------------------------------------------------------------------------
// Task : APB3 Write Task
// Description: Performs a single write on APB3 bus
task task_apb3_wr;
    input  [31:0] addr;
    input [31:0] wrdata; 
    begin
        @(negedge clk);
        apb3_addr = addr;
        apb3_wdata = wrdata;
        @(negedge apb3_ready_and_clk);
        apb3_penable = 1;
        apb3_write = 1;
        apb3_sel = 1;
        #(`tCK_CLK);
        #2;
        apb3_penable = 1'b0;
        apb3_write = 0;
        apb3_sel = 0;
        `ifdef VERBOSITY
            $display("[INFO]:%0t: Task task_apb3_wr - Write Data Addr:0x%x Data:0x%x",$time, addr, wrdata);
        `endif
        #(`tCK_CLK*2);
    end
endtask

// -------------------------------------------------------------------------
// Task : AXI4 Lite Read Task
// Description: Performs a single read on APB3 bus
task task_apb3_2_rd;
    input  [31:0] addr;
    output [31:0] rddata; 
    begin
        @(negedge clk);
        apb3_2_addr = addr;
        @(negedge apb3_2_ready_and_clk);
        apb3_2_penable = 1;
        #(`tCK_CLK);
        apb3_2_penable = 1'b0;
        rddata = apb3_2_rdata;
        `ifdef VERBOSITY
            $display("[INFO]:%0t: Task task_apb3_2_rd - Read Data Addr:0x%x Data:0x%x",$time, addr, rddata);
        `endif
        #(`tCK_CLK*2);
    end
endtask

// -------------------------------------------------------------------------
// Task : APB3 Write Task
// Description: Performs a single write on APB3 bus
task task_apb3_2_wr;
    input [31:0] addr;
    input [31:0] wrdata; 
    begin
        @(negedge clk);
        apb3_2_addr = addr;
        apb3_2_wdata = wrdata;
        @(negedge apb3_2_ready_and_clk);
        apb3_2_penable = 1;
        apb3_2_write = 1;
        apb3_2_sel = 1;
        #(`tCK_CLK);
        #2;
        apb3_2_penable = 1'b0;
        apb3_2_write = 0;
        apb3_2_sel = 0;
        `ifdef VERBOSITY
            $display("[INFO]:%0t: Task task_apb3_2_wr - Write Data Addr:0x%x Data:0x%x",$time, addr, wrdata);
        `endif
        #(`tCK_CLK*2);
    end
endtask

// -------------------------------------------------------------------------
// Task : APB3 Read Task
// Description: Performs a single read on AXI4 Lite slave
task task_apb3_3_rd;
    input  [31:0] addr;
    output [31:0] rddata; 
    begin
        @(negedge clk);
        apb3_3_addr = addr;
        @(negedge apb3_3_ready_and_clk);
        apb3_3_penable = 1;
        #(`tCK_CLK);
        apb3_3_penable = 1'b0;
        rddata = apb3_3_rdata;
        `ifdef VERBOSITY
            $display("[INFO]:%0t: Task task_apb3_3_rd - Read Data Addr:0x%x Data:0x%x",$time, addr, rddata);
        `endif
        #(`tCK_CLK*2);
    end
endtask

// -------------------------------------------------------------------------
// Task : APB3 Write Task
// Description: Performs a single write on APB3 bus
task task_apb3_3_wr;
    input [31:0] addr;
    input [31:0] wrdata; 
    begin
        @(negedge clk);
        apb3_3_addr = addr;
        apb3_3_wdata = wrdata;
        @(negedge apb3_3_ready_and_clk);
        apb3_3_penable = 1;
        apb3_3_write = 1;
        apb3_3_sel = 1;
        #(`tCK_CLK);
        #2;
        apb3_3_penable = 1'b0;
        apb3_3_write = 0;
        apb3_3_sel = 0;
        `ifdef VERBOSITY
            $display("[INFO]:%0t: Task task_apb3_3_wr - Write Data Addr:0x%x Data:0x%x",$time, addr, wrdata);
        `endif
        #(`tCK_CLK*2);
    end
endtask

endmodule
