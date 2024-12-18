@echo off
:: Open Chrome and go to the specified URL
start chrome https://passwords.google.com/

:: Wait for Chrome to open
timeout /t 5 >nul

:: Send Ctrl+A to select all
powershell -Command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SendKeys]::SendWait('^{a}')"

:: Send Ctrl+C to copy
powershell -Command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SendKeys]::SendWait('^{c}')"

:: Wait for copying to complete
timeout /t 2 >nul

echo Copied the content!
