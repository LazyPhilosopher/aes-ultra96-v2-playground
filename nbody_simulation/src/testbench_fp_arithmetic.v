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
// Create Date: 04/18/2018 11:54:30 PM
// Design Name: 
// Module Name: testbench
// Project Name: ZZSoc Proj 2 NBody Sim
// Target Devices: XCZU3EG
// Tool Versions: 2018.1
// Description: 
//     Testbench to verify FP arithmetic. Useful during bring-up
// Dependencies: 
// 
// Revision:
// Revision 0.02 - Edited 
// Additional Comments:
//    All code designed by me.
//    Testbench to test standalone floating point arithmetic modules
//    Comments show expected values. the lesser the error, the better.
//    The error shown does not reflect performance of Floating Point IPI, but just example.
//////////////////////////////////////////////////////////////////////////////////


`define tCK_CLK_200 5.000
`define tCK_CLK_300 3.333
`define tCK_CLK_374 2.673
`define tCK_CLK `tCK_CLK_200 
`define VERBOSITY

module testbench_fp(
    );
    
    reg        clk1;
    reg        clk2;
    reg        clk3;
    wire       clk;
    reg        rst;
    
    reg [26:0] in0, in1;
    wire [26:0] result_add,  result_add_ipi;
    wire [26:0] result_mult, result_mult_ipi;
    wire  underflow_add, overflow_mult, underflow_mult;
    wire ipi_fpadd_valid, ipi_fpmult_valid;
    
    wire [26:0] result_inv_sqrt_add, result_inv_sqrt_constant0, result_inv_sqrt_constant1, result_inv_sqrt_in0;
    
    always
            #(`tCK_CLK_200/2) clk1 <= ~clk1;
    always
            #(`tCK_CLK_300/2) clk2 <= ~clk2;
    always
            #(`tCK_CLK_374/2) clk3 <= ~clk3;
            
    assign clk = clk2;
                                                
    initial
    begin
        clk1 <= 1'd0;
        clk2 <= 1'd0;
        clk3 <= 1'd0;
        
        rst <= 1'd1;
        in0 <= 27'd0;
        in1 <= 27'd0;
        
        #(`tCK_CLK*50);
        rst <= 1'd0;
        
        //test 1: +a, +b
        in0 <= 27'h1fe_b0a4; // (-1)^0 x 2^0 x 1.67250061  = 1.67250061
        in1 <= 27'h21f_d14c; // (-1)^0 x 2^8 x 1.954391479 = 500.3242186
        // in0+in1 - PASS ----------------------------------------------
        // expected = 501.9967192
        // received = 27'h21f_d7fc, i.e. (-1)^0 x 2^9 x 1.960922241 = 501.9960937
        // Error in in0+in1 = 501.9967192 ~ 501.9960937 = 6.25504 x 10^(-4)
        // in0*in1 - PASS ----------------------------------------------
        // expected = 836.7925608 (27'h222_8995)
        // received = 27'h222_8995, i.e. (-1)^0 x 2^9 x 1.634357452 = 836.7910156
        // Error in in0*in1 = 836.7925608 ~ 836.79210156 = 1.545206 x 10^(-3)
                        
        //test 2: +a, +b
        #(`tCK_CLK*50);
        in0 <= 27'h20e_b0a4; // (-1)^0 x 2^4 x 1.67250061 = 26.76000976
        in1 <= 27'h21f_d14c; // (-1)^0 x 2^8 x 1.954391479 = 500.3242186
        // in0+in1 - PASS
        // expected 527.0842284
        // received = 27'h220_1e2b, i.e. (-1)^0 x 2^9 x 1.029460907 = 527.0839844
        // Error in in0+in1 = 527.0842284 ~ 527.0839844 = 2.44 x 10^(-4)
        // in0*in1 - PASS ----------------------------------------------
        // expected = 13388.68097 
        // received = 27'h232_8995, i.e. (-1)^0 x 2^13 x 1.634357452 = 13388.65625
        // Error in in0*in1 = 13388.68097 ~ 13388.65625 = 2.472 x 10^(-2)
                
        //test 3: +a, -b
        #(`tCK_CLK*50);
        in0 <= 27'h20e_b0a4; // (-1)^0 x 2^4 x 1.67250061  = 26.76000976 
        in1 <= 27'h61f_d14c; // (-1)^1 x 2^8 x 1.954391479 = -500.3242186
        // in0+in1 - PASS HIGH ERROR
        // expected =  -473.5642088
        // received = 27'h61f_6641, (-1)^1 x 2^8 x 1.850833893 =  -473.8134766
        // Error in in0+in1 = -473.5642088 ~ -473.8134766 = 2.4926776 x 10^(-1)
        // in0*in1 - PASS ----------------------------------------------
        // expected = -13388.68097 
        // received = 27'h632_8995, i.e. (-1)^1 x 2^13 x 1.634357452 = -13388.65625
        // Error in in0*in1 = -13388.68097 ~ -13388.65625 = 2.472 x 10^(-2)
                                        
        //test 4: -a, +b 
        #(`tCK_CLK*50);
        in0 <= 27'h60e_b0a4; // (-1)^1 x 2^4 x 1.67250061 = -26.76000976 
        in1 <= 27'h21f_d14c; // (-1)^0 x 2^8 x 1.954391479 = 500.3242186
        // in0+in1 - PASS HIGH ERROR
        // expected = 473.5642088 
        // received = 27'h21f_6641, (-1)^0 x 2^8 x 1.850833893 =  473.8134766
        // Error in in0+in1 = 473.5642088 ~ 473.8134766 = -0.24926776
        // in0*in1 - PASS ----------------------------------------------
        // expected = -13388.68097 
        // received = 27'h632_8995, i.e. (-1)^1 x 2^13 x 1.634357452 = -13388.65625
        // Error in in0*in1 = -13388.68097 ~ -13388.65625 = 2.472 x 10^(-2)
                        
        //test 4: -a, -b 
        #(`tCK_CLK*50);
        in0 <= 27'h60e_b0a4; // (-1)^1 x 2^4 x 1.67250061 = -26.76000976  
        in1 <= 27'h61f_d14c; // (-1)^1 x 2^8 x 1.954391479 = -500.3242186
        // in0+in1 - PASS
        // expected = -527.0842284 
        // received = 27'h620_1e2b, (-1)^1 x 2^9 x 1.029460907 =  -527.0839844
        // Error in in0+in1 = -527.0842284 ~ -527.0839844 = = 2.44 x 10^(-4)
        // in0*in1 - PASS ----------------------------------------------
        // expected = 13388.68097 
        // received = 27'h232_8995, i.e. (-1)^0 x 2^13 x 1.634357452 = 13388.65625
        // Error in in0*in1 = 13388.68097 ~ 13388.65625 = 2.472 x 10^(-2)
                                        
        #(`tCK_CLK*50);
           
           
        // inv sqrt tests
        // test 1: PASS 
        // constant = 27'h1b8_0000 = (-1)e0 x 2e-17 x 1.0 = 7.629394531 x 10e-6
        // expected = 1/sqrt(7.629394531x10^(-6) ) = 362.0387795
        // received = 27'h21d_0a7cc = (-1)e0 x 2e8 x 1.413864136 = 361.9492188
        // error = 362.0387795 - 361.9492188 = 8.9560684 x 10e-2
        
        // test 2: PASS
        // constant = 27'h1d8_0000 = (-1)e0 x 2e-9 x 1.0 = 1.953125 x10e-3
        // expected = 1/sqrt(1.953125x10^(-3) ) = 22.6274717
        // received = 27'h20d_a7cc = (-1)^0 x 2e4 x 1.413864136 = 22.62182618
        // error =  22.6274717 - 22.62182618 = 5.645524 x 10e-3
        
        // test 3: PASS
        // constant = 27'h21f_6641 = (-1)^0 x 2^8 x 1.850833893 =  473.8134766
        // expected = 1/sqrt( 473.8134766 ) = 4.5940561 x 10e-2
        // received = 27'h1e9_e056 = (-1)^0 x 2e5 x 1.469078064 = 4.5908689 x 10e-2
        // error =  4.5940561 x 10e-2 - 4.5908689 x 10e-2 = 3.1872 x 10e-3
                                        
        $finish;
    end
    
