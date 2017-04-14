@ECHO OFF

cd /d "%~dp0"

if "%~1" == "" (
    for /f "delims=.- tokens=4" %%i in ('dir /b "%~dp0output-virtualbox-iso\*.ovf"') do set TIMESTAMPS=%%i
) else (
    set TIMESTAMPS=%~1
)

ECHO Timestamps: %TIMESTAMPS%

SET TMP=%~dp0packer_cache
mkdir "%TMP%" > nul

packer build -color=true -var 'timestamps=%TIMESTAMPS%' windows_2016_docker_core_ovf2box.json