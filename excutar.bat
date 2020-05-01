@echo off
set e=%~1
echo "%e:~3%"

REM for /f %%a in ("%e%") do (
REM     set f=%%a
REM     echo "%f% \n"
REM )