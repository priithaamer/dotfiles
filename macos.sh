#!/usr/bin/env bash

#
#  System
#

#  System Preferences → Keyboard

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15

#  System Preferences → Mission Control → Hot Corners...

# Top left screen corner → Start Screen Saver
defaults write com.apple.dock wvous-tl-corner -int 5
defaults write com.apple.dock wvous-tl-modifier -int 0

# Top right screen corner → Put Display to Sleep
defaults write com.apple.dock wvous-tr-corner -int 10
defaults write com.apple.dock wvous-tr-modifier -int 0

# Bottom right screen corner → Desktop
defaults write com.apple.dock wvous-br-corner -int 4
defaults write com.apple.dock wvous-br-modifier -int 0

# Bottom left screen corner → Mission Control
defaults write com.apple.dock wvous-bl-corner -int 2
defaults write com.apple.dock wvous-bl-modifier -int 0

#
#  Applications
#

#  Xcode

# Disable navigate with swipe on Magic Mouse
defaults write com.apple.dt.Xcode AppleEnableMouseSwipeNavigateWithScrolls -bool NO

#
#
# Restart to apply
#

killall Finder &> /dev/null
killall Dock &> /dev/null
