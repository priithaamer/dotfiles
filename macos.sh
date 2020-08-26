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
#  Dock

# Set default dock icon size
defaults write com.apple.dock tilesize -int 42

#
#  Applications
#

#  Finder

# Unhide User Library Folder
chflags nohidden ~/Library

#  Xcode

# Disable navigate with swipe on Magic Mouse
defaults write com.apple.dt.Xcode AppleEnableMouseSwipeNavigateWithScrolls -bool NO

#  Safari


## TODO: Look at https://github.com/herrbischoff/awesome-macos-command-line#safari for details

#
# Security
#

# # Disable IR remote control
# sudo defaults write /Library/Preferences/com.apple.driver.AppleIRController \
#   DeviceEnabled -bool false

# # Disable remote apple events
# sudo systemsetup -setremoteappleevents off &> /dev/null

# # Disable wake-on LAN
# sudo systemsetup -setwakeonnetworkaccess off &> /dev/null

# # Disable guest account login
# sudo defaults write /Library/Preferences/com.apple.loginwindow GuestEnabled \
#   -bool false

# # Disable Bonjour multicast advertisements
# sudo defaults write /Library/Preferences/com.apple.mDNSResponder.plist \
#   NoMulticastAdvertisements -bool true

# #
# # System
# #

# # Enable remote login
# sudo systemsetup -setremotelogin On > /dev/null

# # Play charging sound on power connect
# defaults write com.apple.PowerChime ChimeOnAllHardware -bool true; \
#   open /System/Library/CoreServices/PowerChime.app &

# # Always boot in verbose mode (not MacOS GUI mode)
# sudo nvram boot-args="-v"

# # Disable the sound effects on boot
# sudo nvram SystemAudioVolume=" "

# Set sidebar icon size to medium
# defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

# Increase window resize speed for Cocoa applications
# defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# Expand save panel by default
# defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
# defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Expand print panel by default
# defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
# defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Save to disk (not to iCloud) by default
# defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Automatically quit printer app once the print jobs complete
# defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Restart automatically if the computer freezes
# sudo systemsetup -setrestartfreeze on

# Check for software updates daily, not just once per week
# defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Disable Notification Center
# launchctl unload -w \
#   /System/Library/LaunchAgents/com.apple.notificationcenterui.plist > \
#   /dev/null 2>&1

# Hide Notification Center icon
# notifcetr="/System/Library/CoreServices/SystemUIServer.app/Contents/Resources/menuitemNormal.pdf"
# [ -e "$notifcetr" ] && sudo rm "$notifcetr"

#
# Input
#

# Trackpad: enable tap to click for this user and for the login screen
# defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking \
#   -bool true
# defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
# defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Enable full keyboard access for all controls (e.g. enable Tab in modal
# dialogs)
# defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Use scroll gesture with the Ctrl (^) modifier key to zoom
# defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
# defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144

# Disable press-and-hold for accents and special chars in favor of key repeat
# defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Use metric units
# defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
# defaults write NSGlobalDomain AppleMetricUnits -bool true

#
# Display
#

# Enable dark mode
# osascript -e 'tell application "System Events"
# tell appearance preferences
# set dark mode to dark mode
# end tell
# end tell'

# # Use a neutral blue-grey background with the same HSLuv hue as the background
# # colour of my current Vim colourscheme, Old Book 8
# $HOME/bin/setwp --color=363c43

# # Require password immediately after sleep or screen saver begins
# defaults write com.apple.screensaver askForPassword -int 1
# defaults write com.apple.screensaver askForPasswordDelay -int 0

# # Save screenshots in PNG
# defaults write com.apple.screencapture type -string "png"

# # Enable shadow in screenshots
# defaults write com.apple.screencapture disable-shadow -bool false

# # Use medium font smoothing and reenable subpixel antialiasing
# defaults write NSGlobalDomain AppleFontSmoothing -int 2
# defaults write NSGlobalDomain CGFontRenderingFontSmoothingDisabled -bool NO

# # Enable all animations
# defaults delete -g NSAutomaticWindowAnimationsEnabled > /dev/null 2>&1
# defaults delete -g NSScrollAnimationEnabled > /dev/null 2>&1
# defaults delete -g NSWindowResizeTime > /dev/null 2>&1
# defaults delete -g QLPanelAnimationDuration > /dev/null 2>&1
# defaults delete -g NSScrollViewRubberbanding > /dev/null 2>&1
# defaults delete -g NSDocumentRevisionsWindowTransformAnimation > /dev/null 2>&1
# defaults delete -g NSToolbarFullScreenAnimationDuration > /dev/null 2>&1
# defaults delete -g NSBrowserColumnAnimationSpeedMultiplier > /dev/null 2>&1
# defaults delete com.apple.dock expose-animation-duration > /dev/null 2>&1
# defaults delete com.apple.dock springboard-show-duration > /dev/null 2>&1
# defaults delete com.apple.dock springboard-hide-duration > /dev/null 2>&1
# defaults delete com.apple.dock springboard-page-duration > /dev/null 2>&1
# defaults delete com.apple.finder DisableAllAnimations > /dev/null 2>&1
# defaults delete com.apple.Mail DisableSendAnimations > /dev/null 2>&1
# defaults delete com.apple.Mail DisableReplyAnimations > /dev/null 2>&1
# defaults delete NSGlobalDomain NSWindowResizeTime > /dev/null 2>&1

