If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(`
    [Security.Principal.WindowsBuiltInRole] "Administrator"))
{
    Write-Warning "You do not have Administrator rights to run this script!`nPlease re-run this script as an Administrator!"
    Break
}

cmd /c "mklink /D %HOMEDRIVE%%HOMEPATH%\Documents\WindowsPowerShell $PSScriptRoot\WindowsPowerShell"
cmd /c "mklink `"%APPDATA%\Sublime Text 3\Packages\User\Preferences.sublime-settings`" `"$PSScriptRoot\Preferences.sublime-settings`""
