#!/bin/bash

# Show battery life percentage.
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# Save screenshots to the downlaods.
mkdir -p "$HOME/Downloads/screenshots"
defaults write com.apple.screencapture location "$HOME/Downloads/screenshots"

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
sudo defaults write com.apple.AppleMultitouchTrackpad Clicking 1

# Disable hibernation (speeds up entering sleep mode)
sudo pmset -a hibernatemode 0

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true


# Enable the Develop menu and the Web Inspector in Safari
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

##############################################
#                  SECURITY                  #
##############################################

# Enable Firewall
sudo defaults write /Library/Preferences/com.apple.alf globalstate -bool true

# Automatically check for updates
sudo softwareupdate --schedule on
# Install all updates that are applicable to your system
sudo softwareupdate --install -a

# Require password after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
# Ask for password immediately
defaults write com.apple.screensaver askForPasswordDelay -int 0
