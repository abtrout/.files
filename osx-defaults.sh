#!/usr/bin/env bash
# My OS X default/tweaks, updated for Yosemite. 
# See hints.macworld.com and mths.be/osx for more

sudo -v

# Set hostname if provided as argument
if [[ $# -eq 1 ]]; then
  scutil --set ComputerName $1
  scutil --set HostName $1
  scutil --set LocalHostName $1
  sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$1"
fi

# Skip verifying disk images.
defaults write com.apple.frameworks.DiskImages skip-verify -bool true
defaults write com.apple.frameworks.DiskImages skip-verify-locked -bool true
defaults write com.apple.frameworks.DiskImages skip-verify-remote -bool true

# Don't ask to use Time Machine and disable local backups.
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true
hash tmutil &> /dev/null && sudo tmutil disablelocal

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Disable warning about opening applications for the first time
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Don't write .DS_Stores in network volumes
defaults write com.apple.DesktopServices DSDontWriteNetworkStores -bool true

# Speed up Save sheet animations
defaults write -g NSWindowResizeTime -float 0
defaults write -g NSNavPanelExpandedStateForSaveMode -bool true
defaults write -g NSNavPanelExpandedStateForSaveMode2 -bool true

# Speed up mission control animations
defaults write com.apple.Dock expose-animation-duration -float 0

# Disable smart quotes, smart dashes, and automatic spelling correction
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false

# Disable new window pop-in animation
defaults write -g NSAutomaticWindowAnimationsEnabled -bool NO

defaults write com.apple.Dock autohide-delay -float 0
defaults write -g NSScrollViewRubberbanding -int 0
defaults write -g ApplePressAndHoldEnabled -bool false 

# Disable Notification Center 
#launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist

# Disable Spotlight indexing for external volumes
sudo defaults write /.Spotlight-V100/VolumeConfiguration Exclusions -array "/Volumes"

## Fine tune Spotlight indexing order and search results
defaults write com.apple.spotlight orderedItems -array \
  '{"enabled" = 1;"name" = "APPLICATIONS";}' \
  '{"enabled" = 1;"name" = "SYSTEM_PREFS";}' \
  '{"enabled" = 1;"name" = "DIRECTORIES";}' \
  '{"enabled" = 0;"name" = "BOOKMARKS";}'

# Reload Spotlight and rebuild indexes
killall mds > /dev/null 2>&1
sudo mdutil -i on / > /dev/null
sudo mdutil -E / > /dev/null

## Disable Launchpad fade-in animation
defaults write com.apple.dock springboard-show-duration -int 0
defaults write com.apple.dock springboard-hide-duration -int 0

# Disable bash sessions
touch ~/.bash_sessions_disable
rm -rf ~/.bash_sessions
