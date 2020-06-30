#!/usr/bin/env bash

#
#  System
#

#  System Preferences → Keyboard

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15

#  System Preferences → Dock & Menu Bar

# Show recent applications in Dock
defaults write com.apple.dock show-recents -int 0

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

#  System Preferences → Mouse

# Set scaling
defaults write -g com.apple.mouse.scaling 2.5

# Enable secondary click
defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseButtonMode -string 'TwoButton'

#  System Preferences → Trackpad

# Enable Tap to Click
defaults -currentHost write -globalDomain com.apple.mouse.tapBehavior -int 1

# TODO:
# * Mouse -> Swipe between pages
# * Keyboard modifiers ESC key
# Copy SFMono fonts
# cp /System/Applications/Utilities/Terminal.app/Contents/Resources/Fonts/*.otf ~/Library/Fonts

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
