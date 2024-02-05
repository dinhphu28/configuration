#!/bin/sh
# import all shell scripts
. ./internal/helpers.sh
. ./internal/update_dotfiles.sh
. ./install_zsh.sh
. ./install_homebrew.sh
. ./install_docker.sh
. ./brew_packages/install.sh

 # TODO: Should switch to zsh after installation
 install_zsh

install_oh_my_zsh
install_zsh_syntax_highlighting
install_zsh_auto_suggestions
install_zshpowerlevel10k

install_brew
install_docker
./brew_packages/install.sh

update_dotfiles
