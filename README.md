# system-setup-tool

This tool automatically installes and configures Systemtools for Windows and WSL

# Options

- ## Download
  This means that all the packages will be downloaded to the `tempPackages` folder.
- ## OfflineInstall
  This means that all the downloaded packages will be installed from the `tempPackages` folder.
- ## Default
  Everything will be downloaded and installed without any tempoary savepoints. You should always use this unless you are working in an restriced or offline enviorment.

# tools

## wsl

### Options

| Name   | Descriptions              | Examples            | Default |
| ------ | ------------------------- | ------------------- | ------- |
| distro | Distro to be installed    | AlmaLinux 9, Ubuntu | Ubuntu  |
| shell  | Changes the defualt shell | zsh, fish           | bash    |
