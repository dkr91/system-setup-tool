sudo yum install zsh -y
zsh

sudo yum install -y git mc fzf

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


curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

omz theme 



curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | zsh
eval "$(zoxide init zsh)"

# Download Znap, if it's not there yet.
[[ -r ~/Repos/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/Repos/znap
source ~/Repos/znap/znap.zsh  # Start Znap


# Add autocomplete
znap source marlonrichert/zsh-autocomplete


# Install github cli
curl -Sl -all https://github.com/cli/cli/releases/download/v2.42.0/gh_2.42.0_linux_amd64.tar.gz | rpm --install gh_2.42.0_linux_amd64.tar.gz


# install eza
gh release download --repo github.com/eza-community/eza --pattern '*gnu.zip'
rm eza.exe_x86_64-pc-windows-gnu.zip eza_aarch64-unknown-linux-gnu.zip
unzip eza_x86_64-unknown-linux-gnu.zip
sudo mv ./eza /usr/bin

# install bat
yum install bat