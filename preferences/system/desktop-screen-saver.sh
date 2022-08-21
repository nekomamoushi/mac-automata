#!/usr/bin/env bash

# Save screenshots to the desktop
SCREENSHOT_DIR="${HOME}/Desktop/Screenshots"
mkdir -p "${SCREENSHOT_DIR}"
defaults write com.apple.screencapture location -string "${SCREENSHOT_DIR}"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# Start after begin idle for time (in seconds)
defaults -currentHost write com.apple.screensaver idleTime -int 900
