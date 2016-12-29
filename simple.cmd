@echo off
for /f "delims=" %%f IN ('dir /b "%~dp0X16*.exe"') DO (
echo %%f
"%~dp0%%f" /extract:"%~dp0_%%f" /quiet
)
