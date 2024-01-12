sudo yum install zsh -y
zsh

sudo yum install -y git mc

mkdir ~/Repos/

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
source ~/.zshrc

rm -rf ~/.fzf


#Installs OhMyZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#Installs zsh-autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
#Grabs the zsh-autosuggestions and adds it in .zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

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

