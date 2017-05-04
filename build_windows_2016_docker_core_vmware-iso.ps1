$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
Write-host "Working directory is: $dir"

# temporarily change to the correct folder
Push-Location $dir

mkdir packer_cache
packer build -color=true -only=vmware-iso windows_2016_docker_core.json

# now back to previous directory
Pop-Location