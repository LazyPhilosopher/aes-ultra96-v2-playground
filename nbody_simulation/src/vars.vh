//////////////////////////////////////////////////////////////////////////////////
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
// Create Date: 02/25/2019 08:30:50 PM
// Design Name: 
// Module Name: 
// Project Name: ZZSoC Proj 2 Nbody sim
// Target Devices: XCZU3EG
// Tool Versions: 2018.3
// Description: 
//
// Dependencies: 
// 
// Revision:
// Revision 0.02 - Added comments
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`define EXECUTE_UNITS 8
// do not modify execute units as hardware is fixed for either 8 parallel accelerators or one single accelerators

`define MAX_PARTICLES 4000

`define PARALLEL
// comment this `define if a single accelerator is preferred
