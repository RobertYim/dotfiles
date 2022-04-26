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

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ln -s /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh $HOME/.oh-my-zsh/custom/

ln -s $HOME/Documents/dotfiles/DotFiles/.zshrc $HOME

ln -s $HOME/Documents/dotfiles/DotFiles/.alacritty.yml $HOME

mkdir -p /usr/local/bin

chown `whoami`:admin /usr/local/bin

mkdir $HOME/Library/go

mkdir -p $HOME/.config

mkdir -p $HOME/.vim/autoload
mkdir -p $HOME/.vim/swaps
mkdir -p $HOME/.vim/backups
mkdir -p $HOME/.vim/plugged
mkdir -p $HOME/.vim/colors
ln -s $HOME/.vim $HOME/.config/nvim
ln -s $HOME/Documents/dotfiles/DotFiles/.vimrc $HOME/.config/nvim/init.vim
ln -s $HOME/Documents/dotfiles/DotFiles/coc-settings.json $HOME/.vim
# Install VimPlug and color theme
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
# curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s $HOME/Documents/dotfiles/DotFiles/.emacs $HOME

ln -s $HOME/Documents/dotfiles/DotFiles/.gitconfig $HOME
ln -s $HOME/Documents/dotfiles/DotFiles/.gitignore_global $HOME

ln -s $HOME/Documents/dotfiles/DotFiles/.aria2 $HOME

ln -s $HOME/Documents/dotfiles/DotFiles/youtube-dl $HOME/.config

