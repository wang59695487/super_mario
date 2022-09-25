# (c) Copyright 2009 - 2010 Xilinx, Inc. All rights reserved.
# 
# This file contains confidential and proprietary information
# of Xilinx, Inc. and is protected under U.S. and
# international copyright and other intellectual property
# laws.
# 
# DISCLAIMER
# This disclaimer is not a license and does not grant any
# rights to the materials distributed herewith. Except as
# otherwise provided in a valid license issued to you by
# Xilinx, and to the maximum extent permitted by applicable
# law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
# WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
# AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
# BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
# INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
# (2) Xilinx shall not be liable (whether in contract or tort,
# including negligence, or under any other theory of
# liability) for any loss or damage of any kind or nature
# related to, arising under or in connection with these
# materials, including for any direct, or any indirect,
# special, incidental, or consequential loss or damage
# (including loss of data, profits, goodwill, or any type of
# loss or damage suffered as a result of any action brought
# by a third party) even if such damage or loss was
# reasonably foreseeable or Xilinx had been advised of the
# possibility of the same.
# 
# CRITICAL APPLICATIONS
# Xilinx products are not designed or intended to be fail-
# safe, or for use in any application requiring fail-safe
# performance, such as life-support or safety devices or
# systems, Class III medical devices, nuclear facilities,
# applications related to the deployment of airbags, or any
# other applications that could lead to death, personal
# injury, or severe property or environmental damage
# (individually and collectively, "Critical
# Applications"). Customer assumes the sole risk and
# liability of any use of Xilinx products in Critical
# Applications, subject only to applicable laws and
# regulations governing limitations on product liability.
# 
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
# PART OF THIS FILE AT ALL TIMES.
#--------------------------------------------------------------------------------
cp ../../../KONG_DROP_img.mif .
 vlib work 
vmap work work

echo "Compiling Core Verilog UNISIM/Behavioral model"
vlog -work work ../../../KONG_DROP_img.v 
vcom -work work ../../example_design/KONG_DROP_img_exdes.vhd

echo "Compiling Test Bench Files"

vcom -work work    ../KONG_DROP_img_tb_pkg.vhd
vcom -work work    ../KONG_DROP_img_tb_agen.vhd
vcom -work work    ../KONG_DROP_img_tb_stim_gen.vhd
vcom -work work    ../KONG_DROP_img_tb_synth.vhd 
vcom -work work    ../KONG_DROP_img_tb.vhd


vlog -work work $env(XILINX)/verilog/src/glbl.v
vsim  -novopt -t ps -L XilinxCoreLib_ver -L unisims_ver glbl work.KONG_DROP_img_tb

#Disabled waveform to save the disk space
add log -r /*
#Ignore integer warnings at time 0
set StdArithNoWarnings 1
run 0
set StdArithNoWarnings 0

run -all
