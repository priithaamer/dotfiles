#!/usr/bin/env bash

dotfiles_directory=$HOME/.dotfiles

warnmsg="\\033[33mWARN:\\033[0m"
infomsg="\\033[36mINFO:\\033[0m"
checkmark="\\033[32m✓\\033[0m"
clearline="\\033[2K"

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

link_dotfiles() {
  printf "${clearline}${infomsg} Linking dotfiles...\\n"

  for source in $dotfiles_directory/dotfiles/*
  do
    target="$HOME/.`basename $source`"

    if [ -f $target ] || [ -d $target ]
    then
      printf "${checkmark} File exists: ${target}\\n"
    else
      printf "${checkmark} Linking: ${source} -> ${target}\\n"
      ln -sh $source $target
    fi
  done

}

link_dotfiles
