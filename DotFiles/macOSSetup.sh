#!/usr/bin/env bash

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macOSSetup` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

############
# Symlinks
############

ln -s $HOME/Documents/dotfiles/DotFiles/.zshrc $HOME

mkdir -p $HOME/.vim/autoload $HOME/.vim/bundle
mkdir -p $HOME/.config
ln -s $HOME/.vim $HOME/.config/nvim
ln -s $HOME/Documents/dotfiles/DotFiles/.vimrc $HOME/.config/nvim/init.vim
# Install Pathogen
curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

ln -s $HOME/Documents/dotfiles/DotFiles/.emacs $HOME

ln -s $HOME/Documents/dotfiles/DotFiles/.gitconfig $HOME
ln -s $HOME/Documents/dotfiles/DotFiles/.gitignore_global $HOME

ln -s $HOME/Documents/dotfiles/DotFiles/.aria2 $HOME

ln -s $HOME/Documents/dotfiles/DotFiles/.youtube-dl $HOME

mkdir -p $HOME/"Library/Application Support/Sublime Text 3/Packages/User"
ln -s $HOME/Documents/dotfiles/DotFiles/"Sublime Text 3"/* $HOME/"Library/Application Support/Sublime Text 3/Packages/User"
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin

ln -s "/Applications/apps/Visual Studio Code.app/Contents/Resources/app/bin/code" /usr/local/bin

ln -s $HOME/Documents/dotfiles/DotFiles/.hammerspoon $HOME

ln -s $HOME/Google\ Drive/backup/.SpechtLite $HOME

ln -s $HOME/Documents/dotfiles/DotFiles/.tmux.conf $HOME

# Download Rime Dictionary and unzip
# unzip "$(curl -LO rime.zip https://bitbucket.org/RobertYan/rimedict/get/f48da5512c2d.zip)" && mv RobertYan-rimedict-f48da5512c2d $HOME/Library/Rime && rm rime.zip
ln -s $HOME/Documents/dotfiles/DotFiles/Rime/*.yaml $HOME/Library/Rime

ln -s $HOME/Documents/dotfiles/DotFiles/Code/User $HOME/Library/Application\ Support/Code

ln -s $HOME/Google\ Drive/backup/1Password\ 4/Backups $HOME/Library/Application\ Support/1Password\ 4

ln -s $HOME/Documents/dotfiles/DotFiles/.npmrc $HOME

ln -s $HOME/Documents/dotfiles/DotFiles/.mpv $HOME

ln -s $HOME/Documents/dotfiles/DotFiles/.pip $HOME

ln -s $HOME/Documents/dotfiles/DotFiles/.wgetrc $HOME

rm -r $HOME/Music
ln -s $HDD/Music $HOME

rm -r $HOME/Movies
ln -s $HDD/Movies $HOME

ln -s /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport /usr/local/bin

############
# App Configurations
############

############
# VSCode
# For VS Code
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
# For VS Code Insider
defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false
# If necessary, reset global default
# defaults delete -g ApplePressAndHoldEnabled

############
# SublimeText3
defaults write com.sublimetext.3 ApplePressAndHoldEnabled -bool false

############
# ScreenSaver
# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0


############
# Finder
# Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true
# Show Posix Path in Finder
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
# Finder: disable window animations and Get Info animations
defaults write com.apple.finder DisableAllAnimations -bool true
# Set Downloads as the default location for new Finder windows
# For other paths, use `PfLo` and `file:///full/path/here/`
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/Downloads/"
# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false
# Expand the following File Info panes:
# “General”, “Open with”, and “Sharing & Permissions”; collapse "Preview"
defaults write com.apple.finder FXInfoPanesExpanded -dict \
    General -bool true \
    OpenWith -bool true \
    Privileges -bool true \
    Preview -bool false
# Show the ~/Library folder
# chflags nohidden ~/Library
# Show the /Volumes folder
# sudo chflags nohidden /Volumes

