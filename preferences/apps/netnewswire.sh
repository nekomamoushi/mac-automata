#!/usr/bin/env bash

# Check for stable updates.
defaults write com.ranchero.NetNewsWire-Evergreen SUAutomaticallyUpdate -int 1
defaults write com.ranchero.NetNewsWire-Evergreen SUEnableAutomaticChecks -int 1
defaults write com.ranchero.NetNewsWire-Evergreen SUHasLaunchedBefore -int 1

# Refresh every 4 hours.
defaults write com.ranchero.NetNewsWire-Evergreen refreshInterval -int 6

# Hide read feeds and articles.
defaults write com.ranchero.NetNewsWire-Evergreen windowState -dict-add readFeedsFilterState -bool true
defaults write com.ranchero.NetNewsWire-Evergreen windowState -dict-add readArticlesFilterStateValue -bool true
