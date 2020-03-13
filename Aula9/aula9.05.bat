@echo off
set /a a=6
set /a b=2
set /a "c=b*a"
for /f %%f in ("%c%") do (
endlocal
set r=%%f
	)
echo %r%
echo A=%a% B=%b% C=%c%
pause >nul