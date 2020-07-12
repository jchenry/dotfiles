#!/usr/bin/env bash -eo pipefail

ACCT=jchenry

# change default shell back to bash
chsh -s /bin/bash $ACCT

# Generate keypair for use with github
ssh-keygen -o -a 100 -t ed25519 -f /Users/$ACCT/.ssh/id_ed25519 -C "colin@jchenry.me"

# Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Finder: Set bottom right hot corner to start screensaver
defaults write com.apple.dock "wvous-br-corner" int 5;
defaults write com.apple.dock  "wvous-br-modifier" -int 0;

# Trackpad: disable launchpad pinch with thumb and three fingers
defaults write com.apple.dock showLaunchpadGestureEnabled -int 0

# Finder: Avoid creating .DS_Store files on network volumes (!!!!!!)
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Finder: Show hidden files
defaults write com.apple.finder AppleShowAllFiles YES

# Finder: Column view as default
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

# Finder: Show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Finder: Automatically open a new Finder window when a volume is mounted
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

# Finder: When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Finder: Expand the following File Info panes:
# “General”, “Open with”, and “Sharing & Permissions”
defaults write com.apple.finder FXInfoPanesExpanded -dict \
  General -bool true \
  OpenWith -bool true \
  Privileges -bool true

# Finder: Avoid creating .DS_Store files on network volumes (!!!!!!)
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Finder: Autohide Dock
defaults write com.apple.dock autohide -int 1
defaults write com.apple.Dock autohide-delay -float 0

# Finder: Remove all default apps
defaults delete com.apple.dock "persistent-apps"

# Menu bar: Set date and time format e.g. Sun 11 Aug 16:55
defaults write com.apple.menuextra.clock DateFormat -string "HH:mm"

# Messages.app: Disable smart quotes as it’s annoying for messages that contain code
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "automaticQuoteSubstitutionEnabled" -bool false

# Photos: Prevent Photos from opening automatically when devices are plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

# Preview: Don't remember open files
defaults write com.apple.Preview NSQuitAlwaysKeepsWindows -bool false

# Safari: Privacy: don’t send search queries to Apple
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# Safari: Show the full URL in the address bar (note: this still hides the scheme)
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

# Safari: Set Safari’s home page to `about:blank` for faster loading
defaults write com.apple.Safari HomePage -string "about:blank"


# Safari: Prevent Safari from opening ‘safe’ files automatically after downloading
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# Safari: Enable the Develop menu and the Web Inspector in Safari
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

# Safari: Enable Safari’s debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Safari: Add a context menu item for showing the Web Inspector in web views
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Text Edit: Use plain text mode for new TextEdit documents
defaults write com.apple.TextEdit RichText -int 0

# Text Edit: Open and save files as UTF-8 in TextEdit
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

# Time Machine: Don't ask to use every drive for Time Machine
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Terminal.app: Only use UTF-8 in Terminal
defaults write com.apple.terminal StringEncodings -array 4

# Activity Monitor: Visualize CPU usage in the Activity Monitor Dock icon
defaults write com.apple.ActivityMonitor IconType -int 5

# Activity Monitor: Sort Activity Monitor results by CPU usage
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0

# Kill affected applications
for app in \
  Dock \
  Finder \
  Safari \
  SystemUIServer \
  ; do killall "$app" >/dev/null 2>&1
done

