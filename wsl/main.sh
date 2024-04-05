sudo yum install zsh -y
zsh

sudo yum install -y git mc fzf
sudo dnf install 'dnf-command(config-manager)'
sudo dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo
sudo dnf install gh


mkdir ~/Repos/

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
source ~/.zshrc

rm -rf ~/.fzf


#Installs OhMyZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#Grabs the zsh-autosuggestions and adds it in .zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

# install micro
cd /usr/bin
curl https://getmic.ro | bash

omz theme 



curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | zsh
eval "$(zoxide init zsh)"

# install eza
gh release download --repo github.com/eza-community/eza --pattern '*gnu.zip'
rm eza.exe_x86_64-pc-windows-gnu.zip eza_aarch64-unknown-linux-gnu.zip
unzip eza_x86_64-unknown-linux-gnu.zip
sudo mv ./eza /usr/bin

# install bat
yum install bat
