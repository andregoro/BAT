@Echo off
Mode Con: lines=23 Cols=61
title Menu Batch - Usando IF

:i
cls
Echo.
echo  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo  �                                                         �
echo  � Curso Batch Script por Bryann Henrique            朮碓  �
echo  �                                                         �
echo  麺様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo  �                                                         �
echo  � Para iniciar um programa, digite seu numero:            �
echo  麺様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo  �                                                         �
echo  � 浜様様様様様様様� 浜様様様様様様様� 浜様様様様様様様融  �
echo  � 麺様様様様様様様� 麺様様様様様様様� 麺様様様様様様様郵  �
echo  � �1: Calculadora � �2: G. Tarefas  � �3: B. de notas  �  �
echo  � 藩様様様様様様様� 藩様様様様様様様� 藩様様様様様様様夕  �
echo  � 浜様様様様様様様� 浜様様様様様様様� 浜様様様様様様様融  �
echo  � 麺様様様様様様様� 麺様様様様様様様� 麺様様様様様様様郵  �
echo  � �4: W. Update   � �5: Paint       � �6: I. Explorer  �  �
echo  � 藩様様様様様様様� 藩様様様様様様様� 藩様様様様様様様夕  �
echo  �                                                         �
echo  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo.
set /p "esc=�Digite> "

:dec
:: Bloco de decis�o
if "%esc%" == "1" (goto calc)
if "%esc%" == "2" (goto tare)
if "%esc%" == "3" (goto nota)
if "%esc%" == "4" (goto upda)
if "%esc%" == "5" (goto pain)
if "%esc%" == "6" (goto expl)

:: Tratamento de erro
if "%esc%" lss "1" (beep 1 & goto i)
if "%esc%" gtr "6" (beep 1 & goto i)

:calc
start calc.exe
goto i
:tare
start taskmgr.exe
goto i
:nota
start notepad.exe
goto i
:upda
start wuapp.exe
goto i
:pain
start mspaint.exe
goto i
:expl
start iexplore.exe
goto i