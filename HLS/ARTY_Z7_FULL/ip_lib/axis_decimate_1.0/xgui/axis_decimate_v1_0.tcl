# The 3-Clause BSD License
# 
# SPDX short identifier: BSD-3-Clause
# 
# Copyright 2016-2017 Trenz Electronic GmbH
# 
# Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
# 
# 1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
# 
# 2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
# 
# 3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_CHANNELS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_USE_FIXED" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_FIXED_VAL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_DEC_TYPE" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_DATA_TYPE" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_REG_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_CHANNELS { PARAM_VALUE.C_CHANNELS } {
	# Procedure called to update C_CHANNELS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CHANNELS { PARAM_VALUE.C_CHANNELS } {
	# Procedure called to validate C_CHANNELS
	return true
}

proc update_PARAM_VALUE.C_DATA_TYPE { PARAM_VALUE.C_DATA_TYPE } {
	# Procedure called to update C_DATA_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DATA_TYPE { PARAM_VALUE.C_DATA_TYPE } {
	# Procedure called to validate C_DATA_TYPE
	return true
}

proc update_PARAM_VALUE.C_DEC_TYPE { PARAM_VALUE.C_DEC_TYPE } {
	# Procedure called to update C_DEC_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DEC_TYPE { PARAM_VALUE.C_DEC_TYPE } {
	# Procedure called to validate C_DEC_TYPE
	return true
}

proc update_PARAM_VALUE.C_FIXED_VAL { PARAM_VALUE.C_FIXED_VAL } {
	# Procedure called to update C_FIXED_VAL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_FIXED_VAL { PARAM_VALUE.C_FIXED_VAL } {
	# Procedure called to validate C_FIXED_VAL
	return true
}

proc update_PARAM_VALUE.C_REG_WIDTH { PARAM_VALUE.C_REG_WIDTH } {
	# Procedure called to update C_REG_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_REG_WIDTH { PARAM_VALUE.C_REG_WIDTH } {
	# Procedure called to validate C_REG_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TDATA_WIDTH { PARAM_VALUE.C_TDATA_WIDTH } {
	# Procedure called to update C_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TDATA_WIDTH { PARAM_VALUE.C_TDATA_WIDTH } {
	# Procedure called to validate C_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TUSER_WIDTH { PARAM_VALUE.C_TUSER_WIDTH } {
	# Procedure called to update C_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TUSER_WIDTH { PARAM_VALUE.C_TUSER_WIDTH } {
	# Procedure called to validate C_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_USE_FIXED { PARAM_VALUE.C_USE_FIXED } {
	# Procedure called to update C_USE_FIXED when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_USE_FIXED { PARAM_VALUE.C_USE_FIXED } {
	# Procedure called to validate C_USE_FIXED
	return true
}


proc update_MODELPARAM_VALUE.C_TDATA_WIDTH { MODELPARAM_VALUE.C_TDATA_WIDTH PARAM_VALUE.C_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_REG_WIDTH { MODELPARAM_VALUE.C_REG_WIDTH PARAM_VALUE.C_REG_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_REG_WIDTH}] ${MODELPARAM_VALUE.C_REG_WIDTH}
}

proc update_MODELPARAM_VALUE.C_TUSER_WIDTH { MODELPARAM_VALUE.C_TUSER_WIDTH PARAM_VALUE.C_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_USE_FIXED { MODELPARAM_VALUE.C_USE_FIXED PARAM_VALUE.C_USE_FIXED } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_USE_FIXED}] ${MODELPARAM_VALUE.C_USE_FIXED}
}

proc update_MODELPARAM_VALUE.C_FIXED_VAL { MODELPARAM_VALUE.C_FIXED_VAL PARAM_VALUE.C_FIXED_VAL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_FIXED_VAL}] ${MODELPARAM_VALUE.C_FIXED_VAL}
}

proc update_MODELPARAM_VALUE.C_CHANNELS { MODELPARAM_VALUE.C_CHANNELS PARAM_VALUE.C_CHANNELS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_CHANNELS}] ${MODELPARAM_VALUE.C_CHANNELS}
}

proc update_MODELPARAM_VALUE.C_DEC_TYPE { MODELPARAM_VALUE.C_DEC_TYPE PARAM_VALUE.C_DEC_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DEC_TYPE}] ${MODELPARAM_VALUE.C_DEC_TYPE}
}

proc update_MODELPARAM_VALUE.C_DATA_TYPE { MODELPARAM_VALUE.C_DATA_TYPE PARAM_VALUE.C_DATA_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DATA_TYPE}] ${MODELPARAM_VALUE.C_DATA_TYPE}
}