mkdir -p $HOME/"Library/Application Support/Sublime Text 3/Packages/User"
ln -s $HOME/Documents/dotfiles/DotFiles/"Sublime Text 3"/* $HOME/"Library/Application Support/Sublime Text 3/Packages/User"
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/
ln -s "/Applications/Sublime Merge.app/Contents/SharedSupport/bin/smerge" /usr/local/bin/
ln -s "/Applications/VSCodium.app/Contents/Resources/app/bin/code" /usr/local/bin/

ln -s $HOME/Documents/dotfiles/DotFiles/.hammerspoon $HOME

ln -s $HOME/Google\ Drive/backup/clash $HOME/.config

mkdir -p $HOME/.config/rclone
ln -s $HOME/Google\ Drive/backup/rclone.conf $HOME/.config/rclone

ln -s $HOME/Documents/dotfiles/DotFiles/.tmux.conf $HOME

# Download Rime Dictionary
git clone --depth 1 git@gitlab.com:RobertYim/rime-settings.git $HOME/Library/Rime

mkdir -p $HOME/Library/Application\ Support/VSCodium
ln -s $HOME/Documents/dotfiles/DotFiles/Code/User Library/Application\ Support/VSCodium/

ln -s $HOME/Documents/dotfiles/DotFiles/.npmrc $HOME

ln -s $HOME/Documents/dotfiles/DotFiles/.mpv $HOME

ln -s $HOME/Documents/dotfiles/DotFiles/.pip $HOME

ln -s $HOME/Documents/dotfiles/DotFiles/.wgetrc $HOME

rm -r $HOME/Music
ln -s $HDD/Music $HOME

rm -r $HOME/Movies
ln -s $HDD/Movies $HOME

ln -s /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport /usr/local/bin/

ln -s $HOME/Documents/tools/gpuStat /usr/local/bin/

############
# App Configurations
############

############
# VSCode
# For VS Code
# defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
defaults write com.visualstudio.code.oss ApplePressAndHoldEnabled -bool false
# For VS Code Insider
# defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false
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
# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true
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
# Enable snap-to-grid for icons on the desktop and in other icon views
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist



############
# Dock
# Set the icon size of Dock items to 30 pixels
defaults write com.apple.dock tilesize -int 30
# Change minimize/maximize window effect
defaults write com.apple.dock mineffect -string "scale"
# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false
# Disable Dashboard
# defaults write com.apple.dashboard mcx-disabled -bool true
# Don’t show Dashboard as a Space
defaults write com.apple.dock dashboard-in-overlay -bool true
# Remove the auto-hiding Dock delay
defaults write com.apple.dock autohide-delay -float 0
# Remove the animation when hiding/showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0
# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true
# Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true
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
# Resize Launchpad Icons
defaults write com.apple.dock springboard-columns -int 7
defaults write com.apple.dock ResetLaunchPad -bool TRUE



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
# Show Developer Menu and Web Inspector
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
# Disable AutoFill
defaults write com.apple.Safari AutoFillFromAddressBook -bool false
defaults write com.apple.Safari AutoFillPasswords -bool false
defaults write com.apple.Safari AutoFillCreditCardData -bool false
defaults write com.apple.Safari AutoFillMiscellaneousForms -bool false
# Set Safari’s home page to `about:blank` for faster loading
defaults write com.apple.Safari HomePage -string "about:blank"
# Disable Safari’s thumbnail cache for History and Top Sites
defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2

############
# Time Machine
# Disable local Time Machine backups
hash tmutil &> /dev/null && sudo tmutil disablelocal

############
# Spotlight
# Disable Spotlight indexing for any volume that gets mounted and has not yet
# been indexed before.
# Use `sudo mdutil -i off "/Volumes/foo"` to stop indexing any volume.
sudo defaults write /.Spotlight-V100/VolumeConfiguration Exclusions -array "/Volumes"
# Change indexing order and disable some search results
defaults write com.apple.Spotlight orderedItems -array \
	'{"enabled" = 1;"name" = "APPLICATIONS";}' \
	'{"enabled" = 1;"name" = "SYSTEM_PREFS";}' \
	'{"enabled" = 1;"name" = "DIRECTORIES";}' \
	'{"enabled" = 1;"name" = "PDF";}' \
	'{"enabled" = 1;"name" = "FONTS";}' \
	'{"enabled" = 0;"name" = "DOCUMENTS";}' \
	'{"enabled" = 0;"name" = "MESSAGES";}' \
	'{"enabled" = 0;"name" = "CONTACT";}' \
	'{"enabled" = 0;"name" = "EVENT_TODO";}' \
	'{"enabled" = 0;"name" = "IMAGES";}' \
	'{"enabled" = 0;"name" = "BOOKMARKS";}' \
	'{"enabled" = 0;"name" = "MUSIC";}' \
	'{"enabled" = 0;"name" = "MOVIES";}' \
	'{"enabled" = 0;"name" = "PRESENTATIONS";}' \
	'{"enabled" = 0;"name" = "SPREADSHEETS";}' \
	'{"enabled" = 0;"name" = "SOURCE";}' \
	'{"enabled" = 0;"name" = "MENU_DEFINITION";}' \
	'{"enabled" = 0;"name" = "MENU_OTHER";}' \
	'{"enabled" = 0;"name" = "MENU_CONVERSION";}' \
	'{"enabled" = 0;"name" = "MENU_EXPRESSION";}' \
	'{"enabled" = 0;"name" = "MENU_WEBSEARCH";}' \
	'{"enabled" = 0;"name" = "MENU_SPOTLIGHT_SUGGESTIONS";}'
# Load new settings before rebuilding the index
killall mds > /dev/null 2>&1
# Make sure indexing is enabled for the main volume
sudo mdutil -i on / > /dev/null
# Rebuild the index from scratch
sudo mdutil -E / > /dev/null

############
# Miscellaneous
############
# Reduce transparency
# defaults write com.apple.universalaccess reduceTransparency -bool true

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write com.apple.AppleMultitouchTrackpad Dragging -bool true
defaults write com.apple.AppleMultitouchTrackpad DragLock -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Increase window resize speed for Cocoa applications
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
# Disable disk image verification
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

# Enable subpixel font rendering on non-Apple LCDs
# Reference: https://github.com/kevinSuttle/macOS-Defaults/issues/17#issuecomment-266633501
defaults write NSGlobalDomain AppleFontSmoothing -int 3

# Disable the crash reporter
defaults write com.apple.CrashReporter DialogType -string "none"

# Set highlight color to purple
defaults write NSGlobalDomain AppleHighlightColor -string "0.968627 0.831373 1.000000 Purple"
defaults write NSGlobalDomain AppleAccentColor -int 5

# Auto dark mode
defaults write NSGlobalDomain AppleInterfaceStyleSwitchesAutomatically -bool true

# Scroll bar when scrolling
defaults write NSGlobalDomain AppleShowScrollBars -string "WhenScrolling"

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Disable Resume system-wide
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false

# Remove duplicates in the “Open With” menu (also see `lscleanup` alias)
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user

# Use scroll gesture with the Ctrl (^) modifier key to zoom
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144
# Follow the keyboard focus while zoomed in
defaults write com.apple.universalaccess closeViewZoomFollowsFocus -bool true

# Show language menu in the top right corner of the boot screen
sudo defaults write /Library/Preferences/com.apple.loginwindow showInputMenu -bool true

# Prevent Photos from opening automatically when devices are plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true



# SSD no accesstime flag
sudo cp $HOME/Documents/dotfiles/DotFiles/com.ssd.noatime.plist /Library/LaunchDaemons
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

# Blurriness on macOS Mojave
# https://code.visualstudio.com/docs/supporting/faq#_blurriness-on-macos-mojave
#If you have updated to macOS 10.14 (Mojave), you might have noticed that fonts in VS Code look blurry if you are not using a high-DPI monitor. A workaround for this is to run:
defaults write -g CGFontRenderingFontSmoothingDisabled -bool NO

# Use Only a Dark Menu Bar and Dock in Mojave
# defaults write -g NSRequiresAquaSystemAppearance -bool Yes

############
# Kill affected applications
############

for app in "Dock" \
    "Finder" \
    "Safari" \
    "SystemUIServer" \
    "VSCodium" \
    "Sublime Text"; do
    killall "${app}" &> /dev/null
done
echo "Done. Note that some of these changes require a logout/restart to take effect."


