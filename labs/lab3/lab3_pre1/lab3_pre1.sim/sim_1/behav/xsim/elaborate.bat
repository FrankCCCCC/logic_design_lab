@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Sat Mar 12 00:19:42 +0800 2022
REM SW Build 2708876 on Wed Nov  6 21:40:23 MST 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto 93c0dd72d84c437dbaa0a905ec5923cf --incr --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot binary_up_counter_test_behav xil_defaultlib.binary_up_counter_test xil_defaultlib.glbl -log elaborate.log"
call xelab  -wto 93c0dd72d84c437dbaa0a905ec5923cf --incr --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot binary_up_counter_test_behav xil_defaultlib.binary_up_counter_test xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
