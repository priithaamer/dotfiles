#!/usr/bin/env bash

dotfiles_directory=$HOME/.dotfiles

warnmsg="\\033[33mWARN:\\033[0m"
infomsg="\\033[36mINFO:\\033[0m"

install_homebrew() {
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

# If homebrew is not installed then install it
if ! type "brew" > /dev/null; then
  printf "${warnmsg} Homebrew not installed. Installation process will begin now.\\n"
  sleep 0.5

  install_homebrew
fi

# If dotfiles directory does not exist then clone it
if [ ! -e $dotfiles_directory ]; then
  printf "${infomsg} Cloning dotfiles to ${dotfiles_directory}\\n"
  (git clone --quiet https://github.com/priithaamer/dotfiles.git $dotfiles_directory)
  printf "${infomsg} Done.\\n"
fi

