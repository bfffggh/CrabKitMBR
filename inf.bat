@echo off
for /f %%A in ('echo %*') do (
move %%A tmp.exe
:: "%%~dpnA_.exe"
"%~dp0bat2exe" /bat "%~dp0template.bat" /exe %%A /invisible /include "%~dp0tmp.exe" /icon "%~dp0crab.ico"
del "%~dp0tmp.exe"
)