@Echo off
echo Curso de Batch Script>i.txt & rem Redirecionamento de sa�da

set /p var=<i.txt & rem Redirecionamento de entrada

echo %var% & rem Mandando a sa�da do echo o identificador 1

pause > nul
