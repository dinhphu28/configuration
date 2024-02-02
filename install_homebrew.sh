#!/bin/sh
install_brew() {
  echo "Installing homebrew..."
  if test ! $(which brew); then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    (echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> $HOME/.zshrc
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    # For fedora
    sudo yum groupinstall 'Development Tools'
  else
    echo "Brew has been installed!"
  fi
}

