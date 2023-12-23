Install-Module powershell-yaml
Import-Module powershell-yaml

Invoke-WebRequest -Uri https://github.com/microsoft/winget-cli/releases/download/v1.6.3482/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle -OutFile C:\Temp\WinGet.msixbundle
Add-AppxPackage C:\Temp\WinGet.msixbundle


$config
$file = Get-Content .\config.yaml
$content
foreach ($line in $file) {$content = $content + $line}
$config = ConvertFrom-Yaml $content

$config