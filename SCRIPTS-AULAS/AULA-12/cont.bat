@echo off
setlocal enabledelayedexpansion

:: Capturando valor
set string=%*
set /a s=0

:main
if not defined cont (set /a cont=0)

if "!string:~%cont%,1!" == " " set /a s+=1

if not "!string:~%cont%,1!" == "" (set /a cont+=1 & goto main)

set /a final=%cont% - %s%

echo N�mero de letras = %final%