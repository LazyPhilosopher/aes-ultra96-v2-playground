vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_12
vlib riviera/zynq_ultra_ps_e_vip_v1_0_12
vlib riviera/xil_defaultlib

vmap xilinx_vip riviera/xilinx_vip
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_12 riviera/axi_vip_v1_1_12
vmap zynq_ultra_ps_e_vip_v1_0_12 riviera/zynq_ultra_ps_e_vip_v1_0_12
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xilinx_vip  -sv2k12 "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Custom_IP.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Custom_IP.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Custom_IP.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_12  -sv2k12 "+incdir+../../../../Custom_IP.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Custom_IP.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Custom_IP.gen/sources_1/bd/design_1/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_12  -sv2k12 "+incdir+../../../../Custom_IP.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Custom_IP.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Custom_IP.gen/sources_1/bd/design_1/ipshared/8cdf/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Custom_IP.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Custom_IP.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim/design_1_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
"../../../bd/design_1/ipshared/52ec/blink.v" \
"../../../bd/design_1/ip/design_1_blink_0_0/sim/design_1_blink_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

