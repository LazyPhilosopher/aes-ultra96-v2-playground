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
// Create Date: 02/26/2019 12:38:19 PM
// Design Name: 
// Module Name: parallel_gravity_accelerator
// Project Name:  ZZSoC Proj 2 Nbody sim
// Target Devices: XCZU3EG
// Tool Versions:  2018.3
// Description: 
//     Gravity accelerator custom designed from scratch.
//     Implements 8 parallel compute chains to calculate gravity eqautions 
//     for N body planetary systems
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//     All code designed, developed by me.
//     This module is Domain Specific Architecture with 8 parallel N Body accelerators
//     ahieving maximum optimization by utilizing resources of ZU3EG 
//     References:
//     1. N body problem exploration with GPU centric implementation 
//        https://developer.nvidia.com/gpugems/GPUGems3/gpugems3_ch31.html
// 	   2. Inspiration from Heterogenuos implementation paper which solves 
//        astronomical computations
//        https://academic.oup.com/pasj/article/55/6/1163/2056223      	  
//     3. FP_Add, FP_mult operate on 8 bit exponent and 19 bit mantissa (including sign)
//        This was chosen to efficiently utilize 1 DSP48 for multiplier as one 
//        multiplicand of DSP48 is only 18b wide. If FP32 is chosen, it would require
//        2 DSP48s to implement the macro. In case of FP_invsqrt, there is no customization 
//        option. Due to this, FP_invsqrt operated on FP32. Bit manipulation takes
//        care of data translation. All input and output data is stored in form
//        of int16 to plot directly to monitor.
//     
//////////////////////////////////////////////////////////////////////////////////

