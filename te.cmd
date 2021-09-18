@echo off
setlocal enabledelayedexpansion
::echo testewes
::pause
set string= %*
@REM "andre"

:main
echo "!string!"
if not defined cont (set /a cont=0)
echo "!string!"

if "!string:~%cont,1%!"==" " (set /a cont+1 echo "!string!" & goto main)
