@echo off
chcp 65001 >nul & ::Umstellung auf UTF-8
set puyo-appver=25.9.22
set puyo-appname=Gacha Pulltracker

title %puyo-appname% by puyomi2k

:menu
cls
echo %puyo-appname%
echo =================== by puyomi2k == v%puyo-appver% ==
echo.
type header-note.txt
echo Unterstützte Spiele ^& -regionen:
echo.
echo  1) Genshin Impact - Global*
echo  2) Honkai: Star Rail - Global*
echo  3) Wuthering Waves - Global (WuWa Tracker v4)
echo  4) Zenless Zone Zero - Global (StarDB)
echo.
echo  C) Änderungs-/Updateverlauf einsehen
echo  X) %puyo-appname% beenden
echo.
echo * beinhaltet mehrere Suboptionen
echo.

set tracker-url=
choice /n /c 1234XC /m "Wähle die passende Option aus: "
::level bei x entspricht der letzten position nummerisch
if errorlevel 6 cls & type changelog.txt & pause & goto menu
if errorlevel 5 goto ende
if errorlevel 4 start https://stardb.gg/zzz/signal-import & set tracker-url=stardb.gg/signal & goto read_pull_history
if errorlevel 3 start https://wuwatracker.com/import & set tracker-url=https://raw.githubusercontent.com/wuwatracker/wuwatracker/refs/heads/main/import.ps1 & goto read_pull_history
if errorlevel 2 goto submenu_hsr
if errorlevel 1 goto submenu_genshin


:read_pull_history

powershell -command "iwr -useb %tracker-url% | iex"
echo Vorgang abgeschlossen. Kehre zum Menü zurück...
timeout /t 11
goto menu


:submenu_genshin

echo _____________________________
echo Optionen für Genshin Impact:
echo.
echo  1) StarDB (Empfohlen)
echo  -^> bietet die Möglichkeit, auch den Verlauf anderer HoYo-Spiele zu importieren
echo  2) Paimon.moe
echo.
echo  I) Nur URL auslesen (wenn du einen anderen Dienst nutzen willst)
echo.
echo  C) Abbrechen und zurück zum Hauptmenü
echo  X) %puyo-appname% beenden
echo.

set tracker-url=stardb.gg/wish
choice /n /c 12ICX /m "Wähle die passende Option aus: " /t 11 /d 1
if errorlevel 5 goto ende
if errorlevel 4 echo Vorgang abgebrochen... & goto menu
if errorlevel 3 goto read_pull_history
if errorlevel 2 start https://paimon.moe/wish & goto read_pull_history
if errorlevel 1 start https://stardb.gg/genshin/wish-import & goto read_pull_history

:submenu_hsr

echo ________________________________
echo Optionen für Honkai: Star Rail:
echo.
echo  1) StarDB (Empfohlen)
echo  -^> bietet die Möglichkeit, auch den Verlauf anderer HoYo-Spiele zu importieren
echo  2) Pom.moe
echo  3) Star Rail Station
echo.
echo  I) Nur URL auslesen (wenn du einen anderen Dienst nutzen willst)
echo.
echo  C) Abbrechen und zurück zum Hauptmenü
echo  X) %puyo-appname% beenden
echo.

set tracker-url=stardb.gg/warp
choice /n /c 123ICX /m "Wähle die passende Option aus: " /t 11 /d 1
if errorlevel 6 goto ende
if errorlevel 5 echo Vorgang abgebrochen... & goto menu
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