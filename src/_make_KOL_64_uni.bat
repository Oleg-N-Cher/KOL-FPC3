@echo off

setlocal

set OUTPUT_PATH=..\units64u
set FPC_COMMAND=..\ppcrossx64.exe -Twin64 -Mdelphiunicode -FU%OUTPUT_PATH%


%FPC_COMMAND% packages\KOLx64\kol.pas
%FPC_COMMAND% packages\KOLx64\KOLadd.pas
%FPC_COMMAND% packages\KOLx64\KOLGRushControls3.pas
%FPC_COMMAND% packages\KOLx64\Mmx.pas
%FPC_COMMAND% packages\other\MMSystem.pas
REM pasjpeg ����������� ��� ������������� KOL, ������� ������������� �����
%FPC_COMMAND% packages\pasjpeg\buildpasjpeg.pp
%FPC_COMMAND% packages\KOLx64\JpegObjFPC.pas

:pause