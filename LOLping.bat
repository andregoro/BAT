:: Programador:  Bryann Henrique
:: Email:        bryann.enrique@gmail.com
:: Programa:     LOLping.bat
:: Função:       Testa a conexão com o servidor de LOL.
:: Criação:      02/03/2016
:: Versão:       2.5.0 (06/03/2016)

@echo off
mode con: lines=60 cols=23
color 03	
title LOLping - Rodando...

if exist Netlog.log del /f Netlog.log
set IP=8.23.25.177

:inicio
timeout /t 1 /nobreak >nul
for /f "tokens=3 delims=," %%a in ('ping /n 1 %IP% ^| find "ms,"') do (set "ping=%%a" & goto trat)

:trat
if "%ping%" == "" (
	powershell write-host "ERRO DE CONEXAO `(%time:~0,-6%`)" -background 0 -foreground 12
	echo Oscilacao de internet em %time:~0,-6% >> Netlog.log
)

set /a ping=%ping:~8,-2% + 6
if %ping% == 6 goto inicio
echo %time:~0,-6%-^>  %ping% ms  Û

goto :inicio