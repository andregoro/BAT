@echo off

setlocal ::todo dentro do bloco vira variavel local
set /a A=2
set /a B=3
set /a "C= A * B"

for /f %%a in ("%C%") do (
					endlocal :: fim do bloco
					set r=%%a
					)
echo %r%
echo A=%A% B=%B% C=%C%
pause >nul