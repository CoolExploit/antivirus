@echo off
setlocal EnableDelayedExpansion
title Batch Antivirus threat detail
echo.Batch Antivirus threat detail
echo.
set "threat_name=%~1"
if "%~1"=="" set /p "threat_name=Threat name: "

findstr /ic:"!threat_name!" "%~dp0VirusDataBaseHash.bav "> nul 2>&1 || echo Threat not found in the database

for /f "tokens=1 delims=/" %%A in ("!threat_name!") do set "mal_type=%%A"
set found_malware=0
for %%A in (
"Adware`A malware that shows ads which is frequently installed by PUP (Potentially Unwanted Programs)"

) do for /f "tokens=1* delims=`" %%X in ("%%~A") do if /i "%%~X"=="!mal_type!" (echo.%%~X: %%~Y&&set "found_malware=1")
if "!found_malware!"=="0" (
	echo.Could not find the detection "!mal_type!" in database
)
echo.
echo.Press any key to quit...
pause>nul
exit /b