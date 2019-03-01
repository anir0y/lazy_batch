title Mission Control
mode 10 5

@echo off
color 07
cls
color 02
@echo off
@echo ******************************
@echo    Lazzy Password Generator
@echo ******************************
:main
echo Howdy ::  %Username%
@echo ---------------------------------------------------------------------
echo Press S to get your saved password 
echo Press G to create new random Password
@echo ---------------------------------------------------------------------
set/p "cho=>"
if %cho% == s goto show
if %cho% == S goto show
if %cho% == g goto pass
if %cho% == G goto pass

else goto pass
:pass
python C:\damn\pass.py
:show

type C:\damn\passdb.exe
goto main

REM Nothing just pipe for py execution
