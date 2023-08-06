@echo OFF
color 0a

:start
echo stream url path pl0x:
set /P "Stream="
IF /I "%Stream%" EQU "" (goto :start)

echo %Stream%|find "/720/" >nul
if errorlevel 1 (goto :skiperror)

color 04
echo #
echo WARNING! THE VIDEO IS LOW QUALITY! /720/ DETECTED
echo WARNING!
echo WARNING! THE VIDEO IS LOW QUALITY! /720/ DETECTED
echo WARNING!
echo WARNING! THE VIDEO IS LOW QUALITY! /720/ DETECTED
echo WARNING!
echo WARNING! THE VIDEO IS LOW QUALITY! /720/ DETECTED
echo WARNING!
echo WARNING! THE VIDEO IS LOW QUALITY! /720/ DETECTED
echo WARNING!
echo WARNING! THE VIDEO IS LOW QUALITY! /720/ DETECTED
echo WARNING!
echo WARNING! THE VIDEO IS LOW QUALITY! /720/ DETECTED
echo WARNING!
echo WARNING! THE VIDEO IS LOW QUALITY! /720/ DETECTED
echo WARNING!
echo WARNING! THE VIDEO IS LOW QUALITY! /720/ DETECTED
echo WARNING!
echo WARNING! THE VIDEO IS LOW QUALITY! /720/ DETECTED
echo WARNING!
pause
color 0a
goto :fileoutname


:skiperror
echo %Stream%|find "/360/" >nul
if errorlevel 1 (goto :fileoutname)

color 04
echo #
echo WARNING! THE VIDEO IS LOW QUALITY! /360/ DETECTED
echo WARNING!
echo WARNING! THE VIDEO IS LOW QUALITY! /360/ DETECTED
echo WARNING!
echo WARNING! THE VIDEO IS LOW QUALITY! /360/ DETECTED
echo WARNING!
echo WARNING! THE VIDEO IS LOW QUALITY! /360/ DETECTED
echo WARNING!
echo WARNING! THE VIDEO IS LOW QUALITY! /360/ DETECTED
echo WARNING!
echo WARNING! THE VIDEO IS LOW QUALITY! /360/ DETECTED
echo WARNING!
echo WARNING! THE VIDEO IS LOW QUALITY! /360/ DETECTED
echo WARNING!
echo WARNING! THE VIDEO IS LOW QUALITY! /360/ DETECTED
echo WARNING!
echo WARNING! THE VIDEO IS LOW QUALITY! /360/ DETECTED
echo WARNING!
echo WARNING! THE VIDEO IS LOW QUALITY! /360/ DETECTED
echo WARNING!
echo WARNING! THE VIDEO IS LOW QUALITY! /360/ DETECTED
echo WARNING!
echo WARNING! THE VIDEO IS LOW QUALITY! /360/ DETECTED
echo WARNING!
echo WARNING! THE VIDEO IS LOW QUALITY! /360/ DETECTED
echo WARNING!
pause
color 0a


:fileoutname
echo #
echo file save name pl0x (default: out.mp4):
set /P "Outfile="

IF /I "%Outfile%" EQU "" (goto :defaultfilename) ELSE (goto :init)

:defaultfilename
set Outfile=out.mp4

:init

title Saving stream to %Outfile%.mp4
echo #
echo Saving stream to %Outfile%.mp4
echo #
"%~dp0\youtube-dl.exe" --output "%CD%\%Outfile%.mp4" "%Stream%"
Pause&Exit

rem C:\Windows\System32\cmd.exe /k "start cmd /k "D:\a film download\yt.bat"" && exit
