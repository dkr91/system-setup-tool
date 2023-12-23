Install-Module powershell-yaml
Import-Module powershell-yaml

./win/winget.ps1

$config
$file = Get-Content .\config.yaml
$content
foreach ($line in $file) {$content = $content + $line}
$config = ConvertFrom-Yaml $content

$config

./wsl/wsl.ps1