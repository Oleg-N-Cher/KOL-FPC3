@echo off
setlocal

set FPC_DIR=..
set FPC_BINARY=%FPC_DIR%\ppcrossx64.exe
set UNITS_DIR=%FPC_DIR%\units64

set SCRIPT_DIR=%~dp0
set FPC_COMMAND="%FPC_BINARY%" -Twin64 -Fu"%UNITS_DIR%" -FU"%SCRIPT_DIR%units64" -FE"%SCRIPT_DIR%bin"

%FPC_COMMAND% -o"koltest-64A.exe" "%SCRIPT_DIR%koltest.pp"


pause