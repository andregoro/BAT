:: Canal: Insitutito de Script's
:: Prof.: Bryann Henrique
:: Curso Batch Script
:: Aula: 20
@echo off
setlocal enabledelayedexpansion

set arg=%*

set min=abcdefghijklmnopqrstuvwxyz
set max=ABCDEFGHIJKLMNOPQRSTUVWXYZ

:conv
set /a cont+=1

set letramin=!min:~-%cont%,1!
set letramax=!max:~-%cont%,1!

set arg=!arg:%letramin%=%letramax%!

if %cont% == 26 (echo %arg%) else (goto conv)