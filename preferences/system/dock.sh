#!/usr/bin/env bash

# Set the icon size of Dock items to 48 pixels
defaults write com.apple.dock tilesize -int 48

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-time-modifier -float 2;

# Minimize windows into their application’s icon
defaults write com.apple.dock minimize-to-application -bool true

# Enable spring loading for all Dock items
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

# Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true

# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Indicate hidden app icons
defaults write com.apple.dock showhidden -bool true;

# Use magnification slider
defaults write com.apple.dock largesize -int 64;

## Obsolete since macOS 10.14 (Mojave).
# Create recent items stack
# defaults write com.apple.dock persistent-others -array-add '{"tile-data" = {"list-type" = 1;}; "tile-type" = "recents-tile";}'

## Set hotcorner actions.  Disable "Disable Screen Saver" when found.
## The following are the values of each option in the GUI
# None = 1
#   Modifier = 1048576
# Mission Control = 2
#   Modifier = 0
# Application Windows = 3
#   Modifier = 0
# Desktop = 4
#   Modifier = 0
# Start Screen Saver = 5
#   Modifier = 0
# Disable Screen Saver = 6
#   Modifier = 0
# Dashboard = 7
#   Modifier = 0
# Put Display to Sleep = 10
#   Modifier = 0
# Launchpad = 11
#   Modifier = 0
# Notification Center = 12
#   Modifier = 0
##

# Top left screen corner → Desktop
defaults write com.apple.dock wvous-tl-corner -int 4
defaults write com.apple.dock wvous-tl-modifier -int 0

# Top right screen corner → no-op
defaults write com.apple.dock wvous-tr-corner -int 12
defaults write com.apple.dock wvous-tr-modifier -int 0

# Bottom left screen corner → no-op
defaults write com.apple.dock wvous-bl-corner -int 1
defaults write com.apple.dock wvous-bl-modifier -int 1048576

# Bottom right screen corner → no-op
defaults write com.apple.dock wvous-br-corner -int 1
defaults write com.apple.dock wvous-br-modifier -int 1048576

killall "Dock" &> /dev/null