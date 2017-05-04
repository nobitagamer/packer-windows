#packer build --only=vmware-iso `
#       --var disk_size=102400 `
#       --var iso_url=C:/packer_cache/Win10_1607_English_x64.iso `
#       --var iso_checksum=99fd8082a609997ae97a514dca22becf20420891 `
#       --var autounattend=./tmp/10/Autounattend.xml `
#       windows_10.json

$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
Write-host "Working directory is: $dir"

# temporarily change to the correct folder
Push-Location $dir

mkdir packer_cache
packer build -color=true windows_2016_docker_core_vmware.json

# now back to previous directory
Pop-Location