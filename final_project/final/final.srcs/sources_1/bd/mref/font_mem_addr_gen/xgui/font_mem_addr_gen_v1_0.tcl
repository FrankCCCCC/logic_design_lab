# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ALPHABET_BITS_N" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CNT_BITS_N" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FONT_HEIGHT_CNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FONT_NUM_COL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FONT_NUM_ROW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FONT_WIDTH_CNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PX_ADDR_BITS_N" -parent ${Page_0}


}

proc update_PARAM_VALUE.ALPHABET_BITS_N { PARAM_VALUE.ALPHABET_BITS_N } {
	# Procedure called to update ALPHABET_BITS_N when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ALPHABET_BITS_N { PARAM_VALUE.ALPHABET_BITS_N } {
	# Procedure called to validate ALPHABET_BITS_N
	return true
}

proc update_PARAM_VALUE.CNT_BITS_N { PARAM_VALUE.CNT_BITS_N } {
	# Procedure called to update CNT_BITS_N when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CNT_BITS_N { PARAM_VALUE.CNT_BITS_N } {
	# Procedure called to validate CNT_BITS_N
	return true
}

proc update_PARAM_VALUE.FONT_HEIGHT_CNT { PARAM_VALUE.FONT_HEIGHT_CNT } {
	# Procedure called to update FONT_HEIGHT_CNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FONT_HEIGHT_CNT { PARAM_VALUE.FONT_HEIGHT_CNT } {
	# Procedure called to validate FONT_HEIGHT_CNT
	return true
}

proc update_PARAM_VALUE.FONT_NUM_COL { PARAM_VALUE.FONT_NUM_COL } {
	# Procedure called to update FONT_NUM_COL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FONT_NUM_COL { PARAM_VALUE.FONT_NUM_COL } {
	# Procedure called to validate FONT_NUM_COL
	return true
}

proc update_PARAM_VALUE.FONT_NUM_ROW { PARAM_VALUE.FONT_NUM_ROW } {
	# Procedure called to update FONT_NUM_ROW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FONT_NUM_ROW { PARAM_VALUE.FONT_NUM_ROW } {
	# Procedure called to validate FONT_NUM_ROW
	return true
}

proc update_PARAM_VALUE.FONT_WIDTH_CNT { PARAM_VALUE.FONT_WIDTH_CNT } {
	# Procedure called to update FONT_WIDTH_CNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FONT_WIDTH_CNT { PARAM_VALUE.FONT_WIDTH_CNT } {
	# Procedure called to validate FONT_WIDTH_CNT
	return true
}

proc update_PARAM_VALUE.PX_ADDR_BITS_N { PARAM_VALUE.PX_ADDR_BITS_N } {
	# Procedure called to update PX_ADDR_BITS_N when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PX_ADDR_BITS_N { PARAM_VALUE.PX_ADDR_BITS_N } {
	# Procedure called to validate PX_ADDR_BITS_N
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

proc update_MODELPARAM_VALUE.FONT_WIDTH_CNT { MODELPARAM_VALUE.FONT_WIDTH_CNT PARAM_VALUE.FONT_WIDTH_CNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FONT_WIDTH_CNT}] ${MODELPARAM_VALUE.FONT_WIDTH_CNT}
}

proc update_MODELPARAM_VALUE.FONT_HEIGHT_CNT { MODELPARAM_VALUE.FONT_HEIGHT_CNT PARAM_VALUE.FONT_HEIGHT_CNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FONT_HEIGHT_CNT}] ${MODELPARAM_VALUE.FONT_HEIGHT_CNT}
}

proc update_MODELPARAM_VALUE.FONT_NUM_ROW { MODELPARAM_VALUE.FONT_NUM_ROW PARAM_VALUE.FONT_NUM_ROW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FONT_NUM_ROW}] ${MODELPARAM_VALUE.FONT_NUM_ROW}
}

proc update_MODELPARAM_VALUE.FONT_NUM_COL { MODELPARAM_VALUE.FONT_NUM_COL PARAM_VALUE.FONT_NUM_COL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FONT_NUM_COL}] ${MODELPARAM_VALUE.FONT_NUM_COL}
}

proc update_MODELPARAM_VALUE.ALPHABET_BITS_N { MODELPARAM_VALUE.ALPHABET_BITS_N PARAM_VALUE.ALPHABET_BITS_N } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ALPHABET_BITS_N}] ${MODELPARAM_VALUE.ALPHABET_BITS_N}
}

