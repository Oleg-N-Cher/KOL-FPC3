@echo off
setlocal

set FPC_DIR=..
set FPC_BINARY=%FPC_DIR%\ppcrossx64.exe
set UNITS_DIR=%FPC_DIR%\units64u

set SCRIPT_DIR=%~dp0
set FPC_COMMAND="%FPC_BINARY%" -Twin64 -Mdelphiunicode -Fu"%UNITS_DIR%" -FU"%SCRIPT_DIR%units64u" -FE"%SCRIPT_DIR%bin"

%FPC_COMMAND% -o"koltest-64U.exe" "%SCRIPT_DIR%koltest.pp"


pause