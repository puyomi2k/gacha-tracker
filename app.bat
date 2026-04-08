@echo off
chcp 65001 >nul & ::Set UTF-8 formatting
set puyo-appver=26.4.8l
set puyo-appname=Gacha Tracker Legacy

title %puyo-appname% by puyomi2k

:menu
cls
echo %puyo-appname%
echo =================== by puyomi2k == v%puyo-appver% ==
echo.
type header-note.txt
echo Supported Games ^& -regions:
echo.
echo  1) Genshin Impact - Global*
echo  2) Honkai: Star Rail - Global*
echo  3) Wuthering Waves - Global (WuWa Tracker v4)
echo  4) Zenless Zone Zero - Global (StarDB)
echo.
echo  C) View Change-/Updatelog
echo  X) Close %puyo-appname%
echo.
echo * includes several suboptions
echo.

set tracker-url=
choice /n /c 1234XC /m "Select appropriate option: "
::level bei x entspricht der letzten position nummerisch
if errorlevel 6 cls & type changelog.txt & pause & goto menu
if errorlevel 5 goto ende
if errorlevel 4 start https://stardb.gg/zzz/signal-import & set tracker-url=https://github.com/puyomi2k/gacha-tracker/blob/main/assets/scripts/stardb-zenless.ps1?raw=true & goto read_pull_history
if errorlevel 3 start https://wuwatracker.com/import & set tracker-url=https://github.com/wuwatracker/wuwatracker/blob/d3c9f811da0890944f241201e1b67d2c1be77867/import.ps1?raw=true & goto read_pull_history
if errorlevel 2 goto submenu_hsr
if errorlevel 1 goto submenu_genshin


:read_pull_history

powershell -command "iwr -useb %tracker-url% | iex"
echo Operation complete. Return to menu...
timeout /t 11
goto menu


:submenu_genshin

echo _____________________________
echo Options for Genshin Impact:
echo.
echo  1) StarDB (Suggested)
echo  -^> allows you to import save data from other HoYo games as well
echo  2) Paimon.moe
echo.
echo  I) Only read the URL (if you want to use a different service)
echo.
echo  C) Cancel and return to the main menu
echo  X) Close %puyo-appname%
echo.

set tracker-url=https://github.com/puyomi2k/gacha-tracker/blob/main/assets/scripts/stardb-genshin.ps1?raw=true
choice /n /c 12ICX /m "Select appropriate option: " /t 11 /d 1
if errorlevel 5 goto ende
if errorlevel 4 echo Operation canceled... & goto menu
if errorlevel 3 goto read_pull_history
if errorlevel 2 start https://paimon.moe/wish & goto read_pull_history
if errorlevel 1 start https://stardb.gg/genshin/wish-import & goto read_pull_history

:submenu_hsr

echo ________________________________
echo Options for Honkai: Star Rail:
echo.
echo  1) StarDB (Suggested)
echo  -^> allows you to import save data from other HoYo games as well
echo  2) Pom.moe
echo  3) Star Rail Station
echo.
echo  I) Only read the URL (if you want to use a different service)
echo.
echo  C) Cancel and return to the main menu
echo  X) Close %puyo-appname%
echo.

set tracker-url=https://github.com/puyomi2k/gacha-tracker/blob/main/assets/scripts/stardb-starrail.ps1?raw=true
choice /n /c 123ICX /m "Select appropriate option: " /t 11 /d 1
if errorlevel 6 goto ende
if errorlevel 5 echo Operation canceled... & goto menu
if errorlevel 4 goto read_pull_history
if errorlevel 3 start https://starrailstation.com/warp & goto read_pull_history
if errorlevel 2 start https://pom.moe/warp & goto read_pull_history
if errorlevel 1 start https://stardb.gg/warp-import & goto read_pull_history


:ende
::net start beep >nul 2>&1
::echo.
::echo Vorgang beendet. Zum Beenden Taste drücken oder Zeit ablaufen lassen.
::timeout /t 4
exit /b