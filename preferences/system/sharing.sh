#!/usr/bin/env bash

###############################################################################
# Sharing
###############################################################################

# Set computer name (as done via System Preferences → Sharing)
sudo scutil --set ComputerName "0xDEADBEEF"
sudo scutil --set HostName "0xDEADBEEF"
sudo scutil --set LocalHostName "0xDEADBEEF"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "0xDEADBEEF"