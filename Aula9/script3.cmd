@echo off

setlocal enabledelayedexpansion ::habilitar expan�ao atrasada

set var=antes
if %var% == antes (
		set var=depois
		if !var! == depois echo Se ler isso, o programa funcionou!
	) else (
		echo Se ler isso, o script nao funcionou!
	)
echo ^^! ::mostra aquivos especias

endlocal

pause>nul