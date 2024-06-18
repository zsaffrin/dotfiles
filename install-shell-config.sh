#!/bin/bash

# ======= VARIABLES =======
# Arguments
OVERWRITE=false

while getopts "o" FLAG; do
  case "$FLAG" in
    o)
      OVERWRITE=true
      ;;
  esac
done
shift $((OPTIND -1))

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Timestamp
CURTIME=$(date +%s)

if [ $OVERWRITE = true ]; then
  echo "${YELLOW}󰀨${NC} Running in OVERWRITE mode..."
fi


# ======= ACTIONS =======

# ======= zsh =======
echo "Checking zsh... "
if [ -f /bin/zsh -o -f /usr/bin/zsh ]; then
    echo "${GREEN}${NC} zsh is installed"

    # Set the default shell to zsh if it isn't currently set to zsh
    if [[ ! $(echo $SHELL) == $(which zsh) ]]; then
      echo -n "zsh is not default shell. Setting zsh to default shell..."
      chsh -s $(which zsh)
      echo -e " ${GREEN}Done${NC}"
    else
      echo "${GREEN}${NC} zsh is default shell"
    fi
else
    # zsh is not installed, terminate script
    echo "[${RED}ERROR${NC}] zsh is not installed"
    echo "Please install zsh, then re-run this script!"
    exit 1
fi

# ======= shell_aliases =======
echo "Installing .shell_aliases... "
if [[ (-e ~/.shell_aliases) && ($OVERWRITE = false) ]]; then
  echo -n ".shell_aliases already exists. Backing up..."
  mv ~/.shell_aliases ~/.shell_aliases_old-${CURTIME}
  echo " ${GREEN}${NC} Done"
fi

echo -n "Writing ~/.shell_aliases..."
cp ./.shell_aliases ~/.shell_aliases
echo " ${GREEN}${NC} Done"


# ======= oh-my-posh config =======
echo "Installing oh-my-posh config... "
if [ ! -d ~/.config/ohmyposh/ ]; then
  echo -n "Creating ~/.config/ohmyposh directory..."
  mkdir -p ~/.config/ohmyposh
  echo " ${GREEN}${NC} Done"
fi

if [[ (-e ~/.config/ohmyposh/omp-config.toml) && ($OVERWRITE = false) ]]; then
  echo -n "omp-config already exists. Backing up..."
  mv ~/.config/ohmyposh/omp-config.toml ~/.config/ohmyposh/omp-config_old-${CURTIME}.toml
  echo " ${GREEN}${NC} Done"
fi

echo -n "Writing ~/.config/ohmyposh/omp-config.toml..."
cp ./omp-config.toml ~/.config/ohmyposh/omp-config.toml
echo " ${GREEN}${NC} Done"


# ======= zshrc =======
echo "Installing .zshrc... "
if [[ (-e ~/.zshrc) && ($OVERWRITE = false) ]]; then
  echo -n ".zshrc already exists. Backing up..."
  mv ~/.zshrc ~/.zshrc_old-${CURTIME}
  echo " ${GREEN}${NC} Done"
fi

echo -n "Writing ~/.zshrc..."
cp ./.zshrc ~/.zshrc
echo " ${GREEN}${NC} Done"


# ======= Finished =======
echo 
echo "All done! ${GREEN}${NC}"
echo 