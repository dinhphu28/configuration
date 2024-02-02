#!/bin/sh
echo "Installing brew util applications..."
brew install neovim
brew install gh
brew install ghq
brew install nmap
brew install fzf
$(brew --prefix)/opt/fzf/install
brew install fd
brew install ripgrep
brew install neofetch

echo "Installing brew dev applications..."
brew install npm
brew install yarn

brew install openjdk
brew install openjdk@11
brew install openjdk@17
brew install maven
brew install jenv

brew install coursier/formulas/coursier
echo "Installing scala..."
coursier setup
brew install metals

brew install go
