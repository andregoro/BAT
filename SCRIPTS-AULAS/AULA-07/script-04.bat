@echo off
set /p "arq=Digite a localiza��o do arquivo> "

call :prop %arq%

:prop
echo PROPRIEDADES DO ARQUIVO %~n1:
echo Nome: %~n1
echo Extten��o: %~x1
echo Tamanho: %~z1
echo Caminho montado: %~dpnx1

pause>nul