#!/bin/sh

#Require: git vim tmux curl gpg neofetch

#tmux
ln -s tmux.conf ~/.tmux.conf

#vimrc
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

#ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#little add to .zshrc
cat << EOT >> ~/.zshrc
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
export PATH="$HOME/bin:$PATH"
gpgconf --launch gpg-agent
neofetch
EOT
