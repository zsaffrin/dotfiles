#!/bin/bash

# Colors
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# ======= zsh =======
if [[ $(which zsh) = "zsh not found" ]]; then
  echo "Installing zsh..."

  echo "sudo apt update"
  echo "sudo apt install zsh -y"
  
  echo "${GREEN}${NC} Done"
else
  echo "zsh already installed"
fi

# ======= eza =======
if [[ $(which eza) = "eza not found" ]]; then
  echo "Installing eza..."

  sudo mkdir -p /etc/apt/keyrings
  wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
  echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
  sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
  sudo apt update
  sudo apt install -y eza

  echo "${GREEN}${NC} Done"
else
  echo "eza already installed"
fi

# ======= oh-my-posh =======
if [[ $(which oh-my-posh) = "oh-my-posh not found" ]]; then
  echo "Installing oh-my-posh..."

  echo "sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh"
  echo "sudo chmod +x /usr/local/bin/oh-my-posh"
  
  echo "${GREEN}${NC} Done"
else
  echo "oh-my-posh already installed"
fi
