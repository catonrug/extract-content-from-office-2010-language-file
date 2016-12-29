@echo off
set path=%path%;%~dp0
for /f "delims=" %%f IN ('dir /b "%~dp0X16*.exe"') DO (
"%~dp0%%f" /extract:"%~dp0_%%f" /quiet
for /f "delims=*" %%g in ('ls "%~dp0_%%f" -1 ^|
grep "Excel" ^|
sed "s/.*\.//g"') do (
echo %%g
mv "%~dp0_%%f" "%~dp0%%g"
)
)
pause
