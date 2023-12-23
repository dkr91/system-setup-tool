If(!(test-path -PathType container "C:\temp"))
{
    New-Item -ItemType Directory -Path "C:\temp"
}
curl -o C:\temp\winget-cli.msixbundle https://github.com/microsoft/winget-cli/releases/download/v1.6.3482/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
C:\temp\winget-cli.msixbundle