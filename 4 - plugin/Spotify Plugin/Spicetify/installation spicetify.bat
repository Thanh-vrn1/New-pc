@echo off

rem Utilisation de PowerShell pour exécuter la commande d'installation de Spicetify
powershell -Command "Invoke-WebRequest -UseBasicParsing 'https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.ps1' | Invoke-Expression"

rem Attente de 15 secondes avant d'exécuter la prochaine commande PowerShell
echo Attente de 15 secondes...
timeout /t 15 /nobreak >nul

rem iwr https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.ps1 | iex
echo Exécution de la prochaine commande PowerShell...
powershell -Command "iwr https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.ps1 | iex"

echo Tâches terminées.