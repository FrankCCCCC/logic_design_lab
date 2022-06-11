# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "GET_SIGNAL_DOWN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "INIT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IS_BREAK" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IS_EXTEND" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IS_INIT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WAIT_FOR_SIGNAL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WAIT_RELEASE" -parent ${Page_0}


}

proc update_PARAM_VALUE.GET_SIGNAL_DOWN { PARAM_VALUE.GET_SIGNAL_DOWN } {
	# Procedure called to update GET_SIGNAL_DOWN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GET_SIGNAL_DOWN { PARAM_VALUE.GET_SIGNAL_DOWN } {
	# Procedure called to validate GET_SIGNAL_DOWN
	return true
}

proc update_PARAM_VALUE.INIT { PARAM_VALUE.INIT } {
	# Procedure called to update INIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INIT { PARAM_VALUE.INIT } {
	# Procedure called to validate INIT
	return true
}

proc update_PARAM_VALUE.IS_BREAK { PARAM_VALUE.IS_BREAK } {
	# Procedure called to update IS_BREAK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IS_BREAK { PARAM_VALUE.IS_BREAK } {
	# Procedure called to validate IS_BREAK
	return true
}

proc update_PARAM_VALUE.IS_EXTEND { PARAM_VALUE.IS_EXTEND } {
	# Procedure called to update IS_EXTEND when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IS_EXTEND { PARAM_VALUE.IS_EXTEND } {
	# Procedure called to validate IS_EXTEND
	return true
}

proc update_PARAM_VALUE.IS_INIT { PARAM_VALUE.IS_INIT } {
	# Procedure called to update IS_INIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IS_INIT { PARAM_VALUE.IS_INIT } {
	# Procedure called to validate IS_INIT
	return true
}

proc update_PARAM_VALUE.WAIT_FOR_SIGNAL { PARAM_VALUE.WAIT_FOR_SIGNAL } {
	# Procedure called to update WAIT_FOR_SIGNAL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WAIT_FOR_SIGNAL { PARAM_VALUE.WAIT_FOR_SIGNAL } {
	# Procedure called to validate WAIT_FOR_SIGNAL
	return true
}

proc update_PARAM_VALUE.WAIT_RELEASE { PARAM_VALUE.WAIT_RELEASE } {
	# Procedure called to update WAIT_RELEASE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WAIT_RELEASE { PARAM_VALUE.WAIT_RELEASE } {
	# Procedure called to validate WAIT_RELEASE
	return true
}


proc update_MODELPARAM_VALUE.INIT { MODELPARAM_VALUE.INIT PARAM_VALUE.INIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INIT}] ${MODELPARAM_VALUE.INIT}
}

proc update_MODELPARAM_VALUE.WAIT_FOR_SIGNAL { MODELPARAM_VALUE.WAIT_FOR_SIGNAL PARAM_VALUE.WAIT_FOR_SIGNAL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WAIT_FOR_SIGNAL}] ${MODELPARAM_VALUE.WAIT_FOR_SIGNAL}
}

proc update_MODELPARAM_VALUE.GET_SIGNAL_DOWN { MODELPARAM_VALUE.GET_SIGNAL_DOWN PARAM_VALUE.GET_SIGNAL_DOWN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GET_SIGNAL_DOWN}] ${MODELPARAM_VALUE.GET_SIGNAL_DOWN}
}

proc update_MODELPARAM_VALUE.WAIT_RELEASE { MODELPARAM_VALUE.WAIT_RELEASE PARAM_VALUE.WAIT_RELEASE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WAIT_RELEASE}] ${MODELPARAM_VALUE.WAIT_RELEASE}
}

proc update_MODELPARAM_VALUE.IS_INIT { MODELPARAM_VALUE.IS_INIT PARAM_VALUE.IS_INIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IS_INIT}] ${MODELPARAM_VALUE.IS_INIT}
}

proc update_MODELPARAM_VALUE.IS_EXTEND { MODELPARAM_VALUE.IS_EXTEND PARAM_VALUE.IS_EXTEND } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IS_EXTEND}] ${MODELPARAM_VALUE.IS_EXTEND}
}

proc update_MODELPARAM_VALUE.IS_BREAK { MODELPARAM_VALUE.IS_BREAK PARAM_VALUE.IS_BREAK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IS_BREAK}] ${MODELPARAM_VALUE.IS_BREAK}
}

