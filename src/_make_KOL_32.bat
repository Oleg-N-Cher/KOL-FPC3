@echo off

setlocal

set OUTPUT_PATH=..\units32
set FPC_COMMAND=..\ppc386.exe -Twin32 -FU%OUTPUT_PATH%


%FPC_COMMAND% packages\KOLx64\kol.pas
%FPC_COMMAND% packages\KOLx64\KOLadd.pas
%FPC_COMMAND% packages\KOLx64\KOLGRushControls3.pas
%FPC_COMMAND% packages\KOLx64\Mmx.pas
%FPC_COMMAND% packages\other\MMSystem.pas
REM pasjpeg подправлена для использования KOL, поэтому компилируется после
%FPC_COMMAND% packages\pasjpeg\buildpasjpeg.pp
%FPC_COMMAND% packages\KOLx64\JpegObjFPC.pas

:pause