module parallel_gravity_accelerator(   
     input wire clk,
     input wire rst_in,
     // read from rxram 
    input wire [31:0]  doutb_rxram0, // data from rxram
    output wire [15:0]  addrb_rxram0, // bram_row_num to rxram - for reads
    output wire        enb_rxram0,
    
    input wire [31:0]  doutb_rxram1, // data from rxram
    output wire [15:0]  addrb_rxram1, // bram_row_num to rxram - for reads
    output wire        enb_rxram1,
        
    // write to txram
    output wire [31:0] dina_txram0,   // data to txram
    output wire [15:0]  addra_txram0, // bram_row_num to write to txram
    output wire        wea_txram0,   // write en - 1b per nibble
    output wire        ena_txram0,   // port enable
    
    output wire [31:0] dina_txram1,   // data to txram
    output wire [15:0]  addra_txram1, // bram_row_num to write to txram
    output wire        wea_txram1,   // write en - 1b per nibble
    output wire        ena_txram1,   // port enable
        
    //control in
    input wire [31:0]  cntrl_reg0,
    //status out
    output wire [31:0] status_reg0,
    input wire pll_locked,
    
    input wire [15:0] softening_factor,
    input wire [15:0] timestep,
    input wire [15:0] num_of_bodies
    
    );
    
    
    `include "vars.vh"
    //--- wrires for 13 brams - description at the bottom of the module (prior to the instances
    wire [15:0] addra_ram_x;
    wire [26:0] dina_ram_x;
    wire [26:0] doutb_ram_x;
    wire [15:0] addrb_ram_x;
    wire wea_ram_x;
    wire enb_ram_x;
    
    wire [15:0] addra_ram_y;
    wire [26:0] dina_ram_y;
    wire [26:0] doutb_ram_y;
    wire [15:0] addrb_ram_y;
    wire wea_ram_y;
    wire enb_ram_y;
    
    wire [15:0] addra_ram_z;
    wire [26:0] dina_ram_z;
    wire [26:0] doutb_ram_z;
    wire [15:0] addrb_ram_z;
    wire wea_ram_z;
    wire enb_ram_z;
    
    wire [15:0] addra_ram_m;
    wire [26:0] dina_ram_m;
    wire [26:0] doutb_ram_m;
    wire [15:0] addrb_ram_m;
    wire wea_ram_m;
    wire enb_ram_m;
    
    wire [15:0] addra_ram_x_new;
    wire [26:0] dina_ram_x_new;
    wire [26:0] doutb_ram_x_new;
    wire [15:0] addrb_ram_x_new;
    wire wea_ram_x_new;
    wire ena_ram_x_new;
    wire enb_ram_x_new;
    
    wire [15:0] addra_ram_y_new;
    wire [26:0] dina_ram_y_new;
    wire [26:0] doutb_ram_y_new;
    wire [15:0] addrb_ram_y_new;
    wire wea_ram_y_new;
    wire ena_ram_y_new;
    wire enb_ram_y_new;
    
    wire [15:0] addra_ram_z_new;
    wire [26:0] dina_ram_z_new;
    wire [26:0] doutb_ram_z_new;
    wire [15:0] addrb_ram_z_new;
    wire wea_ram_z_new;
    wire ena_ram_z_new;
    wire enb_ram_z_new;
    
    wire [15:0] addra_ram_vx;
    wire [26:0] dina_ram_vx;
    wire [26:0] doutb_ram_vx;
    wire [15:0] addrb_ram_vx;
    wire wea_ram_vx;
    wire ena_ram_vx;
    wire enb_ram_vx;
    
    wire [15:0] addra_ram_vy;
    wire [26:0] dina_ram_vy;
    wire [26:0] doutb_ram_vy;
    wire [15:0] addrb_ram_vy;
    wire wea_ram_vy;
    wire ena_ram_vy;
    wire enb_ram_vy;
    wire [15:0] addra_ram_vz;
    wire [26:0] dina_ram_vz;
    wire [26:0] doutb_ram_vz;
    wire [15:0] addrb_ram_vz;
    wire wea_ram_vz;
    wire ena_ram_vz;
    wire enb_ram_vz;
    
    wire [15:0] addra_ram_accx;
    wire [26:0] dina_ram_accx;
    wire [26:0] doutb_ram_accx;
    wire [15:0] addrb_ram_accx;
    wire wea_ram_accx;
    wire ena_ram_accx;
    wire enb_ram_accx;
    
    wire [15:0] addra_ram_accy;
    wire [26:0] dina_ram_accy;
    wire [26:0] doutb_ram_accy;
    wire [15:0] addrb_ram_accy;
    wire wea_ram_accy;
    wire ena_ram_accy;
    wire enb_ram_accy;
    
    wire [15:0] addra_ram_accz;
    wire [26:0] dina_ram_accz;
    wire [26:0] doutb_ram_accz;
    wire [15:0] addrb_ram_accz;
    wire wea_ram_accz;
    wire ena_ram_accz;
    wire enb_ram_accz;
    
    
    // local reset pipe - timing opt
    wire rst;
    reset_pipe rst_pipe_gravity_engine (.clk(clk), .rst_in(rst_in), .rst_out(rst));
    //assign rst = rst_in;
   
   
   // MAIN FSM states - one hot
   parameter S0  = 17'b0_0000_0000_0000_0001; //0_0001
   parameter S1  = 17'b0_0000_0000_0000_0010; //0_0002
   parameter S2  = 17'b0_0000_0000_0000_0100; //0_0004
   parameter S3  = 17'b0_0000_0000_0000_1000; //0_0008
   parameter S4  = 17'b0_0000_0000_0001_0000; //0_0010
   parameter S5  = 17'b0_0000_0000_0010_0000; //0_0020
   parameter S6  = 17'b0_0000_0000_0100_0000; //0_0040
   parameter S7  = 17'b0_0000_0000_1000_0000;
   parameter S8  = 17'b0_0000_0001_0000_0000;
   parameter S9  = 17'b0_0000_0010_0000_0000;
   parameter S10 = 17'b0_0000_0100_0000_0000;
   parameter S11 = 17'b0_0000_1000_0000_0000;
   parameter S12 = 17'b0_0001_0000_0000_0000;
   parameter S13 = 17'b0_0010_0000_0000_0000;
   parameter S14 = 17'b0_0100_0000_0000_0000;
   parameter S15 = 17'b0_1000_0000_0000_0000;
   parameter S16 = 17'b1_0000_0000_0000_0000;

   
   // internal signals generated by other logic, used by main fsm
   wire       main_fsm_start;
   assign main_fsm_start =  cntrl_reg0[0];
   reg        rxram_copy_done = 1'b0; 
   reg        gravity_engine_done;
   wire       txram_copy_done; 
   
   // internal signals generated by main fsm
   reg [16:0] current_state = S0;
   reg        main_fsm_done = 1'b0;
   reg        rxram_copy_start = 1'b0;
   reg        gravity_engine_start = 1'b0;
   reg [15:0] i_body_index = 16'b0;
   reg [15:0] j_body_index = 16'b0;
   reg        capture_new_x_in_txram = 1'b0;
   reg        index_select = 1'b0;
   reg        load_i_body = 1'b0;
   reg        load_j_body = 1'b0;
   reg        reset_acceleration = 1'b0;
   reg        copy_txram_to_rxram_start = 1'b0;
   reg        copy_txram_to_rxram_done = 1'b0;
   reg [3:0]  execute_unit_counter = 4'b0;
   reg        aggregate_acceleration = 1'b0;
   
   
   assign status_reg0 = {pll_locked, 3'd0, rxram_copy_done, 3'd0, 23'd0, main_fsm_done};   
     
  // MAIN FSM  
   always @(posedge clk)
   begin
         case (current_state)
         
            S0 : begin // idle 16'h0001
               if (main_fsm_start)
                  current_state <= S1;
               else
                  current_state <= S0;
            end
         
            // S1 : convert every ram entry of rxram (x, y, z, m) from fixed(int16) to floating point
            //      and make a cpy of 27 bit x, y, z, m in local rams. trigger copy and wait for done
            S1 : begin  //16'h0002
               if (rxram_copy_done==1'b0)
                   rxram_copy_start <= 1'b1;
               current_state <= S2;
            end
         
            // wait for the rxram copy to be done
            S2 : begin //16'h0004
               if (rxram_copy_done)
                  begin
                    rxram_copy_start <= 1'b0;
                    current_state <= S3;
                    index_select <= 1'b0;
                  end  
               else
                  current_state <= S2;
            end
         
            //load x, y, z, m of ith body from ram to local var
            S3 : begin //16'h0008
               capture_new_x_in_txram <= 1'b0;
               reset_acceleration <= 1'b1;
               if (i_body_index < num_of_bodies)
                 begin
                  current_state <= S4;
                  index_select <= 1'b1;
                 end
               else
                  current_state <= S13;
            end
            
            S4: begin //16'h0010
                   load_i_body <= 1'b1;
                   reset_acceleration <= 1'b0;
                   current_state <= S5;
            end
            
            //check for limiting condition on j
            S5 : begin //16'h0020
               load_i_body <= 1'b0;
               index_select <= 1'b0;
               if (j_body_index < num_of_bodies)
                 begin
                   execute_unit_counter <= 3'b0;
                   current_state <= S6;
                 end
               else
                  begin
                     current_state <= S12;
                  end
            end

            //load x, y, z, m of jth body from ram to local vars
            S6 : begin   //16'h0040
                load_j_body <= 1'b1;
                current_state <= S7;
            end
            
            S7 : begin //16'h0080
               if (execute_unit_counter < `EXECUTE_UNITS)
                 begin
                   j_body_index <= j_body_index + 1'b1;
                   execute_unit_counter <= execute_unit_counter + 1'b1;
                   current_state <= S8;
                 end
               else
                  begin
                     load_j_body <= 1'b0;
                     execute_unit_counter <= 3'b0;
                     current_state <= S9;
                  end
            end

            S8 : begin   //16'h0100
                current_state <= S6;
            end

            // start gravity calculations for ith body w.r.t jth body
            S9 : begin   //16'h0200
                gravity_engine_start <= 1'b1;
                current_state <= S10;
            end

            // wait for all 6 parallel engines to finish compute. then capture final acceleration
            S10 : begin //16'h0400
               if (gravity_engine_done)
                 begin
                   current_state <= S11;
                   gravity_engine_start <= 1'b0;
                   aggregate_acceleration <= 1'b1;
                 end
               else
                  current_state <= S10;
            end
            
            S11 : begin   //16'h0800
                current_state <= S5;
                aggregate_acceleration <= 1'b0;
            end

            // all j's are done! move to next i
            // capture acc, vel, new x,y,z, reset j_body_index and go to next i
            S12 : begin   //16'h1000
                aggregate_acceleration <= 1'b0;
                j_body_index <= 16'b0;
                i_body_index <= i_body_index + 1'b1;
                capture_new_x_in_txram <= 1'b1;
                index_select <= 1'b1;
                current_state <= S3;
            end
            
            // all i's are done!!!
            // convert x,y,z,m floating point to fixed point and copy to txram in int16 
            S13: begin //16'h2000
               current_state <= S14;
            end
            
            // all new i data available in txram in fp. move this to rxram 
            S14: begin //16'h4000
                current_state <= S15;
                capture_new_x_in_txram <= 1'b0;
                copy_txram_to_rxram_start <= 1'b1;
            end
            
            // wait until the txram to rxram is done
            S15 : begin  ////16'h8000
               if (copy_txram_to_rxram_done==1'b1)
                 begin
                    current_state <= S16;
                    copy_txram_to_rxram_start <= 1'b0;
                    main_fsm_done <= 1'b1;
                  end
               else
                  current_state <= S15;
            end
         
           // wait until the masin_fsm_done is acknowledged through sw and main_fsm_start is reset
            S16 : begin  ////17'h1_0000
               if (main_fsm_start ==1'b0)
                 begin
                    current_state <= S0;
                    main_fsm_done <= 1'b0;
                    i_body_index <= 16'b0;
                    j_body_index <= 16'b0;
                  end
               else
                  current_state <= S16;
            end
//--------------------
            
            // Fault Recovery
            default : begin  
                current_state <= S0;
            end
         endcase
   end
   
   // as soon as gravity accelerator starts, run the counter
   reg [31:0] gravity_counter; // on ehot bit shift to count cycles
   always@(posedge clk)
   begin
       if (rst)
         begin
           gravity_counter <= 32'b1;
           gravity_engine_done <= 1'b0;
         end
       else
         begin
             if ((gravity_engine_done == 1'b0) && (gravity_engine_start == 1'b1))
                 begin
                   if (gravity_counter == 32'd50) // wait for 50 clock cycles to get result
                     gravity_engine_done <= 32'b1;
                   else
                     gravity_counter <= gravity_counter + 32'b1;
                 end
             else if ((gravity_engine_done == 1'b1) && (gravity_engine_start == 1'b0))
                 begin
                     gravity_engine_done <= 1'b0;
                     gravity_counter <= 32'b1;
                 end
         end  
   end 						
   
   assign addrb_ram_x = (index_select) ? i_body_index : j_body_index;
   assign addrb_ram_y = (index_select) ? i_body_index : j_body_index;
   assign addrb_ram_z = (index_select) ? i_body_index : j_body_index;
   assign addrb_ram_m = (index_select) ? i_body_index : j_body_index;
   
   // rxram copy - triggered by setting rxram_copy_start in S1 of main FSM,
   reg [15:0] ram_counter = 16'd0; 
   reg [15:0] ram_counter_delayed = 16'd0;
   reg [15:0] ram_counter_delayed2 = 16'd0;
   reg [15:0] ram_counter_delayed3 = 16'd0;
   always@(posedge clk)
   begin
       {ram_counter_delayed2, ram_counter_delayed} <= {ram_counter_delayed, ram_counter};
       ram_counter_delayed3 <= ram_counter_delayed2;
       // start copying rxram - initial step - done once
       if ((rxram_copy_done == 1'b0) && (rxram_copy_start == 1'b1))
         begin
           if (ram_counter == num_of_bodies)
             begin
              rxram_copy_done <= 1'b1;
              ram_counter <= 16'd0;
             end
           else
              ram_counter <= ram_counter + 1'b1;
          end
       
       // after main fsm is done, copy all txram data into rxram for next iteration
       else if ((copy_txram_to_rxram_done == 1'b0) &&(copy_txram_to_rxram_start == 1'b1))
         begin
           if (ram_counter == num_of_bodies)
              begin
               copy_txram_to_rxram_done <= 1'b1;
               ram_counter <= 16'd0;
             end
           else
              ram_counter <= ram_counter + 1'b1;
          end
        
        //  once main fsm is done, clear flag
        else if (main_fsm_done)
          begin
            copy_txram_to_rxram_done <= 1'b0;
          end
        
    end 						
		
		
    // fixed to float - this is S1 of main FSM
    wire [26:0] wire_x_body_fp, wire_y_body_fp, wire_z_body_fp, wire_m_body_fp;
    wire        wire_x_body_fp_valid, wire_y_body_fp_valid, wire_z_body_fp_valid, wire_m_body_fp_valid; 
    design_fixed_to_float_wrapper i_fixed_to_float_x    (.M_AXIS_RESULT_tdata(wire_x_body_fp), .M_AXIS_RESULT_tvalid(wire_x_body_fp_valid), .S_AXIS_A_tdata(doutb_rxram0[31:16]), .S_AXIS_A_tvalid(1'b1), .aclk(clk));  
    design_fixed_to_float_wrapper i_fixed_to_float_y    (.M_AXIS_RESULT_tdata(wire_y_body_fp), .M_AXIS_RESULT_tvalid(wire_y_body_fp_valid), .S_AXIS_A_tdata(doutb_rxram0[15:0]),  .S_AXIS_A_tvalid(1'b1), .aclk(clk));  
    design_fixed_to_float_wrapper i_fixed_to_float_z    (.M_AXIS_RESULT_tdata(wire_z_body_fp), .M_AXIS_RESULT_tvalid(wire_z_body_fp_valid), .S_AXIS_A_tdata(doutb_rxram1[31:16]), .S_AXIS_A_tvalid(1'b1), .aclk(clk));  
    design_fixed_to_float_wrapper i_fixed_to_float_mass (.M_AXIS_RESULT_tdata(wire_m_body_fp), .M_AXIS_RESULT_tvalid(wire_m_body_fp_valid), .S_AXIS_A_tdata(doutb_rxram1[15:0]),  .S_AXIS_A_tvalid(1'b1), .aclk(clk));  
    	                                
    // fp27 rxrams from gravity engine (bottom of this module)
    assign addra_ram_x = (rxram_copy_start) ? ram_counter_delayed3: ram_counter_delayed2;
    assign dina_ram_x  = (copy_txram_to_rxram_start) ? doutb_ram_x_new : wire_x_body_fp;
    assign enb_ram_x   = (~rxram_copy_start) || (load_i_body) || (~copy_txram_to_rxram_start); 
    assign wea_ram_x   = rxram_copy_start || copy_txram_to_rxram_start; 
    
    assign addra_ram_y = (rxram_copy_start) ? ram_counter_delayed3: ram_counter_delayed2;
    assign dina_ram_y  = (copy_txram_to_rxram_start) ? doutb_ram_y_new : wire_y_body_fp; 
    assign enb_ram_y   = (~rxram_copy_start) || (load_i_body) || (~copy_txram_to_rxram_start);
    assign wea_ram_y   = rxram_copy_start || copy_txram_to_rxram_start; 
    
    assign addra_ram_z = (rxram_copy_start) ? ram_counter_delayed3: ram_counter_delayed2;
    assign dina_ram_z  = (copy_txram_to_rxram_start) ? doutb_ram_z_new : wire_z_body_fp;
    assign enb_ram_z   = (~rxram_copy_start) || (load_i_body) || (~copy_txram_to_rxram_start);
    assign wea_ram_z   = rxram_copy_start || copy_txram_to_rxram_start; 
    
    assign addra_ram_m = (rxram_copy_start) ? ram_counter_delayed3: ram_counter_delayed2;
    assign dina_ram_m  = wire_m_body_fp; 
    assign enb_ram_m   = (~rxram_copy_start) || (load_i_body);
    assign wea_ram_m   = rxram_copy_start ; 
    
    // int16 rxrams from compute engine
    assign enb_rxram0   = rxram_copy_start;
    assign addrb_rxram0 = ram_counter;
    assign enb_rxram1   = rxram_copy_start;
    assign addrb_rxram1 = ram_counter ;
        
    // save velocity nd acceleration at the end of the iteration
    wire [26:0] acc_x, acc_y, acc_z;
    wire        acc_x_valid, acc_y_valid, acc_z_valid;
    wire [26:0] vx_new_fp, vy_new_fp, vz_new_fp;
    wire        vx_new_fp_valid, vy_new_fp_valid, vz_new_fp_valid;
    assign addra_ram_accx = i_body_index;
    assign dina_ram_accx  = acc_x ; 
    assign enb_ram_accx   = ~gravity_engine_done ; // avoid write collision
    assign wea_ram_accx   = gravity_engine_done ; 
    assign addrb_ram_accx = i_body_index;
    
    assign addra_ram_accy = i_body_index;
    assign dina_ram_accy  = acc_y ; 
    assign enb_ram_accy   = ~gravity_engine_done ; // avoid write collision
    assign wea_ram_accy   = gravity_engine_done ; 
    assign addrb_ram_accy = i_body_index;
    
    assign addra_ram_accz = i_body_index;
    assign dina_ram_accz  = acc_z ; 
    assign enb_ram_accz   = ~gravity_engine_done ; // avoid write collision
    assign wea_ram_accz   = gravity_engine_done ; 
    assign addrb_ram_accz = i_body_index;
             
    assign addra_ram_vx = i_body_index;
    assign dina_ram_vx  = vx_new_fp ; 
    assign enb_ram_vx   = ~gravity_engine_done ; // avoid write collision
    assign wea_ram_vx   = gravity_engine_done ; 
    assign addrb_ram_vx = (load_j_body) ? j_body_index : i_body_index;
    
    assign addra_ram_vy = i_body_index;
    assign dina_ram_vy  = vy_new_fp ; 
    assign enb_ram_vy   = ~gravity_engine_done ; // avoid write collision
    assign wea_ram_vy   = gravity_engine_done ; 
    assign addrb_ram_vy = i_body_index;
    
    assign addra_ram_vz = i_body_index;
    assign dina_ram_vz  = vz_new_fp ; 
    assign enb_ram_vz   = ~gravity_engine_done ; // avoid write collision
    assign wea_ram_vz   = gravity_engine_done ; 
    assign addrb_ram_vz = i_body_index;

    // Capture ith body data from ram_x,ram_y,ram_z, ram_m and ram_vx, vy, vz
    reg [26:0] i_body_x_fp [0:`EXECUTE_UNITS-1];
    reg [26:0] i_body_y_fp [0:`EXECUTE_UNITS-1];
    reg [26:0] i_body_z_fp [0:`EXECUTE_UNITS-1];
    reg [26:0] i_body_vx_fp [0:`EXECUTE_UNITS-1];
    reg [26:0] i_body_vy_fp [0:`EXECUTE_UNITS-1];
    reg [26:0] i_body_vz_fp [0:`EXECUTE_UNITS-1];
    reg [26:0] i_body_mass_fp [0:`EXECUTE_UNITS-1];
    integer gi;
    integer initi;
    initial
      begin
        for(initi=0; initi<`EXECUTE_UNITS; initi=initi+1) 
          begin
            i_body_x_fp[initi] = 27'b0;
            i_body_y_fp[initi] = 27'b0;
            i_body_z_fp[initi] = 27'b0;
            i_body_vx_fp[initi] = 27'b0;
            i_body_vy_fp[initi] = 27'b0;
            i_body_vz_fp[initi] = 27'b0;
            i_body_mass_fp[initi] = 27'b0;
          end
      end
    always@(posedge clk)
    begin
         if (load_i_body==1'b1)
           begin
              for (gi = 0; gi<`EXECUTE_UNITS; gi= gi+1) begin
                 i_body_x_fp[gi]    <= doutb_ram_x;
                 i_body_y_fp[gi]    <= doutb_ram_y;
                 i_body_z_fp[gi]    <= doutb_ram_z;
                 i_body_mass_fp[gi] <= doutb_ram_m;
                 i_body_vx_fp[gi]   <= doutb_ram_vx;
                 i_body_vy_fp[gi]   <= doutb_ram_vy;
                 i_body_vz_fp[gi]   <= doutb_ram_vz;
               end
           end
    end

// Capture jth body data from ram_x,ram_y,ram_z, ram_m and ram_vx, vy, vz
    reg [10:0] j_body_curr_index [0:`EXECUTE_UNITS-1];
    reg [26:0] j_body_x_fp [0:`EXECUTE_UNITS-1];
    reg [26:0] j_body_y_fp [0:`EXECUTE_UNITS-1];
    reg [26:0] j_body_z_fp [0:`EXECUTE_UNITS-1];
    reg [26:0] j_body_vx_fp [0:`EXECUTE_UNITS-1];
    reg [26:0] j_body_vy_fp [0:`EXECUTE_UNITS-1];
    reg [26:0] j_body_vz_fp [0:`EXECUTE_UNITS-1];
    reg [26:0] j_body_mass_fp [0:`EXECUTE_UNITS-1];
    integer initj;
    initial
      begin
        for(initj=0; initj<`EXECUTE_UNITS; initj=initj+1) 
          begin
            j_body_curr_index[initj] = 16'b0;
            j_body_x_fp[initj] = 27'b0;
            j_body_y_fp[initj] = 27'b0;
            j_body_z_fp[initj] = 27'b0;
            j_body_vx_fp[initj] = 27'b0;
            j_body_vy_fp[initj] = 27'b0;
            j_body_vz_fp[initj] = 27'b0;
            j_body_mass_fp[initj] = 27'b0;
          end
      end
    always@(posedge clk)
    begin
         if (load_j_body==1'b1)
           begin
             j_body_curr_index[execute_unit_counter] <= j_body_index;
             j_body_x_fp[execute_unit_counter]    <= doutb_ram_x;
             j_body_y_fp[execute_unit_counter]    <= doutb_ram_y;
             j_body_z_fp[execute_unit_counter]    <= doutb_ram_z;
             j_body_mass_fp[execute_unit_counter] <= doutb_ram_m;
             j_body_vx_fp[execute_unit_counter]   <= doutb_ram_vx;
             j_body_vy_fp[execute_unit_counter]   <= doutb_ram_vy;
             j_body_vz_fp[execute_unit_counter]   <= doutb_ram_vz;
           end
    end

    // *******************************************************************************
    // *******************************************************************************
    // PARALLEL EXECUTE UNITS
    // all these operations must be done on `EXECUTE_UNITS in parallel
    
    // vars - step 1 
    wire [26:0] negative_i_body_x_fp [0:`EXECUTE_UNITS-1];
    wire [26:0] negative_i_body_y_fp [0:`EXECUTE_UNITS-1];
    wire [26:0] negative_i_body_z_fp [0:`EXECUTE_UNITS-1];
    wire [26:0] ij_body_rx_fp [0:`EXECUTE_UNITS-1];
    wire [26:0] ij_body_ry_fp [0:`EXECUTE_UNITS-1];
    wire [26:0] ij_body_rz_fp [0:`EXECUTE_UNITS-1];
    wire        ij_body_rx_fp_valid [0:`EXECUTE_UNITS-1];
    wire        ij_body_ry_fp_valid [0:`EXECUTE_UNITS-1];
    wire        ij_body_rz_fp_valid [0:`EXECUTE_UNITS-1];
        
    // vars - step 2
    wire [26:0] ij_body_rx2_fp [0:`EXECUTE_UNITS-1];
    wire [26:0] ij_body_ry2_fp [0:`EXECUTE_UNITS-1];
    wire [26:0] ij_body_rz2_fp [0:`EXECUTE_UNITS-1];
    wire        ij_body_rx2_fp_valid [0:`EXECUTE_UNITS-1];
    wire        ij_body_ry2_fp_valid [0:`EXECUTE_UNITS-1];
    wire        ij_body_rz2_fp_valid [0:`EXECUTE_UNITS-1];
    // step 2 -calculate softening factor data only once! - used in step 2
    wire [26:0] softening_factor_fp, softening_factor_fp2;
    wire        softening_factor_fp_valid, softening_factor_fp2_valid;
    design_fixed_to_float_wrapper j_fixed_to_float_sf    (.M_AXIS_RESULT_tdata(softening_factor_fp), .M_AXIS_RESULT_tvalid(softening_factor_fp_valid), .S_AXIS_A_tdata(softening_factor), .S_AXIS_A_tvalid(1'b1), .aclk(clk)); 
    design_fp_mult_wrapper step2_fp_mult_sf2 (.M_AXIS_RESULT_tdata(softening_factor_fp2), .M_AXIS_RESULT_tvalid(softening_factor_fp2_valid), .S_AXIS_A_tdata(softening_factor_fp), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(softening_factor_fp), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
     
    // vars - step 3
    wire [26:0] step3_fp0 [0:`EXECUTE_UNITS-1];
    wire [26:0] step3_fp1 [0:`EXECUTE_UNITS-1];
    wire        step3_fp0_valid [0:`EXECUTE_UNITS-1];
    wire        step3_fp1_valid [0:`EXECUTE_UNITS-1];
              
    // vars - step 4
    wire [26:0] step4_fp1 [0:`EXECUTE_UNITS-1];
    wire        step4_fp1_valid [0:`EXECUTE_UNITS-1];
            
    // vars - step 5
    wire [26:0] step5_fp0 [0:`EXECUTE_UNITS-1];
    wire        step5_fp0_valid [0:`EXECUTE_UNITS-1];
    
    // vars - step 6
    wire [26:0] d_cubed [0:`EXECUTE_UNITS-1];
    wire        d_cubed_valid [0:`EXECUTE_UNITS-1];
                     
    // vars - step 7
    wire [31:0] inv_sqrt_fp [0:`EXECUTE_UNITS-1];
    wire        inv_sqrt_fp_valid [0:`EXECUTE_UNITS-1];
    
    // vars - step 8
    wire [26:0] s_fp [0:`EXECUTE_UNITS-1];
    wire        s_fp_valid [0:`EXECUTE_UNITS-1];
        
    // vars - step 9
    reg [26:0]  acceleration_i_x;
    reg [26:0]  acceleration_i_y;
    reg [26:0]  acceleration_i_z;                      
    wire [26:0] acc_ij_x [0:`EXECUTE_UNITS-1];
    wire [26:0] acc_ij_y [0:`EXECUTE_UNITS-1];
    wire [26:0] acc_ij_z [0:`EXECUTE_UNITS-1];
    wire        acc_ij_x_valid [0:`EXECUTE_UNITS-1];
    wire        acc_ij_y_valid [0:`EXECUTE_UNITS-1];
    wire        acc_ij_z_valid [0:`EXECUTE_UNITS-1];
        
    // step 11 - calculate timestep fp only once - used in step 11
    wire [26:0] timestep_fp;
    wire        timestep_fp_valid;
    design_fixed_to_float_wrapper j_fixed_to_float_ts    (.M_AXIS_RESULT_tdata(timestep_fp), .M_AXIS_RESULT_tvalid(timestep_fp_valid), .S_AXIS_A_tdata(timestep), .S_AXIS_A_tvalid(1'b1), .aclk(clk)); 
            
        
	genvar gf;
	for (gf=0; gf<`EXECUTE_UNITS; gf=gf+1)
	begin	
        // as soon as gravity_engine_start is triggered, compute the equation/ this takes multiple clock cycles
        // use a counter and trigger done as needed
        // at this moment, i_body_x,y,z,m has ith data and doutb_ram_x,y,z,m has jth body data
        
        // step 1: all adds in parallel   
        assign negative_i_body_x_fp[gf] = {~i_body_x_fp[gf][26], i_body_x_fp[gf][25:0]};            
        assign negative_i_body_y_fp[gf] = {~i_body_y_fp[gf][26], i_body_y_fp[gf][25:0]};            
        assign negative_i_body_z_fp[gf] = {~i_body_z_fp[gf][26], i_body_z_fp[gf][25:0]};            
        design_fp_add_wrapper step1_rx_add (.M_AXIS_RESULT_tdata(ij_body_rx_fp[gf]), .M_AXIS_RESULT_tvalid(ij_body_rx_fp_valid[gf]), .S_AXIS_A_tdata(j_body_x_fp[gf]), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(negative_i_body_x_fp[gf]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
        design_fp_add_wrapper step1_ry_add (.M_AXIS_RESULT_tdata(ij_body_ry_fp[gf]), .M_AXIS_RESULT_tvalid(ij_body_ry_fp_valid[gf]), .S_AXIS_A_tdata(j_body_y_fp[gf]), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(negative_i_body_y_fp[gf]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
        design_fp_add_wrapper step1_rz_add (.M_AXIS_RESULT_tdata(ij_body_rz_fp[gf]), .M_AXIS_RESULT_tvalid(ij_body_rz_fp_valid[gf]), .S_AXIS_A_tdata(j_body_z_fp[gf]), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(negative_i_body_z_fp[gf]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    
        // step 2: all mults in parallel - 
        design_fp_mult_wrapper step2_fp_mult_rx2 (.M_AXIS_RESULT_tdata(ij_body_rx2_fp[gf]), .M_AXIS_RESULT_tvalid(ij_body_rx2_fp_valid[gf]), .S_AXIS_A_tdata(ij_body_rx_fp[gf]), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(ij_body_rx_fp[gf]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
        design_fp_mult_wrapper step2_fp_mult_ry2 (.M_AXIS_RESULT_tdata(ij_body_ry2_fp[gf]), .M_AXIS_RESULT_tvalid(ij_body_ry2_fp_valid[gf]), .S_AXIS_A_tdata(ij_body_ry_fp[gf]), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(ij_body_ry_fp[gf]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
        design_fp_mult_wrapper step2_fp_mult_rz2 (.M_AXIS_RESULT_tdata(ij_body_rz2_fp[gf]), .M_AXIS_RESULT_tvalid(ij_body_rz2_fp_valid[gf]), .S_AXIS_A_tdata(ij_body_rz_fp[gf]), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(ij_body_rz_fp[gf]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
        
        //step 3:
        design_fp_add_wrapper step3_add0 (.M_AXIS_RESULT_tdata(step3_fp0[gf]), .M_AXIS_RESULT_tvalid(step3_fp0_valid[gf]), .S_AXIS_A_tdata(ij_body_rx2_fp[gf]), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(ij_body_ry2_fp[gf]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
        design_fp_add_wrapper step3_add1 (.M_AXIS_RESULT_tdata(step3_fp1[gf]), .M_AXIS_RESULT_tvalid(step3_fp1_valid[gf]), .S_AXIS_A_tdata(ij_body_rz2_fp[gf]), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(softening_factor_fp2), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
        
        // step 4  
        design_fp_add_wrapper step4_add0 (.M_AXIS_RESULT_tdata(step4_fp1[gf]), .M_AXIS_RESULT_tvalid(step4_fp1_valid[gf]), .S_AXIS_A_tdata(step3_fp0[gf]), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(step3_fp1[gf]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
       
        // step 5:  
        design_fp_mult_wrapper step5_mult0 (.M_AXIS_RESULT_tdata(step5_fp0[gf]), .M_AXIS_RESULT_tvalid(step5_fp0_valid[gf]), .S_AXIS_A_tdata(step4_fp1[gf]), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(step4_fp1[gf]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
          
        // step 6:  
        design_fp_mult_wrapper step6_mult0 (.M_AXIS_RESULT_tdata(d_cubed[gf]), .M_AXIS_RESULT_tvalid(d_cubed_valid[gf]), .S_AXIS_A_tdata(step4_fp1[gf]), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(step5_fp0[gf]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
          
        // step 7:  latency 6 tck 
        // fast inverse square root is pipelined -
		// fpinvsqrt is FP32 while all other FP arithmetic are FP27
        design_fp_invsqrt_wrapper  step7_fast_inv_sqrt (.M_AXIS_RESULT_tdata(inv_sqrt_fp[gf]), .M_AXIS_RESULT_tvalid(inv_sqrt_fp_valid[gf]), .S_AXIS_A_tdata({d_cubed[gf],5'b0}), .S_AXIS_A_tvalid(1'b1), .aclk(clk)); 
         
        // step 8:  latency 
        design_fp_mult_wrapper step8_multx (.M_AXIS_RESULT_tdata(s_fp[gf]), .M_AXIS_RESULT_tvalid(s_fp_valid[gf]), .S_AXIS_A_tdata(inv_sqrt_fp[gf][31:5]), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(j_body_mass_fp[gf]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
        
        // step 9:  latency 
        // at the end of step 9, new acceleration due to 6 particles is available. 
        design_fp_mult_wrapper step9_accx (.M_AXIS_RESULT_tdata(acc_ij_x[gf]), .M_AXIS_RESULT_tvalid(acc_ij_x_valid[gf]), .S_AXIS_A_tdata(ij_body_rx_fp[gf]), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(s_fp[gf]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
        design_fp_mult_wrapper step9_accy (.M_AXIS_RESULT_tdata(acc_ij_y[gf]), .M_AXIS_RESULT_tvalid(acc_ij_y_valid[gf]), .S_AXIS_A_tdata(ij_body_ry_fp[gf]), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(s_fp[gf]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
        design_fp_mult_wrapper step9_accz (.M_AXIS_RESULT_tdata(acc_ij_z[gf]), .M_AXIS_RESULT_tvalid(acc_ij_z_valid[gf]), .S_AXIS_A_tdata(ij_body_rz_fp[gf]), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(s_fp[gf]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
       
    end
    
    // step 10 - sum all 6 accelerations into 1 value - manuall rolling
    wire [26:0] acc_x_01, acc_y_01, acc_z_01;
    wire [26:0] acc_x_23, acc_y_23, acc_z_23;
    wire [26:0] acc_x_45, acc_y_45, acc_z_45;
    wire [26:0] acc_x_67, acc_y_67, acc_z_67;
    wire        acc_x_01_valid, acc_y_01_valid, acc_z_01_valid;
    wire        acc_x_23_valid, acc_y_23_valid, acc_z_23_valid;
    wire        acc_x_45_valid, acc_y_45_valid, acc_z_45_valid;
    wire        acc_x_67_valid, acc_y_67_valid, acc_z_67_valid;
    wire [26:0] acc_x_0123, acc_y_0123, acc_z_0123;
    wire [26:0] acc_x_4567, acc_y_4567, acc_z_4567;
    wire [26:0] acc_final_x, acc_final_y, acc_final_z;
    wire        acc_x_0123_valid, acc_y_0123_valid, acc_z_0123_valid;
    wire        acc_x_4567_valid, acc_y_4567_valid, acc_z_4567_valid;
    wire        acc_final_x_valid, acc_final_y_valid, acc_final_z_valid;
    
    reg [26:0] acc_out_x [0:`EXECUTE_UNITS-1];
    reg [26:0] acc_out_y [0:`EXECUTE_UNITS-1];
    reg [26:0] acc_out_z [0:`EXECUTE_UNITS-1];
    integer acci;
    always@(*)
    begin
      for (acci=0; acci<`EXECUTE_UNITS; acci=acci+1)
      begin
        if (i_body_index == j_body_curr_index[acci])
        begin
          acc_out_x[acci] = 27'b0;
          acc_out_y[acci] = 27'b0;
          acc_out_z[acci] = 27'b0;
        end
        else
        begin
          acc_out_x[acci] = acc_ij_x[acci];
          acc_out_y[acci] = acc_ij_y[acci];
          acc_out_z[acci] = acc_ij_z[acci];
        end
      end
    end
    
    design_fp_add_wrapper step10_addx_01 (.M_AXIS_RESULT_tdata(acc_x_01), .M_AXIS_RESULT_tvalid(acc_x_01_valid), .S_AXIS_A_tdata(acc_out_x[0]), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(acc_out_x[1]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    design_fp_add_wrapper step10_addx_23 (.M_AXIS_RESULT_tdata(acc_x_23), .M_AXIS_RESULT_tvalid(acc_x_23_valid), .S_AXIS_A_tdata(acc_out_x[2]), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(acc_out_x[3]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    design_fp_add_wrapper step10_addx_45 (.M_AXIS_RESULT_tdata(acc_x_45), .M_AXIS_RESULT_tvalid(acc_x_45_valid), .S_AXIS_A_tdata(acc_out_x[4]), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(acc_out_x[5]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    design_fp_add_wrapper step10_addx_67 (.M_AXIS_RESULT_tdata(acc_x_67), .M_AXIS_RESULT_tvalid(acc_x_67_valid), .S_AXIS_A_tdata(acc_out_x[6]), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(acc_out_x[7]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    design_fp_add_wrapper step10_addx_0123 (.M_AXIS_RESULT_tdata(acc_x_0123), .M_AXIS_RESULT_tvalid(acc_x_0123_valid), .S_AXIS_A_tdata(acc_x_01), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(acc_x_23), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    design_fp_add_wrapper step10_addx_4567 (.M_AXIS_RESULT_tdata(acc_x_4567), .M_AXIS_RESULT_tvalid(acc_x_4567_valid), .S_AXIS_A_tdata(acc_x_45), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(acc_x_67), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    design_fp_add_wrapper step10_addx   (.M_AXIS_RESULT_tdata(acc_x), .M_AXIS_RESULT_tvalid(acc_x_valid), .S_AXIS_A_tdata(acc_x_0123), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(acc_x_4567), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    design_fp_add_wrapper step10_ax   (.M_AXIS_RESULT_tdata(acc_final_x), .M_AXIS_RESULT_tvalid(acc_final_x_valid), .S_AXIS_A_tdata(acc_x), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(acceleration_i_x), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    
    design_fp_add_wrapper step10_addy_01 (.M_AXIS_RESULT_tdata(acc_y_01), .M_AXIS_RESULT_tvalid(acc_y_01_valid), .S_AXIS_A_tdata(acc_out_y[0]), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(acc_out_y[1]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    design_fp_add_wrapper step10_addy_23 (.M_AXIS_RESULT_tdata(acc_y_23), .M_AXIS_RESULT_tvalid(acc_y_23_valid), .S_AXIS_A_tdata(acc_out_y[2]), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(acc_out_y[3]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    design_fp_add_wrapper step10_addy_45 (.M_AXIS_RESULT_tdata(acc_y_45), .M_AXIS_RESULT_tvalid(acc_y_45_valid), .S_AXIS_A_tdata(acc_out_y[4]), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(acc_out_y[5]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    design_fp_add_wrapper step10_addy_67 (.M_AXIS_RESULT_tdata(acc_y_67), .M_AXIS_RESULT_tvalid(acc_y_67_valid), .S_AXIS_A_tdata(acc_out_y[6]), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(acc_out_y[7]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    design_fp_add_wrapper step10_addy_0123 (.M_AXIS_RESULT_tdata(acc_y_0123), .M_AXIS_RESULT_tvalid(acc_y_0123_valid), .S_AXIS_A_tdata(acc_y_01), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(acc_y_23), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    design_fp_add_wrapper step10_addy_4567 (.M_AXIS_RESULT_tdata(acc_y_4567), .M_AXIS_RESULT_tvalid(acc_y_4567_valid), .S_AXIS_A_tdata(acc_y_45), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(acc_y_67), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    design_fp_add_wrapper step10_addy   (.M_AXIS_RESULT_tdata(acc_y), .M_AXIS_RESULT_tvalid(acc_y_valid), .S_AXIS_A_tdata(acc_y_0123), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(acc_y_4567), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    design_fp_add_wrapper step10_ay   (.M_AXIS_RESULT_tdata(acc_final_y), .M_AXIS_RESULT_tvalid(acc_final_y_valid), .S_AXIS_A_tdata(acc_y), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(acceleration_i_y), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    
    design_fp_add_wrapper step10_addz_01 (.M_AXIS_RESULT_tdata(acc_z_01), .M_AXIS_RESULT_tvalid(acc_z_01_valid), .S_AXIS_A_tdata(acc_out_z[0]), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(acc_out_z[1]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    design_fp_add_wrapper step10_addz_23 (.M_AXIS_RESULT_tdata(acc_z_23), .M_AXIS_RESULT_tvalid(acc_z_23_valid), .S_AXIS_A_tdata(acc_out_z[2]), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(acc_out_z[3]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    design_fp_add_wrapper step10_addz_45 (.M_AXIS_RESULT_tdata(acc_z_45), .M_AXIS_RESULT_tvalid(acc_z_45_valid), .S_AXIS_A_tdata(acc_out_z[4]), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(acc_out_z[5]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    design_fp_add_wrapper step10_addz_67 (.M_AXIS_RESULT_tdata(acc_z_67), .M_AXIS_RESULT_tvalid(acc_z_67_valid), .S_AXIS_A_tdata(acc_out_z[6]), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(acc_out_z[7]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    design_fp_add_wrapper step10_addz_0123 (.M_AXIS_RESULT_tdata(acc_z_0123), .M_AXIS_RESULT_tvalid(acc_z_0123_valid), .S_AXIS_A_tdata(acc_z_01), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(acc_z_23), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    design_fp_add_wrapper step10_addz_4567 (.M_AXIS_RESULT_tdata(acc_z_4567), .M_AXIS_RESULT_tvalid(acc_z_4567_valid), .S_AXIS_A_tdata(acc_z_45), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(acc_z_67), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    design_fp_add_wrapper step10_addz   (.M_AXIS_RESULT_tdata(acc_z), .M_AXIS_RESULT_tvalid(acc_z_valid), .S_AXIS_A_tdata(acc_z_0123), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(acc_z_4567), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    design_fp_add_wrapper step10_az   (.M_AXIS_RESULT_tdata(acc_final_z), .M_AXIS_RESULT_tvalid(acc_final_z_valid), .S_AXIS_A_tdata(acc_z), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(acceleration_i_z), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    
    always@(posedge clk)
    begin
       if (rst)
          begin
            acceleration_i_x <= 27'd0;
            acceleration_i_y <= 27'd0;
            acceleration_i_z <= 27'd0;
          end
       else
          begin
            if (aggregate_acceleration) 
                begin
                    acceleration_i_x    <= acc_final_x; // new acceletation_i_x is availale
                    acceleration_i_y    <= acc_final_y;
                    acceleration_i_z    <= acc_final_z;
                end
            else if (reset_acceleration)
                begin
                    acceleration_i_x    <= 27'b0; // new acceletation_i_x is availale
                    acceleration_i_y    <= 27'b0;
                    acceleration_i_z    <= 27'b0;
                end
          end
    end 
    
    // step 11 - after acceleration_x, y, z are done for each i w.r.t all j's, compute velocity and displacement
    wire [26:0] vx_times_t_fp, vy_times_t_fp, vz_times_t_fp;
    wire [26:0] acc_x_times_t_fp, acc_y_times_t_fp, acc_z_times_t_fp;
    wire        vx_times_t_fp_valid, vy_times_t_fp_valid, vz_times_t_fp_valid;
    wire        acc_x_times_t_fp_valid, acc_y_times_t_fp_valid, acc_z_times_t_fp_valid;
    design_fp_mult_wrapper step11_vtx (.M_AXIS_RESULT_tdata(vx_times_t_fp), .M_AXIS_RESULT_tvalid(vx_times_t_fp_valid), .S_AXIS_A_tdata(i_body_vx_fp[0]), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(timestep_fp), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    design_fp_mult_wrapper step11_vty (.M_AXIS_RESULT_tdata(vy_times_t_fp), .M_AXIS_RESULT_tvalid(vy_times_t_fp_valid), .S_AXIS_A_tdata(i_body_vy_fp[0]), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(timestep_fp), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    design_fp_mult_wrapper step11_vtz (.M_AXIS_RESULT_tdata(vz_times_t_fp), .M_AXIS_RESULT_tvalid(vz_times_t_fp_valid), .S_AXIS_A_tdata(i_body_vz_fp[0]), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(timestep_fp), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    
    design_fp_mult_wrapper step11_atx (.M_AXIS_RESULT_tdata(acc_x_times_t_fp), .M_AXIS_RESULT_tvalid(acc_x_times_t_fp_valid), .S_AXIS_A_tdata(acceleration_i_x), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(timestep_fp), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    design_fp_mult_wrapper step11_aty (.M_AXIS_RESULT_tdata(acc_y_times_t_fp), .M_AXIS_RESULT_tvalid(acc_y_times_t_fp_valid), .S_AXIS_A_tdata(acceleration_i_y), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(timestep_fp), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    design_fp_mult_wrapper step11_atz (.M_AXIS_RESULT_tdata(acc_z_times_t_fp), .M_AXIS_RESULT_tvalid(acc_z_times_t_fp_valid), .S_AXIS_A_tdata(acceleration_i_z), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(timestep_fp), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    
    // step 12:  latency 
    wire [26:0] x_new_fp, y_new_fp, z_new_fp;        
    wire        x_new_fp_valid, y_new_fp_valid, z_new_fp_valid;        
    design_fp_add_wrapper step12_newx  (.M_AXIS_RESULT_tdata(x_new_fp), .M_AXIS_RESULT_tvalid(x_new_fp_valid), .S_AXIS_A_tdata(vx_times_t_fp), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(i_body_x_fp[0]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    design_fp_add_wrapper step12_newy  (.M_AXIS_RESULT_tdata(y_new_fp), .M_AXIS_RESULT_tvalid(y_new_fp_valid), .S_AXIS_A_tdata(vy_times_t_fp), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(i_body_y_fp[0]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    design_fp_add_wrapper step12_newz  (.M_AXIS_RESULT_tdata(z_new_fp), .M_AXIS_RESULT_tvalid(z_new_fp_valid), .S_AXIS_A_tdata(vz_times_t_fp), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(i_body_z_fp[0]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    
    design_fp_add_wrapper step12_newvx (.M_AXIS_RESULT_tdata(vx_new_fp), .M_AXIS_RESULT_tvalid(vx_new_fp_valid), .S_AXIS_A_tdata(acc_x_times_t_fp), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(i_body_vx_fp[0]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    design_fp_add_wrapper step12_newvy (.M_AXIS_RESULT_tdata(vy_new_fp), .M_AXIS_RESULT_tvalid(vy_new_fp_valid), .S_AXIS_A_tdata(acc_y_times_t_fp), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(i_body_vy_fp[0]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    design_fp_add_wrapper step12_newvz (.M_AXIS_RESULT_tdata(vz_new_fp), .M_AXIS_RESULT_tvalid(vz_new_fp_valid), .S_AXIS_A_tdata(acc_z_times_t_fp), .S_AXIS_A_tvalid(1'b1), .S_AXIS_B_tdata(i_body_vz_fp[0]), .S_AXIS_B_tvalid(1'b1), .aclk(clk)); 
    
    // step 13: latency 
    wire [15:0] doutb_ram_x_new_int, doutb_ram_y_new_int, doutb_ram_z_new_int;
    wire        doutb_ram_x_new_int_valid, doutb_ram_y_new_int_valid, doutb_ram_z_new_int_valid;
    design_float_to_fixed_wrapper step13_new_x  (.M_AXIS_RESULT_tdata(doutb_ram_x_new_int), .M_AXIS_RESULT_tvalid(doutb_ram_x_new_int_valid), .S_AXIS_A_tdata(x_new_fp), .S_AXIS_A_tvalid(1'b1), .aclk(clk)); 
    design_float_to_fixed_wrapper step13_new_y  (.M_AXIS_RESULT_tdata(doutb_ram_y_new_int), .M_AXIS_RESULT_tvalid(doutb_ram_y_new_int_valid), .S_AXIS_A_tdata(y_new_fp), .S_AXIS_A_tvalid(1'b1), .aclk(clk)); 
    design_float_to_fixed_wrapper step13_new_z  (.M_AXIS_RESULT_tdata(doutb_ram_z_new_int), .M_AXIS_RESULT_tvalid(doutb_ram_z_new_int_valid), .S_AXIS_A_tdata(z_new_fp), .S_AXIS_A_tvalid(1'b1), .aclk(clk)); 
    
    
    reg [10:0] i_body_index_delayed;
    always@(posedge clk)
     i_body_index_delayed <= (rst) ? 16'b0 : i_body_index;
    
    // write new data into txram of compute engine (int16)     
    assign ena_txram0   = capture_new_x_in_txram;
    assign ena_txram1   = capture_new_x_in_txram;
    assign wea_txram0   = capture_new_x_in_txram;    
    assign wea_txram1   = capture_new_x_in_txram;
    assign dina_txram0  = { doutb_ram_x_new_int ,  doutb_ram_y_new_int };
    assign dina_txram1  = { doutb_ram_z_new_int ,  16'b0 };    
    assign addra_txram0 = i_body_index_delayed;
    assign addra_txram1 = i_body_index_delayed;
    
    // write new data into txrams of accelerator (fp27)
    assign addra_ram_x_new = i_body_index_delayed;
    assign dina_ram_x_new  = x_new_fp ; 
    assign enb_ram_x_new   = ~capture_new_x_in_txram ; // avoid write collision
    assign wea_ram_x_new   = capture_new_x_in_txram ; 
    assign addrb_ram_x_new = ram_counter; 
    
    assign addra_ram_y_new = i_body_index_delayed;
    assign dina_ram_y_new  = y_new_fp ; 
    assign enb_ram_y_new   = ~capture_new_x_in_txram ; // avoid write collision
    assign wea_ram_y_new   = capture_new_x_in_txram ; 
    assign addrb_ram_y_new = ram_counter; 
        
    assign addra_ram_z_new = i_body_index_delayed;
    assign dina_ram_z_new  = z_new_fp ; 
    assign enb_ram_z_new   = ~capture_new_x_in_txram ; // avoid write collision
    assign wea_ram_z_new   = capture_new_x_in_txram ; 
    assign addrb_ram_z_new = ram_counter; 
    
              
    
   
    //----------------------------------------------------------------------------
    // here are all the definitions of the rams in this module 
    // 13 in total - these cannot be accessed outside this module
    // instance names denote function
    // ram_x,     ram_y,     ram_z,     ram_m : contain current x,y,z,m fp repr of input data
    // ram_x_new, ram_y_new, ram_z_new        : contain new x,y,z,m fp repr of output data
    // ram_vx,    ram_vy,    ram_vz           : contain velocities
    // ram_accx,  ram_accy,  ram_accz         : contain accelerations
    // just fix to this - port a for write and port b for read

 //  Xilinx Simple Dual Port Single Clock RAM -  ram to store x - fp
   xilinx_simple_dual_port_1_clock_ram #(
     .RAM_WIDTH(27),                       // Specify RAM data width
     .RAM_DEPTH(`MAX_PARTICLES),                     // Specify RAM depth (number of entries)
     .RAM_PERFORMANCE("HIGH_PERFORMANCE") // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
    // .INIT_FILE("")                        // Specify name/location of RAM initialization file if using one (leave blank if not)
   ) ram_x (
     .addra(addra_ram_x),   // Write address bus, width determined from RAM_DEPTH
     .addrb(addrb_ram_x),   // Read address bus, width determined from RAM_DEPTH
     .dina(dina_ram_x),     // RAM input data, width determined from RAM_WIDTH
     .clka(clk),     // Clock
     .wea(wea_ram_x),       // Write enable
     .enb(enb_ram_x),         // Read Enable, for additional power savings, disable when not in use
     .rstb(rst),     // Output reset (does not affect memory contents)
     .regceb(1), // Output register enable
     .doutb(doutb_ram_x)    // RAM output data, width determined from RAM_WIDTH
   );   

 //  Xilinx Simple Dual Port Single Clock RAM -  ram to store y - fp
   xilinx_simple_dual_port_1_clock_ram #(
     .RAM_WIDTH(27),                       // Specify RAM data width
     .RAM_DEPTH(`MAX_PARTICLES),                     // Specify RAM depth (number of entries)
     .RAM_PERFORMANCE("HIGH_PERFORMANCE") // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
    // .INIT_FILE("")                        // Specify name/location of RAM initialization file if using one (leave blank if not)
   ) ram_y (
     .addra(addra_ram_y),   // Write address bus, width determined from RAM_DEPTH
     .addrb(addrb_ram_y),   // Read address bus, width determined from RAM_DEPTH
     .dina(dina_ram_y),     // RAM input data, width determined from RAM_WIDTH
     .clka(clk),     // Clock
     .wea(wea_ram_y),       // Write enable
     .enb(enb_ram_y),         // Read Enable, for additional power savings, disable when not in use
     .rstb(rst),     // Output reset (does not affect memory contents)
     .regceb(1), // Output register enable
     .doutb(doutb_ram_y)    // RAM output data, width determined from RAM_WIDTH
   );   
 
  //  Xilinx Simple Dual Port Single Clock RAM -  ram to store z - fp
     xilinx_simple_dual_port_1_clock_ram #(
       .RAM_WIDTH(27),                       // Specify RAM data width
       .RAM_DEPTH(`MAX_PARTICLES),                     // Specify RAM depth (number of entries)
       .RAM_PERFORMANCE("HIGH_PERFORMANCE") // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
     //  .INIT_FILE("")                        // Specify name/location of RAM initialization file if using one (leave blank if not)
     ) ram_z (
       .addra(addra_ram_z),   // Write address bus, width determined from RAM_DEPTH
       .addrb(addrb_ram_z),   // Read address bus, width determined from RAM_DEPTH
       .dina(dina_ram_z),     // RAM input data, width determined from RAM_WIDTH
       .clka(clk),     // Clock
       .wea(wea_ram_z),       // Write enable
       .enb(enb_ram_z),         // Read Enable, for additional power savings, disable when not in use
       .rstb(rst),     // Output reset (does not affect memory contents)
       .regceb(1), // Output register enable
       .doutb(doutb_ram_z)    // RAM output data, width determined from RAM_WIDTH
     );        
      
 //  Xilinx Simple Dual Port Single Clock RAM -  ram to store mass - fp
   xilinx_simple_dual_port_1_clock_ram #(
     .RAM_WIDTH(27),                       // Specify RAM data width
     .RAM_DEPTH(`MAX_PARTICLES),                     // Specify RAM depth (number of entries)
     .RAM_PERFORMANCE("HIGH_PERFORMANCE") // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
     //.INIT_FILE("")                        // Specify name/location of RAM initialization file if using one (leave blank if not)
   ) ram_m (
     .addra(addra_ram_m),   // Write address bus, width determined from RAM_DEPTH
     .addrb(addrb_ram_m),   // Read address bus, width determined from RAM_DEPTH
     .dina(dina_ram_m),     // RAM input data, width determined from RAM_WIDTH
     .clka(clk),     // Clock
     .wea(wea_ram_m),       // Write enable
     .enb(enb_ram_m),         // Read Enable, for additional power savings, disable when not in use
     .rstb(rst),     // Output reset (does not affect memory contents)
     .regceb(1), // Output register enable
     .doutb(doutb_ram_m)    // RAM output data, width determined from RAM_WIDTH
   );     
   
   

   
//  Xilinx Simple Dual Port Single Clock RAM - ram to store new x - fp
 xilinx_simple_dual_port_1_clock_ram #(
   .RAM_WIDTH(27),                       // Specify RAM data width
   .RAM_DEPTH(`MAX_PARTICLES),                     // Specify RAM depth (number of entries)
   .RAM_PERFORMANCE("HIGH_PERFORMANCE") // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
  // .INIT_FILE("")                        // Specify name/location of RAM initialization file if using one (leave blank if not)
 ) ram_x_new (
   .addra(addra_ram_x_new),   // Write address bus, width determined from RAM_DEPTH
   .addrb(addrb_ram_x_new),   // Read address bus, width determined from RAM_DEPTH
   .dina(dina_ram_x_new),     // RAM input data, width determined from RAM_WIDTH
   .clka(clk),     // Clock
   .wea(wea_ram_x_new),       // Write enable
   .enb(enb_ram_x_new),         // Read Enable, for additional power savings, disable when not in use
   .rstb(rst),     // Output reset (does not affect memory contents)
   .regceb(1), // Output register enable
   .doutb(doutb_ram_x_new)    // RAM output data, width determined from RAM_WIDTH
 );  
       
//  Xilinx Simple Dual Port Single Clock RAM - ram to store new y - fp
 xilinx_simple_dual_port_1_clock_ram #(
   .RAM_WIDTH(27),                       // Specify RAM data width
   .RAM_DEPTH(`MAX_PARTICLES),                     // Specify RAM depth (number of entries)
   .RAM_PERFORMANCE("HIGH_PERFORMANCE") // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
   //.INIT_FILE("")                        // Specify name/location of RAM initialization file if using one (leave blank if not)
 ) ram_y_new (
   .addra(addra_ram_y_new),   // Write address bus, width determined from RAM_DEPTH
   .addrb(addrb_ram_y_new),   // Read address bus, width determined from RAM_DEPTH
   .dina(dina_ram_y_new),     // RAM input data, width determined from RAM_WIDTH
   .clka(clk),     // Clock
   .wea(wea_ram_y_new),       // Write enable
   .enb(enb_ram_y_new),         // Read Enable, for additional power savings, disable when not in use
   .rstb(rst),     // Output reset (does not affect memory contents)
   .regceb(1), // Output register enable
   .doutb(doutb_ram_y_new)    // RAM output data, width determined from RAM_WIDTH
 ); 
   
//  Xilinx Simple Dual Port Single Clock RAM - z ram to store new z - fp
 xilinx_simple_dual_port_1_clock_ram #(
   .RAM_WIDTH(27),                       // Specify RAM data width
   .RAM_DEPTH(`MAX_PARTICLES),                     // Specify RAM depth (number of entries)
   .RAM_PERFORMANCE("HIGH_PERFORMANCE") // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
   //.INIT_FILE("")                        // Specify name/location of RAM initialization file if using one (leave blank if not)
 ) ram_z_new (
   .addra(addra_ram_z_new),   // Write address bus, width determined from RAM_DEPTH
   .addrb(addrb_ram_z_new),   // Read address bus, width determined from RAM_DEPTH
   .dina(dina_ram_z_new),     // RAM input data, width determined from RAM_WIDTH
   .clka(clk),     // Clock
   .wea(wea_ram_z_new),       // Write enable
   .enb(enb_ram_z_new),         // Read Enable, for additional power savings, disable when not in use
   .rstb(rst),     // Output reset (does not affect memory contents)
   .regceb(1), // Output register enable
   .doutb(doutb_ram_z_new)    // RAM output data, width determined from RAM_WIDTH
 );    
      
    //  Xilinx Simple Dual Port Single Clock RAM - vx ram to store velocity in x direction - fp
    xilinx_simple_dual_port_1_clock_ram #(
    .RAM_WIDTH(27),                       // Specify RAM data width
    .RAM_DEPTH(`MAX_PARTICLES),                     // Specify RAM depth (number of entries)
    .RAM_PERFORMANCE("HIGH_PERFORMANCE") // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
    //.INIT_FILE("")                        // Specify name/location of RAM initialization file if using one (leave blank if not)
    ) ram_vx (
    .addra(addra_ram_vx),   // Write address bus, width determined from RAM_DEPTH
    .addrb(addrb_ram_vx),   // Read address bus, width determined from RAM_DEPTH
    .dina(dina_ram_vx),     // RAM input data, width determined from RAM_WIDTH
    .clka(clk),     // Clock
    .wea(wea_ram_vx),       // Write enable
    .enb(enb_ram_vx),         // Read Enable, for additional power savings, disable when not in use
    .rstb(rst),     // Output reset (does not affect memory contents)
    .regceb(1), // Output register enable
    .doutb(doutb_ram_vx)    // RAM output data, width determined from RAM_WIDTH
    );

    //  Xilinx Simple Dual Port Single Clock RAM - vy ram to store velocity in y direction - fp
    xilinx_simple_dual_port_1_clock_ram #(
    .RAM_WIDTH(27),                       // Specify RAM data width
    .RAM_DEPTH(`MAX_PARTICLES),                     // Specify RAM depth (number of entries)
    .RAM_PERFORMANCE("HIGH_PERFORMANCE") // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
   // .INIT_FILE("")                        // Specify name/location of RAM initialization file if using one (leave blank if not)
    ) ram_vy (
    .addra(addra_ram_vy),   // Write address bus, width determined from RAM_DEPTH
    .addrb(addrb_ram_vy),   // Read address bus, width determined from RAM_DEPTH
    .dina(dina_ram_vy),     // RAM input data, width determined from RAM_WIDTH
    .clka(clk),     // Clock
    .wea(wea_ram_vy),       // Write enable
    .enb(enb_ram_vy),         // Read Enable, for additional power savings, disable when not in use
    .rstb(rst),     // Output reset (does not affect memory contents)
    .regceb(1), // Output register enable
    .doutb(doutb_ram_vy)    // RAM output data, width determined from RAM_WIDTH
    );
    
    
    //  Xilinx Simple Dual Port Single Clock RAM - vz ram to store velocity in z direction - fp
    xilinx_simple_dual_port_1_clock_ram #(
     .RAM_WIDTH(27),                       // Specify RAM data width
     .RAM_DEPTH(`MAX_PARTICLES),                     // Specify RAM depth (number of entries)
     .RAM_PERFORMANCE("HIGH_PERFORMANCE") // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
    // .INIT_FILE("")                        // Specify name/location of RAM initialization file if using one (leave blank if not)
    ) ram_vz (
     .addra(addra_ram_vz),   // Write address bus, width determined from RAM_DEPTH
     .addrb(addrb_ram_vz),   // Read address bus, width determined from RAM_DEPTH
     .dina(dina_ram_vz),     // RAM input data, width determined from RAM_WIDTH
     .clka(clk),     // Clock
     .wea(wea_ram_vz),       // Write enable
     .enb(enb_ram_vz),         // Read Enable, for additional power savings, disable when not in use
     .rstb(rst),     // Output reset (does not affect memory contents)
     .regceb(1), // Output register enable
     .doutb(doutb_ram_vz)    // RAM output data, width determined from RAM_WIDTH
    );    

//  Xilinx Simple Dual Port Single Clock RAM - accx ram to store acceleration in x direction - fp
    xilinx_simple_dual_port_1_clock_ram #(
    .RAM_WIDTH(27),                       // Specify RAM data width
    .RAM_DEPTH(`MAX_PARTICLES),                     // Specify RAM depth (number of entries)
    .RAM_PERFORMANCE("HIGH_PERFORMANCE") // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
    //.INIT_FILE("")                        // Specify name/location of RAM initialization file if using one (leave blank if not)
    ) ram_accx (
    .addra(addra_ram_accx),   // Write address bus, width determined from RAM_DEPTH
    .addrb(addrb_ram_accx),   // Read address bus, width determined from RAM_DEPTH
    .dina(dina_ram_accx),     // RAM input data, width determined from RAM_WIDTH
    .clka(clk),     // Clock
    .wea(wea_ram_accx),       // Write enable
    .enb(enb_ram_accx),         // Read Enable, for additional power savings, disable when not in use
    .rstb(rst),     // Output reset (does not affect memory contents)
    .regceb(1), // Output register enable
    .doutb(doutb_ram_accx)    // RAM output data, width determined from RAM_WIDTH
    );

//  Xilinx Simple Dual Port Single Clock RAM - accy ram to store acceleration in y direction - fp
   xilinx_simple_dual_port_1_clock_ram #(
    .RAM_WIDTH(27),                       // Specify RAM data width
    .RAM_DEPTH(`MAX_PARTICLES),                     // Specify RAM depth (number of entries)
    .RAM_PERFORMANCE("HIGH_PERFORMANCE") // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
   // .INIT_FILE("")                        // Specify name/location of RAM initialization file if using one (leave blank if not)
    ) ram_accy (
    .addra(addra_ram_accy),   // Write address bus, width determined from RAM_DEPTH
    .addrb(addrb_ram_accy),   // Read address bus, width determined from RAM_DEPTH
    .dina(dina_ram_accy),     // RAM input data, width determined from RAM_WIDTH
    .clka(clk),     // Clock
    .wea(wea_ram_accy),       // Write enable
    .enb(enb_ram_accy),         // Read Enable, for additional power savings, disable when not in use
    .rstb(rst),     // Output reset (does not affect memory contents)
    .regceb(1), // Output register enable
    .doutb(doutb_ram_accy)    // RAM output data, width determined from RAM_WIDTH
    );
    
    
 //  Xilinx Simple Dual Port Single Clock RAM - accz ram to store acceleration in z direction - fp
    xilinx_simple_dual_port_1_clock_ram #(
    .RAM_WIDTH(27),                       // Specify RAM data width
    .RAM_DEPTH(`MAX_PARTICLES),                     // Specify RAM depth (number of entries)
    .RAM_PERFORMANCE("HIGH_PERFORMANCE") // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
    //.INIT_FILE("")                        // Specify name/location of RAM initialization file if using one (leave blank if not)
    ) ram_accz (
    .addra(addra_ram_accz),   // Write address bus, width determined from RAM_DEPTH
    .addrb(addrb_ram_accz),   // Read address bus, width determined from RAM_DEPTH
    .dina(dina_ram_accx),     // RAM input data, width determined from RAM_WIDTH
    .clka(clk),     // Clock
    .wea(wea_ram_accz),       // Write enable
    .enb(enb_ram_accz),         // Read Enable, for additional power savings, disable when not in use
    .rstb(rst),     // Output reset (does not affect memory contents)
    .regceb(1), // Output register enable
    .doutb(doutb_ram_accz)    // RAM output data, width determined from RAM_WIDTH
    );        
endmodule
