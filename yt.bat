@echo OFF
color 0a

:start
echo stream url path pl0x:
set /P "Stream="
IF /I "%Stream%" EQU "" (goto :start) ELSE (goto :fnn)

:fnn
echo #
echo file save name pl0x (default: out.mp4):
set /P "Outfile="
IF /I "%Outfile%" EQU "" (goto :ofnn) ELSE (goto :init)

:ofnn
set Outfile=out.mp4

:init

title Saving %Outfile%.mp4 %Stream%
echo #
echo Starting  %Outfile%.mp4 %Stream%
echo #
youtube-dl.exe --output %Outfile%.mp4 %Stream%
Pause&Exit