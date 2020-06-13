alias e="$EDITOR"
alias crul="curl"
alias df='df -H'
#alias xflux='$HOME/Downloads/software/xflux -l 23.2 -g 113.2 -k 4600'
alias cp='cp -iv'
alias mv='mv -vi'
alias mkdir="mkdir -p"
alias ln='ln -v'
alias ...='../..'
#alias drbox='$HOME/Documents/tools/Dropbox-Uploader/dropbox_uploader.sh'
alias t="$HOME/Documents/tools/youdao-translate.js"
alias ping="ping -c 10"
alias ping6="ping6 -c 10"
# alias generatePwd="python $HOME/Documents/tools/generate_password.py"
alias h="history"
alias editAlias='e $HOME/Documents/dotfiles/DotFiles/ShellAlias.bash'
alias tt='tmux attach'
alias l='ls -alh'
alias WoW="cat $HOME/'Google Drive'/WOWO.txt"
alias rsync="rsync -avP"
alias du="du -sh"
alias traceWithIPinfo="$HOME/Documents/tools/trace.sh"
alias wifiMasterKey="python $HOME/Documents/tools/wifiMasterKey/wifiKeySearch.py"
alias wifiMasterKey2="python $HOME/Documents/tools/WiFiMaster/WiFiMaster.py"
alias ccal='cal | grep --color -EC6 "\b$(date +%e | sed "s/ //g")"'
alias fakingBusy="cat /dev/urandom|hexdump -C | ag 'ca fe'"
alias simpleHTTPSServer="python $HOME/Documents/tools/simpleHTTPSServer.py $HOME/Documents/tools/server.pem"
alias reloadZshrc="source $HOME/.zshrc"
# alias findSinaimgUploder="go run $HOME/Documents/tools/sinaimgUploader.go $1"
# alias ssConfigToQRcode="$HOME/Documents/tools/ssConfigToQRcode.py $1 $2"
alias setProxy="export https_proxy=http://127.0.0.1:9000;export http_proxy=http://127.0.0.1:9000"
alias unSetProxy="export https_proxy= ; export http_proxy= "
alias mongod="mongod --config /usr/local/etc/mongod.conf"
alias getVPSStats="node $HOME/Documents/tools/getVPSStats.js"
alias gcl="git clone --recursive --depth 1"
alias kcpStart="$HOME/Documents/kcp/kcp.sh"
alias vrStart="$HOME/'Google Drive/backup'/v2ray/v2rayStartUp.sh"
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
alias mountRC500EFI="sudo diskutil mount EFIRC500"
alias mountHDDEFI="sudo diskutil mount EFIHDD"
# alias wifi="networksetup -setairportnetwork en1 '(╯‵□′)╯︵┻━┻'"
# alias vim="nvim"
alias vi="nvim"
alias turnOffMonitors="pmset displaysleepnow"
alias sleepNow="(sleep 5 && pmset sleepnow) & ; disown"
alias trash="$HOME/Documents/tools/trash.sh"
# alias spotify="$HOME/Documents/development/repos/SpotifyControl/SpotifyControl"
alias silverBox="hdiutil attach $HOME/'Google Drive'/SilverBox.sparsebundle"
alias silverBoxEject="hdiutil detach /Volumes/SilverBox"
# alias tmux="tmux -CC"
alias unmountHDD="diskutil umount 'HDD'"
alias mountHDD="diskutil mount 'HDD'"
alias dp="$HOME/Documents/tools/dp.sh"
fi

if [[ $OSTYPE == linux* ]]; then
alias turnOffMonitors="xset dpms force off"
fi

# OpenWrt Scripts
alias listRouterDevices="ssh newifi 'sh -s' < $HOME/Documents/dotfiles/OpenWrtScripts/listDevice.sh"
alias rebootRouter="ssh newifi 'sh -s' < $HOME/Documents/dotfiles/OpenWrtScripts/rebootRouter.sh"
alias reloadRouter="ssh newifi 'sh -s' < $HOME/Documents/dotfiles/OpenWrtScripts/reloadNetwork.sh"
alias routerScan="ssh newifi 'sh -s' < $HOME/Documents/dotfiles/OpenWrtScripts/scan.sh"
alias routerBridge2G="ssh newifi 'sh -s' < $HOME/Google\ Drive/backup/bridgeChinaNet2G.sh"
alias routerBridge5G="ssh newifi 'sh -s' < $HOME/Google\ Drive/backup/bridgeTP5G.sh"

# ADB Android
alias adbMountReadWriteFileSystem="adb shell mount -o remount -o rw /system"
