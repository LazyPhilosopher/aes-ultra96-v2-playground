##########################################################################
#
#    Copyright 2019 Xilinx 
# 
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
# 
#      http://www.apache.org/licenses/LICENSE-2.0
# 
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.
# 
##########################################################################

set_property IOSTANDARD LVCMOS18 [get_ports uart*]
set_property IOSTANDARD LVCMOS18 [get_ports gpio_sensors_tri_io*]
#set_property IOSTANDARD LVCMOS18 [get_ports loopback_out*]

#HD_GPIO_2 on FPGA / Connector pin 7 / UART0_rxd
set_property PACKAGE_PIN F7 [get_ports uart0_rxd]
#HD_GPIO_1 on FPGA / Connector pin 5 / UART0_txd
set_property PACKAGE_PIN F8 [get_ports uart0_txd]
#HD_GPIO_3 on FPGA / Connector pin 9 / UART0_rts
set_property PACKAGE_PIN G7 [get_ports uart0_rtsn]
#HD_GPIO_0 on FPGA / Connector pin 3 / UART0_cts
set_property PACKAGE_PIN D7 [get_ports uart0_ctsn]

#HD_GPIO_5 on FPGA / Connector pin 13 / UART1_rxd
set_property PACKAGE_PIN G5 [get_ports uart1_rxd]
#HD_GPIO_4 on FPGA / Connector pin 11 / UART1_txd
set_property PACKAGE_PIN F6 [get_ports uart1_txd]


#HD_GPIO_6 on FPGA / Connector pin 29 / GPIO-G on 96Boards 
set_property PACKAGE_PIN A6 [get_ports {gpio_sensors_tri_io[0]}] 
#HD_GPIO_13 on FPGA/ Connector pin 30 / GPIO-H on 96Boards                                                             
set_property PACKAGE_PIN C7 [get_ports {gpio_sensors_tri_io[1]}] 
#HD_GPIO_7 on FPGA / Connector pin 31 / GPIO-I on 96Boards
set_property PACKAGE_PIN A7 [get_ports {gpio_sensors_tri_io[2]}]
#HD_GPIO_14 on FPGA/ Connector pin 32 / GPIO-J on 96Boards 
set_property PACKAGE_PIN B6 [get_ports {gpio_sensors_tri_io[3]}]
#HD_GPIO_8 on FPGA / Connector pin 33 / GPIO-K on 96Boards 
set_property PACKAGE_PIN G6 [get_ports {gpio_sensors_tri_io[4]}] 
#HD_GPIO_15 on FPGA/ Connector pin 34 / GPIO-L on 96Boards                                                             
set_property PACKAGE_PIN C5 [get_ports {gpio_sensors_tri_io[5]}] 


set_property IOSTANDARD LVCMOS18 [get_ports bt*]

#BT_HCI_RTS on FPGA /  emio_uart0_ctsn connect to 
set_property PACKAGE_PIN B7 [get_ports bt_ctsn]
#BT_HCI_CTS on FPGA / emio_uart0_rtsn
set_property PACKAGE_PIN B5 [get_ports bt_rtsn]

