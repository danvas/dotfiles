@echo off
REM This adds "Copy as Path" and "Copy as Posix Path" commands to the registry,
REM which allows you to run them from the context menus of files and directories (i.e. right-clicking).
echo Manually add the following keys and copy/paste their values (i.e. Data field) in the windows registry using Regedit:
echo.
echo new key: HKEY_CLASSES_ROOT\*\shell\Copy as Path\command
echo value: cmd.exe /c (echo.^|set /p="%%1") ^| clip
echo.
echo new key: HKEY_CLASSES_ROOT\*\shell\Copy as Posix Path\command
echo value: cmd.exe /c (echo.^|set /p="%%1"^|tr '\\' '/') ^| clip
echo.
echo new key: HKEY_CLASSES_ROOT\Directory\shell\Copy as Path\command
echo value: cmd.exe /c (echo.^|set /p="%%1") ^| clip
echo.
echo new key: HKEY_CLASSES_ROOT\Directory\shell\Copy as Posix Path\command
echo value: cmd.exe /c (echo.^|set /p="%%1"^|tr '\\' '/') ^| clip
echo.
echo TODO: Finish this batch file to automate the process. 
echo Enter them manually for now. 
echo (Sorry not sorry.)
echo.
REM Reg Add Regkey HKEY_CLASSES_ROOT\*\shell\Copy as Path\command RegValue cmd.exe /c (echo.|set /p="%1") | clip RegType REG_SZ data
REM SET key="HKEY_CLASSES_ROOT\*\shell\Copy as Posix Path\command"
REM Reg Add %key% /v cmd.exe /c (echo.|set /p="%1"|tr '\\' '/') | clip /t REG_SZ data
rem Reg Add Regkey HKEY_CLASSES_ROOT\Directory\shell\Copy as Path\command RegValue cmd.exe /c (echo.|set /p="%1") | clip RegType REG_SZ data
rem Reg Add Regkey HKEY_CLASSES_ROOT\Directory\shell\Copy as Posix Path\command RegValue cmd.exe /c (echo.|set /p="%1"|tr '\\' '/') | clip RegType REG_SZ data
pause
