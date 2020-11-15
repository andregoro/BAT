@echo off
REM set e=%~1
REM echo "%e:~3%"

REM REM for /f %%a in ("%e%") do (
REM REM     set f=%%a
REM REM     if echo "%f% \n"
REM REM )
REM @echo off
setlocal enabledelayedexpansion

:: Capturando valor
set string=%*
set /a s=0


:main
if not defined cont (set /a cont=0)

REM if "!string:~%cont%,1!" == " " set /a s+=1
REM set nome="!string:~%cont%,4!"
if not "!string:~%cont%,1!" == "." (echo "erro")
::if not "!string:~%cont%,1!" == "." (set /a cont+=1 & goto main)
if "!string:~%cont%,4!" == ".lua" (lua %string%)
if "!striSng:~%cont%,4!" == ".cmd" (%string%)
::if "!string:~%cont%,1!" == "" (%string%)
if "!string:~%cont%,4!" == ".bat" (%string%)
if "!string:~%cont%,4!" == ".js" (nodevars
node %string%)
if "!string:~%cont%,4!" == ".d" (dmd %string%)
if "!string:~%cont%,4!" == ".lisp" (clisp %string%)
if "!string:~%cont%,4!" == ".pl" (perl %string%)
if "!string:~%cont%,4!" == ".ts" (nodevars
tsc %string%
node %string%)
if "!string:~%cont%,4!" == ".jl" (julia %string%)

if "!string:~%cont%,4!" == ".py" (python %string%)
if "!string:~%cont%,4!" == ".rb" (ruby %string%)
