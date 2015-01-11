If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(`
    [Security.Principal.WindowsBuiltInRole] "Administrator"))
{
    Write-Warning "You do not have Administrator rights to run this script!`nPlease re-run this script as an Administrator!"
    Break
}

(iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1')))>$null 2>&1
choco install sudo
choco install git
choco install poshgit

cmd /c "mklink /D %HOMEDRIVE%%HOMEPATH%\Documents\WindowsPowerShell $PSScriptRoot\WindowsPowerShell"