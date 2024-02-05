#!/bin/sh
update_dotfiles() {
  git clone https://github.com/dinhphu28/dotfiles.git /tmp/dotfiles

  cp /tmp/dotfiles/.zshrc $HOME/.zshrc
  cp /tmp/dotfiles/.p10k.zsh $HOME/.p10k.zsh
  cp /tmp/dotfiles/.gitconfig $HOME/.gitconfig
  cp /tmp/dotfiles/kitty $HOME/.config/kitty
  cp /tmp/dotfiles/nvim $HOME/.config/nvim
  cp /tmp/dotfiles/ssh $HOME/.ssh
  cp /tmp/dotfiles/gnupg $HOME/.gnupg
}
