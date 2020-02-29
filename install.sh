#!/usr/bin/env bash

install_homebrew() {
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

# If homebrew is not installed then install it
if ! type "brew" > /dev/null; then
  printf "${warnmsg} Homebrew not installed. Installation process will begin now.\\n"
  sleep 0.5

  install_homebrew
fi
