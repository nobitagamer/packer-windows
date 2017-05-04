$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
Write-host "Working directory is: $dir"

# temporarily change to the correct folder
Push-Location $dir

mkdir packer_cache
packer build -color=true -debug windows_2016_docker_core_vmx_provision.json

# now back to previous directory
Pop-Location