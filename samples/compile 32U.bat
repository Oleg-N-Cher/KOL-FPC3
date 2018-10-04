@echo off
setlocal

set FPC_DIR=..
set FPC_BINARY=%FPC_DIR%\ppc386.exe
set UNITS_DIR=%FPC_DIR%\units32u

set SCRIPT_DIR=%~dp0
set FPC_COMMAND="%FPC_BINARY%" -Mdelphiunicode -Fu"%UNITS_DIR%" -FU"%SCRIPT_DIR%units32u" -FE"%SCRIPT_DIR%bin"

%FPC_COMMAND% -o"koltest-32U.exe" "%SCRIPT_DIR%koltest.pp"


pause