/*
fp_add i_fp_add(
        .clk(clk),
        .rst(rst),
        .in0(in0),
        .in1(in1),
        .result(result_add),
        .underflow(underflow_add)
    );
*/
design_fp_add_wrapper i_fp_addsub_ipi (
            .M_AXIS_RESULT_tdata(result_add_ipi),
            .M_AXIS_RESULT_tvalid(ipi_fpadd_valid),
            .S_AXIS_A_tdata(in0),
            .S_AXIS_A_tvalid(1'b1),
            .S_AXIS_B_tdata(in1),
            .S_AXIS_B_tvalid(1'b1),
            .aclk(clk)
            );
/*            
fp_mult i_fp_mult(
        .clk(clk),
        .rst(rst),
        .in0(in0),
        .in1(in1),
        .result(result_mult),
        .underflow(underflow_mult),
        .overflow(overflow_mult)
    );  
*/
design_fp_mult_wrapper i_fp_mult_ipi (
            .M_AXIS_RESULT_tdata(result_mult_ipi),
            .M_AXIS_RESULT_tvalid(ipi_fpmult_valid),
            .S_AXIS_A_tdata(in0),
            .S_AXIS_A_tvalid(1'b1),
            .S_AXIS_B_tdata(in1),
            .S_AXIS_B_tvalid(1'b1),
            .aclk(clk)
            );
/*                
fp_invsqrt i_fp_invsqrt_add (
            .clk(clk),
            .rst(rst),
            .in_fp(result_add),
            .result(result_inv_sqrt_add)
        );            
*/
wire [31:0] fp_invsqrt_data_0, fp_invsqrt_data_1, fp_invsqrt_data_2;
wire        fp_invsqrt_valid_0, fp_invsqrt_valid_1, fp_invsqrt_valid_2;
design_fp_invsqrt_wrapper i_fp_invsqrt_add_ipi (
            .M_AXIS_RESULT_tdata(fp_invsqrt_data_0),
            .M_AXIS_RESULT_tvalid(fp_invsqrt_valid_0),
            .S_AXIS_A_tdata({result_add,5'b0}),
            .S_AXIS_A_tvalid(1'b1),
            .aclk(clk)
            );
/*    
fp_invsqrt i_fp_invsqrt_constant0 (
            .clk(clk),
            .rst(rst),
            .in_fp(27'h1b80000), // 0.5. expected 1/(square_root(0.5)) = 1.414213562
            .result(result_inv_sqrt_constant0)
        );            
*/
design_fp_invsqrt_wrapper i_fp_invsqrt_constant0_ipi (
            .M_AXIS_RESULT_tdata(fp_invsqrt_data_1),
            .M_AXIS_RESULT_tvalid(fp_invsqrt_valid_1),
            .S_AXIS_A_tdata({27'h1b80000,5'b0}),
            .S_AXIS_A_tvalid(1'b1),
            .aclk(clk)
            );
/*
fp_invsqrt i_fp_invsqrt_constant1 (
            .clk(clk),
            .rst(rst),
            .in_fp(27'h1d80000),
            .result(result_inv_sqrt_constant1)
        );            
*/
design_fp_invsqrt_wrapper i_fp_invsqrt_constant1_ipi (
            .M_AXIS_RESULT_tdata(fp_invsqrt_data_2),
            .M_AXIS_RESULT_tvalid(fp_invsqrt_valid_2),
            .S_AXIS_A_tdata({27'h1d80000,5'b0}),
            .S_AXIS_A_tvalid(1'b1),
            .aclk(clk)
            );


wire [26:0] result_fixed_to_float;
wire [15:0] result_float_to_fixed;
/*
fixed_to_float i_fixed_to_float(
        .in_fixed(result_float_to_fixed),
        .out_float(result_fixed_to_float),
        .clk(clk),
        .rst(rst)
    );
 */
 wire [26:0] result_fixed_to_float_ipi;
 wire        valid_fixed_to_float_ipi;
 
 wire [15:0] result_float_to_fixed_ipi;
 wire        valid_float_to_fixed_ipi;
 
 design_fixed_to_float_wrapper i_design_fixed_to_float_wrapper (
        .M_AXIS_RESULT_tdata(result_fixed_to_float_ipi),
        .M_AXIS_RESULT_tvalid(valid_fixed_to_float_ipi),
        .S_AXIS_A_tdata(result_float_to_fixed_ipi),
        .S_AXIS_A_tvalid(1'b1),
        .aclk(clk)
        );   
/*
 float_to_fixed i_float_to_fixed(
        .in_float(result_add),
        .out_fixed(result_float_to_fixed),
        .clk(clk),
        .rst(rst)
    );
 */   
 design_float_to_fixed_wrapper i_design_float_to_fixed_wrapper (
        .M_AXIS_RESULT_tdata(result_float_to_fixed_ipi),
        .M_AXIS_RESULT_tvalid(valid_float_to_fixed_ipi),
        .S_AXIS_A_tdata(result_add),
        .S_AXIS_A_tvalid(1'b1),
        .aclk(clk)
        );   

endmodule
