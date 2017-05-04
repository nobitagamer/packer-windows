@ECHO OFF

cd /d "%~dp0"

SET TMP=%~dp0packer_cache

mkdir "%TMP%" > nul

packer build -color=true windows_2016_docker_core_vmware.json