#!/bin/sh
update_dotfiles() {
  git clone -b at-office https://github.com/dinhphu28/dotfiles.git /tmp/dotfiles

  cp /tmp/dotfiles/.zshrc $HOME/.zshrc
  cp /tmp/dotfiles/.p10k.zsh $HOME/.p10k.zsh
  cp /tmp/dotfiles/.gitconfig $HOME/.gitconfig
  cp -r /tmp/dotfiles/kitty $HOME/.config/kitty
  cp -r /tmp/dotfiles/nvim $HOME/.config/nvim
  cp -r /tmp/dotfiles/ssh $HOME/.ssh
  cp -r /tmp/dotfiles/gnupg $HOME/.gnupg
}
