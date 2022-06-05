#!/bin/sh

#FreeBSD edition
#Require: git vim tmux curl neofetch
#Install packages

sudo pkg update
sudo pkg install -y git vim tmux curl neofetch

#tmux
ln -s tmux.conf ~/.tmux.conf

#vimrc
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

#ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sed 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' ~/.zshrc
sed 's/plugins=(git)/plugins=(git zsh-syntax-highlighting zsh-autosuggestions)/g' ~/.zshrc

#little add to .zshrc
cat << EOT >> ~/.zshrc
export PATH="$HOME/bin:$PATH"
neofetch
EOT
