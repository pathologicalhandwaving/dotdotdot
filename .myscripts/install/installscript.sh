#!/bin/bash
echo "**************************************"
echo " "
echo "Tools and OS X Default Installation"
echo "version 1.0 PathologicalHandwaving"
echo " "
echo "**************************************"
echo "OS X Defaults Installation"
echo "**************************************"
echo " "

echo "csrutil"
csrutil disable && reboot
echo " "

echo "Show percentage battery not time remaining"
sudo defaults write com.apple.menuextra.battery ShowPercent -string "YES"
sudo defaults write com.apple.menuextra.battery ShowTime -string "NO"
echo " "
echo "Enable full access keyboard for all controls"
sudo defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
echo " "
echo "Transparency Off"
sudo defaults write com.apple.universalaccess reduceTransparency -bool true
sudo defaults write com.apple.universalaccess reduceTransparency -bool false
echo " "

echo "Key Repeat not Key Press and Hold"
sudo defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
echo " "
echo "Really Fast Keyboard Repeat Rate"
sudo defaults write NSGlobalDomain KeyRepeat -int 0
echo " "
echo "Disable Auto-Correct"
sudo defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
echo " "
echo "Show Full POSIX Path in Finder"
sudo defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
echo " "

echo "Disable Warning on Rename"
sudo defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
echo " "
echo "Show Library"
sudo chflags nohidden ~/Library
echo " "
echo "Disable Animations"
sudo defaults write com.apple.dock launchanim -bool false
sudo defaults write com.apple.dock autohide-time-modifier -float 0.25
sudo defaults write com.apple.Dock autohide-delay -float 0
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool false
sudo defaults write -g NSScrollAnimationEnabled -bool false
sudo defaults write -g NSScrollViewRubberbanding -bool false
sudo defaults write -g AppleShowScrollBars -string "Always"
echo " "
echo "Expand Save Panel"
sudo defaults write -g NSNavPanelExpandedStateForSaveMode -bool true
sudo defaults write -g NSNavPanelExpandedStateForSaveMode2 -bool true
echo " "
echo "Dont Create DS_STORE on Network Drives and USB"
sudo defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
sudo defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
echo " "
echo "Show hidden files"
sudo defaults write com.apple.finder AppleShowAllFiles YES
echo " "
echo "Disable Resume System Wide"
sudo defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false
echo " "
echo "Enable Cut in Finder"
defaults write com.apple.finder AllowCutForItems YES
echo " "
echo "Safari Defaults"
sudo defaults write com.apple.Safari ProxiesInBookmarksBar "()"
sudo defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
sudo defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false
sudo defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
sudo defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2
sudo defaults write NSGlobalDomain AppleShowScrollBars -string "WhenScrolling"
echo "Safari Defaults Finished"
echo " "
echo "iCal, Mail, Contacts"
sudo defaults write com.apple.iCal IncludeDebugMenu -bool true
sudo defaults write com.apple.addressbook ABShowDebugMenu -bool true
sudo defaults write com.apple.Mail DisableReplyAnimations -bool true
sudo defaults write com.apple.Mail DisableSendAnimations -bool true
sudo defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false
sudo defaults write com.apple.mail DisableInlineAttachmentViewing -bool true
sudo defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
echo " "
echo "Firewall"
sudo sudo /usr/libexec/ApplicationFirewall/socketfilterfw --getglobalstate
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on
echo " "
echo "Disable Gatekeeper"
sudo spctl --master-disable
echo " "
echo "Locks"
sudo defaults read com.apple.screensaver askForPasswordDelay
sudo defaults write com.apple.screensaver askForPasswordDelay -int 0
sudo defaults read com.apple.screensaver askForPassword
sudo defaults write com.apple.screensaver askForPassword -int 1
echo " "
echo "Fuck Notification Center"
sudo launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist && killall -9 NotificationCenter
" "
echo "No Remote Apple Events"
sudo systemsetup -setremoteappleevents off
echo " "
echo "Screenshots are pngs"
sudo defaults write com.apple.screencapture type -string "png"
echo " "
echo "Turn Off Auto Software Updates"
sudo mdutil -i off -d /Users/Em
echo " "
echo "No Google Updates"
sudo ~/Library/Google/GoogleSoftwareUpdate/GoogleSoftwareUpdate.bundle/Contents/Resources/ksinstall --nuke
echo " "
echo "TextEdit Plaintext Default"
sudo defaults write com.apple.TextEdit RichText -int 0
echo " "
echo "X-code Developer Tools"
sudo xcode-select --install
xcrun simctl delete unavailable
echo " "
echo "Disable Sudden Motion Sensor"
sudo pmset -a sms 0
echo " "

echo " "
echo "**************************************"
echo "Homebrew Installation"
echo "**************************************"
echo " "


if [ ! -x /usr/local/bin/brew ]; then
    echo "installing homebrew"
    /usr/bin/env ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "homebrew is installed"
fi

echo "Installing Cask "
brew install caskroom/cask/brew-cask

echo "Updating app lists"
brew update
brew upgrade
brew cask update

echo " "
echo "Get and Set Real Bash"
brew install bash && \
sudo echo $(brew --prefix)/bin/bash >> /etc/shells && \
chsh -s $(brew --prefix)/bin/bash

brew install vim --with-lua

brew install tree
brew install coreutils
brew install findutils
brew install moreutils
brew install readline
brew install sqlite
brew install imagemagick
brew install wget
brew install curl
brew install gnupg2
brew install gpg-agent

brew install go
brew install node
brew install nodebrew
brew install ocaml
brew install python3
brew install lua
brew install shyaml

brew cask install iterm2
brew install itermocil
brew install ranger

brew install graphviz
brew install calc
brew install gnuplot

#Browsers
brew cask install firefox
brew cask install torbrowser
brew install elinks
brew install w3m
brew install mutt
brew install lynx

brew install task
brew install tasksh
brew install taskd
brew install timewarrior
brew install tty-clock
brew install vit
brew install tag

brew install teapot
brew install toilet
brew install somafm-cli
brew install shpotify
brew install borg
brew install boxes
brew install ansiweather
brew install asciiquarium
brew install cheat
brew install cpanimus
brew install cowsay
brew install figlet
brew install fortune
brew install sl
brew install youtube-dl
brew install nmap
brew install pandoc
brew install pandoc-citeproc
brew install bibutils
brew install bibtexconv
brew install bibclean
brew install pianobar
brew install poppler
brew install s-search
brew install rem
brew install wiki
brew install libcaca


#torrent client
brew cask install utorrent
brew cask install spotify

#anti malware
brew cask install malwarebytes-anti-malware


brew cask install karabiner
brew cask install seil

#media players
brew install mp3blaster

brew doctor;
brew cleanup;
brew cask cleanup;


