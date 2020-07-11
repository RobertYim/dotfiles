alias e="$EDITOR"
alias crul="curl"
alias df='df -H'
alias cp='cp -iv'
alias mv='mv -vi'
alias mkdir="mkdir -p"
alias ln='ln -v'
alias ...='../..'
alias ping="ping -c 10"
alias ping6="ping6 -c 10"
alias h="history"
alias editAlias='e $HOME/Documents/dotfiles/DotFiles/ShellAlias.bash'
alias tt='tmux attach'
alias l='ls -alh'
alias rsync="rsync -avP"
alias du="du -sh"
alias ccal='cal | grep --color -EC6 "\b$(date +%e | sed "s/ //g")"'
alias fakingBusy="cat /dev/urandom|hexdump -C | ag 'ca fe'"
alias reloadZshrc="source $HOME/.zshrc"
alias setProxy="export https_proxy=http://127.0.0.1:9000;export http_proxy=http://127.0.0.1:9000"
alias unSetProxy="export https_proxy= ; export http_proxy= "
alias mongod="mongod --config /usr/local/etc/mongod.conf"
alias gcl="git clone --recursive --depth 1"
alias rclone="rclone -P --stats-one-line"
alias ytd1080="youtube-dl -f 137+140"

# macOS only
if [[ $OSTYPE == darwin* ]]; then
# alias openFTPServer="sudo launchctl load -w /System/Library/LaunchDaemons/ftp.plist"
# alias closeFTPServer="sudo launchctl unload -w /System/Library/LaunchDaemons/ftp.plist"
# alias reloadSound='sudo kextunload /System/Library/Extensions/AppleHDA.kext && sudo kextload /System/Library/Extensions/AppleHDA.kext && sleep 2 && hs -c "hs.timer.doAfter(1, hs.reload)" ' # && hs -c "hs.reload()" # Reload Hammerspoon after reloading kext
alias systemLog='less +F /var/log/system.log'
alias reloadCamera="sudo killall VDCAssistant"
alias flushDNS="sudo killall -HUP mDNSResponder" ## 10.9 and 10.11
# alias flushDNS="sudo discoveryutil udnsflushcaches" ## 10.10
# alias flushDNS="dscacheutil -flushcache" ## 10.6
# alias wifi="networksetup -setairportnetwork en1 '(╯‵□′)╯︵┻━┻'"
alias vi="nvim"
alias turnOffMonitors="pmset displaysleepnow"
alias sleepNow="(sleep 5 && pmset sleepnow) & ; disown"
# alias tmux="tmux -CC"
alias afk="(sleep 2700 && osascript -e 'tell application \"System Events\" to keystroke \"q\" using {control down, command down}') &"
fi

if [[ $OSTYPE == linux* ]]; then
alias turnOffMonitors="xset dpms force off"
fi

# OpenWrt Scripts
alias listRouterDevices="ssh newifi 'sh -s' < $HOME/Documents/dotfiles/OpenWrtScripts/listDevice.sh"
alias rebootRouter="ssh newifi 'sh -s' < $HOME/Documents/dotfiles/OpenWrtScripts/rebootRouter.sh"
alias reloadRouter="ssh newifi 'sh -s' < $HOME/Documents/dotfiles/OpenWrtScripts/reloadNetwork.sh"
alias routerScan="ssh newifi 'sh -s' < $HOME/Documents/dotfiles/OpenWrtScripts/scan.sh"

# ADB Android
alias adbMountReadWriteFileSystem="adb shell mount -o remount -o rw /system"