# #
# # Finder
# #

# # Keep folders on top when sorting by name
# defaults write com.apple.finder _FXSortFoldersFirst -bool true

# # Show hidden files by default
# defaults write com.apple.finder AppleShowAllFiles -bool true

# # Show all filename extensions
# defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# # Show status bar
# defaults write com.apple.finder ShowStatusBar -bool true

# # Show path bar
# defaults write com.apple.finder ShowPathbar -bool true

# # Allow text selection in Quick Look
# defaults write com.apple.finder QLEnableTextSelection -bool true

# # Display full POSIX path as Finder window title
# defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# # Use column view in all Finder windows by default
# defaults write com.apple.finder FXPreferredViewStyle -string "Clmv"

# # Enable spring loading for directories
# defaults write NSGlobalDomain com.apple.springing.enabled -bool true

# # Remove the spring loading delay for directories
# defaults write NSGlobalDomain com.apple.springing.delay -float 0

# # Avoid creating .DS_Store files on network volumes
# defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# # Empty Trash securely by default
# defaults write com.apple.finder EmptyTrashSecurely -bool true

# # Show the ~/Library folder
# chflags nohidden ~/Library

# # Allow quitting Finder
# defaults write com.apple.finder QuitMenuItem -bool true

# #
# # Activity Monitor
# #

# # Show the main window when launching Activity Monitor
# defaults write com.apple.ActivityMonitor OpenMainWindow -bool true

# # Visualize CPU usage in the Activity Monitor Dock icon
# defaults write com.apple.ActivityMonitor IconType -int 5

# # Show all processes in Activity Monitor
# defaults write com.apple.ActivityMonitor ShowCategory -int 0

# # Sort Activity Monitor results by CPU usage
# defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
# defaults write com.apple.ActivityMonitor SortDirection -int 0

# #
# # Dock
# #

# # Reset dock
# defaults delete com.apple.dock

# # Only show open applications on the dock
# defaults write com.apple.dock static-only -bool TRUE

# # Disable the Launchpad gesture (pinch with thumb and three fingers)
# defaults write com.apple.dock showLaunchpadGestureEnabled -int 0

# # Enable highlight hover effect for the grid view of a stack (Dock)
# defaults write com.apple.dock mouse-over-hilite-stack -bool true

# # Set the icon size of Dock items to 36 pixels
# defaults write com.apple.dock tilesize -int 36

# # Change minimize/maximize window effect to scale
# defaults write com.apple.dock mineffect -string "scale"

# # Minimize windows into their application’s icon
# defaults write com.apple.dock minimize-to-application -bool true

# # Enable spring loading for all Dock items
# defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

# # Don't show indicator lights for open applications in the Dock
# defaults write com.apple.dock show-process-indicators -bool false

# # Don’t animate opening applications from the Dock
# defaults write com.apple.dock launchanim -bool false

# # Don’t group windows by application in Mission Control
# defaults write com.apple.dock expose-group-by-app -bool false

# # Disable Dashboard
# defaults write com.apple.dashboard mcx-disabled -bool true

# # Don’t show Dashboard as a Space
# defaults write com.apple.dock dashboard-in-overlay -bool true

# # Don’t automatically rearrange Spaces based on most recent use
# defaults write com.apple.dock mru-spaces -bool false

# # Display the Dock instantly
# defaults write com.apple.dock autohide-delay -float 0

# # Shorter animation when hiding/showing the Dock
# defaults write com.apple.dock autohide-time-modifier -float 0.3

# # Automatically hide and show the Dock
# defaults write com.apple.dock autohide -bool true

# # Make Dock icons of hidden applications translucent
# defaults write com.apple.dock showhidden -bool true

# # Remove section of Dock dedicated to recent applications
# defaults write com.apple.dock show-recents -bool false

# # Reset Launchpad layout
# defaults write com.apple.dock ResetLaunchPad -bool true

# #
# # Third-party software
# #

# # Duti

# # Get bundle identifier (app name format that duti uses) with:
# #   $ osascript -e 'id of app "<AppName>"'
# #
# # Get UTI (Mac filetype name) with:
# #  $ mdls <file> | grep -i "contenttype " | sed 's/^.*= "//' | sed 's/"//g'

# # Make Preview the default application for PDFs (because Adobe Acrobat DC
# # changes this)
# duti -s com.apple.Preview pdf all

# # Self Control

# # Optimise Self Control for Pomodoro timers
# defaults write org.eyebeam.SelfControl MaxBlockLength -int 120
# defaults write org.eyebeam.SelfControl BlockLengthInterval -int 5

## Uninstall Google Update
# ~/Library/Google/GoogleSoftwareUpdate/GoogleSoftwareUpdate.bundle/Contents/Resources/ksinstall --nuke

#
# Restart to apply
#

killall Finder &> /dev/null
killall Dock &> /dev/null
