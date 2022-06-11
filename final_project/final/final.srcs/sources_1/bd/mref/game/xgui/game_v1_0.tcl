# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CNT_BITS_N" -parent ${Page_0}
  ipgui::add_param $IPINST -name "HEIGHT_CNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MEM_DATA_BIT_N" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PX_ADDR_BITS_N" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SCORE_BITS_N" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WIDTH_CNT" -parent ${Page_0}


}

proc update_PARAM_VALUE.CNT_BITS_N { PARAM_VALUE.CNT_BITS_N } {
	# Procedure called to update CNT_BITS_N when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CNT_BITS_N { PARAM_VALUE.CNT_BITS_N } {
	# Procedure called to validate CNT_BITS_N
	return true
}

proc update_PARAM_VALUE.HEIGHT_CNT { PARAM_VALUE.HEIGHT_CNT } {
	# Procedure called to update HEIGHT_CNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HEIGHT_CNT { PARAM_VALUE.HEIGHT_CNT } {
	# Procedure called to validate HEIGHT_CNT
	return true
}

proc update_PARAM_VALUE.MEM_DATA_BIT_N { PARAM_VALUE.MEM_DATA_BIT_N } {
	# Procedure called to update MEM_DATA_BIT_N when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MEM_DATA_BIT_N { PARAM_VALUE.MEM_DATA_BIT_N } {
	# Procedure called to validate MEM_DATA_BIT_N
	return true
}

proc update_PARAM_VALUE.PX_ADDR_BITS_N { PARAM_VALUE.PX_ADDR_BITS_N } {
	# Procedure called to update PX_ADDR_BITS_N when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PX_ADDR_BITS_N { PARAM_VALUE.PX_ADDR_BITS_N } {
	# Procedure called to validate PX_ADDR_BITS_N
	return true
}

proc update_PARAM_VALUE.SCORE_BITS_N { PARAM_VALUE.SCORE_BITS_N } {
	# Procedure called to update SCORE_BITS_N when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SCORE_BITS_N { PARAM_VALUE.SCORE_BITS_N } {
	# Procedure called to validate SCORE_BITS_N
	return true
}

proc update_PARAM_VALUE.WIDTH_CNT { PARAM_VALUE.WIDTH_CNT } {
	# Procedure called to update WIDTH_CNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WIDTH_CNT { PARAM_VALUE.WIDTH_CNT } {
	# Procedure called to validate WIDTH_CNT
	return true
}


proc update_MODELPARAM_VALUE.CNT_BITS_N { MODELPARAM_VALUE.CNT_BITS_N PARAM_VALUE.CNT_BITS_N } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CNT_BITS_N}] ${MODELPARAM_VALUE.CNT_BITS_N}
}

proc update_MODELPARAM_VALUE.PX_ADDR_BITS_N { MODELPARAM_VALUE.PX_ADDR_BITS_N PARAM_VALUE.PX_ADDR_BITS_N } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PX_ADDR_BITS_N}] ${MODELPARAM_VALUE.PX_ADDR_BITS_N}
}

proc update_MODELPARAM_VALUE.MEM_DATA_BIT_N { MODELPARAM_VALUE.MEM_DATA_BIT_N PARAM_VALUE.MEM_DATA_BIT_N } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MEM_DATA_BIT_N}] ${MODELPARAM_VALUE.MEM_DATA_BIT_N}
}

proc update_MODELPARAM_VALUE.SCORE_BITS_N { MODELPARAM_VALUE.SCORE_BITS_N PARAM_VALUE.SCORE_BITS_N } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SCORE_BITS_N}] ${MODELPARAM_VALUE.SCORE_BITS_N}
}

proc update_MODELPARAM_VALUE.WIDTH_CNT { MODELPARAM_VALUE.WIDTH_CNT PARAM_VALUE.WIDTH_CNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WIDTH_CNT}] ${MODELPARAM_VALUE.WIDTH_CNT}
}

proc update_MODELPARAM_VALUE.HEIGHT_CNT { MODELPARAM_VALUE.HEIGHT_CNT PARAM_VALUE.HEIGHT_CNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HEIGHT_CNT}] ${MODELPARAM_VALUE.HEIGHT_CNT}
}

