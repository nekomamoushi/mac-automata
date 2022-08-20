#!/usr/bin/env bash

# Don't save to iCloud by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Show warning before removing from iCloud Drive
defaults write com.apple.finder FXEnableRemoveFromICloudDriveWarning -bool false
