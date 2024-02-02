#!/bin/sh
install_zsh() {
  echo "Installing ZSH"

  sudo dnf install zsh
  chsh -s $(which zsh)

  echo "ZSH Installed"
}

install_oh_my_zsh() {
  echo "Installing oh-my-zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

install_zsh_syntax_highlighting() {
  echo "Installing zsh-syntax-highlighting..."
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
}

install_zsh_auto_suggestions() {
  echo "Installing zsh-auto-suggestions..."
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
}

install_fonts() {
  echo "Downloading and installing MesloLGS NF fonts..."

  fonts_dir="#$HOME/.local/share/fonts"
  if [ ! -d "${fonts_dir}" ]; then
    echo "mkdir -p ${fonts_dir}"
    mkdir -p "${fonts_dir}"
  else
    echo "Found fonts dir ${fonts_dir}"
  fi

  for type in "Bold" "Bold Italic" "Italic" "Regular"; do
    file_path="$HOME/.local/share/fonts/MesloLGS\ NF\ ${type}.ttf"
    file_url="https://github.com/romkatv/powerlevel10k-media/blob/master/MesloLGS NF ${type}.ttf"
    if [ ! -e "${file_path}" ]; then
      echo "wget -O ${file_path} ${file_url}"
      wget -O "${file_path}" "${file_url}"
    else
      echo "Found existing file ${file_path}"
    fi;
  done

  echo "fc-cache -f"
  fc-cache -f
  echo "MesloLGS NF installed"
}

install_zsh_powerlevel10k() {
  echo "Installing powerlevel10k..."
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
}