############
# Dock
# Set the icon size of Dock items to 30 pixels
defaults write com.apple.dock tilesize -int 30
# Change minimize/maximize window effect
defaults write com.apple.dock mineffect -string "scale"
# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false
# Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true
# Don’t show Dashboard as a Space
defaults write com.apple.dock dashboard-in-overlay -bool true
# Remove the auto-hiding Dock delay
defaults write com.apple.dock autohide-delay -float 0
# Remove the animation when hiding/showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0
# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true
# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
# Top LEFT
defaults write com.apple.dock wvous-tl-corner -int 1
defaults write com.apple.dock wvous-tl-modifier -int 1048576
# Top RIGHT
defaults write com.apple.dock wvous-tr-corner -int 2
defaults write com.apple.dock wvous-tr-modifier -int 0
# Bottom LEFT
defaults write com.apple.dock wvous-bl-corner -int 3
defaults write com.apple.dock wvous-bl-modifier -int 0
# Bottom RIGHT
defaults write com.apple.dock wvous-br-corner -int 1
defaults write com.apple.dock wvous-br-modifier -int 1048576
# Wipe all (default) app icons from the Dock
# This is only really useful when setting up a new Mac, or if you don’t use
# the Dock to launch apps.
#defaults write com.apple.dock persistent-apps -array

############
# Safari
# Exclude Search engine suggestions
defaults write com.apple.Safari SuppressSearchSuggestions -bool true
# Ask websites not to track
defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true
# Show the full URL in the address bar (note: this still hides the scheme)
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true
# Press Tab to highlight each item on a web page
defaults write com.apple.Safari WebKitTabToLinksPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2TabsToLinks -bool true
# Prevent Safari from opening ‘safe’ files automatically after downloading
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
# Show Safari’s sidebar in Top Sites
defaults write com.apple.Safari ShowSidebarInTopSites -bool true
# Show bookmark sidebar
defaults write com.apple.Safari SidebarViewModeIdentifier "Bookmarks"
# Show Developer Menu
defaults write com.apple.Safari IncludeDevelopMenu -bool true
# Disable AutoFill
defaults write com.apple.Safari AutoFillFromAddressBook -bool false
defaults write com.apple.Safari AutoFillPasswords -bool false
defaults write com.apple.Safari AutoFillCreditCardData -bool false
defaults write com.apple.Safari AutoFillMiscellaneousForms -bool false

############
# Time Machine
# Disable local Time Machine backups
hash tmutil &> /dev/null && sudo tmutil disablelocal

############
# Miscellaneous
############
# Reduce transparency
# defaults write com.apple.universalaccess reduceTransparency -bool true

# SSD no accesstime flag
sudo cp $HOME/Documents/dotfiles/DotFiles/com.ssd.noatime.plist
sudo launchctl load -w /Library/LaunchDaemons/com.ssd.noatime.plist

# Use sleep instead of hibernate
sudo pmset -a hibernatemode 0

# Remove the sleep image file to save disk space
sudo rm /var/vm/sleepimage
# Create a zero-byte file instead…
sudo touch /var/vm/sleepimage
# …and make sure it can’t be rewritten
sudo chflags uchg /var/vm/sleepimage

# Set timezone; see 'systemsetup -listtimezones' for other values
sudo systemsetup -settimezone "Asia/Taipei" > /dev/null

############
# Hackintosh Only
############
# Fix Trackpad Preference Pane
# Download  Trackpad.prefpane
# Extrack it into /System/Library/PreferencePanes
# Download Trackpad configuration files
# Copy all configuration files to /System/Library/PreferencePanes/Trackpad.prefpane/Contents/Resources/English.lproj

############
# Kill affected applications
############

for app in "Dock" \
    "Finder" \
    "Safari" \
    "SystemUIServer" \
    "Visual Studio Code" \
    "Sublime Text"; do
    killall "${app}" &> /dev/null
done
echo "Done. Note that some of these changes require a logout/restart to take effect."


