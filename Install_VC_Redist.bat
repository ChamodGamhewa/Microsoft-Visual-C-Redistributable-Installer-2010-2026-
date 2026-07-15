@echo off

echo ============================================================
echo Visual C++ Redistributables Installer
echo ------------------------------------------------------------
echo Script by Chamod Gamhewa
echo GitHub : https://github.com/ChamodGamhewa
echo Website: https://chamodgamhewa.com/
echo ============================================================
echo.

echo Requesting Administrator privileges...

net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Requesting Administrator privileges...
    powershell -NoProfile -ExecutionPolicy Bypass -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
    exit /b
)

setlocal
cd /d "%~dp0"

echo ==========================================
echo Visual C++ Redistributables Installer
echo ==========================================
echo.

for %%F in (
"VC_redistx64_(2010).exe"
"VC_redistx64_(2012).exe"
"VC_redistx64_(2013).exe"
"VC_redistx64_(2015).exe"
"VC_redistx64_(2017).exe"
"VC_redistx64_(2019).exe"
"VC_redistx64_(2022).exe"
"VC_redistx64_(2026).exe"
) do (
    echo.
    echo Installing %%~F...

    if exist "%%~F" (
        start /wait "" "%%~F" /quiet /norestart
        echo Finished %%~F
    ) else (
        echo File not found: %%~F
    )
)

echo.
echo ==========================================
echo All installations completed.
echo ==========================================
pause