@echo off
set currentpath=%cd%
set armgcc=C:/arm-2014.05/bin/

%armgcc%cs-make clean
%armgcc%cs-make -j4
@cmd.exe
