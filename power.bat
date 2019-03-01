title Power Control Mission
mode 59,9
color 07
cls
@Echo OFF
@echo	 *********************************
@echo	      Power Control Mission
@echo 	                   V2.0
@echo	 *********************************
:Banner
echo are you sure to shutdown the computer?
echo	shutdown	Press Y  
echo	Sleep		Press H
echo	Reboot		Press R	
ECHO ENTER YOUR CHOICE
set/p "cho=>"
if %cho%== y goto SHUT
if %CHO%==Y goto SHUT
if %cho%==r goto REBOOT
if %cho%==R goto REBOOT
if %cho%==n goto END
if %cho%==N goto END
if %cho%==h goto hib
if %cho%==H goto hib
CLS
echo Are you Drunk or something? 
echo Press B to Show main menu.
set/p "cho=>"
if %cho% == b goto Banner
if %cho% == B goto Banner
:SHUT
shutdown -s  -f -t 05

echo System shutown in progress...
goto END
:REBOOT
shutdown -r -f -t 5
echo Rebooting the system! Please wait a while.
:hib
shutdown -h
goto END
:END