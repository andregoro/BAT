@echo off
REM set e=%~1
REM echo "%e:~3%"

REM REM for /f %%a in ("%e%") do (
REM REM     set f=%%a
REM REM     if echo "%f% \n"
REM REM )
REM @echo off
setlocal enabledelayedexpansion

:: Capturando valor
set string=%*
set /a s=0


:main
if not defined cont (set /a cont=0)

if "!string:~%cont%,1!" == " " set /a s+=1 
set nome="!string:~%cont%,4!"

if not "!string:~%cont%,1!" == "" (set /a cont+=1 & goto main)

::if "string"s

set /a final=%cont% - %s%

echo Numero de letras = %final%