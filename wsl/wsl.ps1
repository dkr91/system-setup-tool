function installDistro {
    ECHO 'y' | dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all
    wsl --install
    gh release download $wsltag $wsldistro
    wsl .\main.sh
}