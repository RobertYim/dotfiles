alias e="$EDITOR"
alias crul="curl"
alias df='df -h'
alias systemLog='less +F /var/log/system.log'
#alias xflux='$HOME/Downloads/software/xflux -l 23.2 -g 113.2 -k 4600'
alias cp='cp -iv'
alias mv='mv -vi'
alias mkdir="mkdir -p"
alias ln='ln -v'
alias ...='../..'
alias roll="python $HOME/Documents/tools/roll.py"
# alias goagent='python $HOME/Downloads/goagent/local/proxy.py'
alias editHosts='e $HOME/Documents/dotfiles/DotFiles/hosts.backup'
alias updateHosts='sudo zsh $HOME/Documents/tools/UpdateHosts.sh'
alias you-get='python3 $HOME/Documents/development/repos/you-get/you-get'
#alias drbox='$HOME/Documents/tools/Dropbox-Uploader/dropbox_uploader.sh'
alias t="python $HOME/Documents/tools/tTrans.py"
alias ping="ping -c 10"
alias ping6="ping6 -c 10"
# alias generatePwd="python $HOME/Documents/tools/generate_password.py"
#alias remove_old_kernel='$HOME/Dropbox/dotfiles/remove_old_kernel.sh'
alias h="history"
alias editAlias='e $HOME/Documents/dotfiles/DotFiles/ShellAlias.bash'
# alias editPac='e $HOME/.ShadowsocksX/user-rule.txt'
alias tt='tmux attach'
alias l='ls -alh'
# alias luTorrent="python $HOME/Documents/development/repos/LuTorrent/lutorrent.py"
alias proxyIP="proxychains4 curl ipinfo.io"
# alias rentCalculator="python $HOME/Documents/tools/rent_calculator.py"
# alias fetchMail="python $HOME/Documents/tools/mailinator.py"
alias WoW="cat $HOME/Dropbox/WOWO.txt"
alias baiduPan="python $HOME/Documents/development/repos/iScript/pan.baidu.com.py"
# alias unzip="python $HOME/Documents/development/repos/iScript/unzip.py"
# alias btPy="python $HOME/Documents/development/repos/iScript/bt.py"
alias rsync="rsync -avP"
alias du="du -sh"
alias traceWithIPinfo="$HOME/Documents/tools/trace.sh"
alias wifiMasterKey="python $HOME/Documents/tools/wifiMasterKey/wifiKeySearch.py"
alias wifiMasterKey2="python $HOME/Documents/tools/WiFiMaster/WiFiMaster.py"
# alias sslocal="python $HOME/Documents/development/repos/shadowsocks/shadowsocks/local.py"
alias ccal='cal | grep --color -EC6 "\b$(date +%e | sed "s/ //g")"'
alias fakingBusy="cat /dev/urandom|hexdump -C | ag 'ca fe'"
alias updateGFWList="zsh $HOME/Documents/tools/updateGFWlist.sh"
alias simpleHTTPSServer="python $HOME/Documents/tools/simpleHTTPSServer.py $HOME/Documents/tools/server.pem"
alias reloadZshrc="source $HOME/.zshrc"
alias findSinaimgUploder="go run $HOME/Documents/tools/sinaimgUploader.go $1"
alias ssConfigToQRcode="$HOME/Documents/tools/ssConfigToQRcode.py $1 $2"
alias setProxy="export https_proxy=http://127.0.0.1:9000;export http_proxy=http://127.0.0.1:9000"
alias unSetProxy="export https_proxy= ; export http_proxy= "
alias mongod="mongod --config /usr/local/etc/mongod.conf"


# macOS only
alias openFTPServer="sudo launchctl load -w /System/Library/LaunchDaemons/ftp.plist"
alias closeFTPServer="sudo launchctl unload -w /System/Library/LaunchDaemons/ftp.plist"
#alias openWinDisk='open /Volumes/win7/Users/niko/Downloads'
alias reloadSound='sudo kextunload /System/Library/Extensions/AppleHDA.kext && sudo kextload /System/Library/Extensions/AppleHDA.kext && sleep 2 && hs -c "hs.timer.doAfter(1, hs.reload)" ' # && hs -c "hs.reload()" # Reload Hammerspoon after reloading kext
alias reloadCamera="sudo killall VDCAssistant"
alias flushDNS="sudo killall -HUP mDNSResponder" ## 10.9 and 10.11
# alias flushDNS="sudo discoveryutil udnsflushcaches" ## 10.10
# alias flushDNS="dscacheutil -flushcache" ## 10.6
alias mountDisk0EFI="diskutil mount /dev/disk0s1"
alias mountDisk1EFI="diskutil mount /dev/disk1s1"
# alias wifi="networksetup -setairportnetwork en1 '(╯‵□′)╯︵┻━┻'"
alias vim="nvim"
alias vi="nvim"
# alias vi="/Applications/MacVim.app/Contents/MacOS/Vim"
alias TurnOffMonitors="pmset displaysleepnow"
alias trash="$HOME/Documents/tools/trash.sh"
# alias spotify="$HOME/Documents/development/repos/SpotifyControl/SpotifyControl"
alias brewUpdate="export all_proxy=http://127.0.0.1:9000; brew upgrade && brew cleanup; export all_proxy="
alias silverBox="hdiutil attach $HOME/Dropbox/SilverBox.sparsebundle"
alias silverBoxEject="hdiutil detach /Volumes/SilverBox"
# alias tmux="tmux -CC"
alias unmountHDD="diskutil umount 'HDD'"
alias mountHDD="diskutil mount 'HDD'"

# OpenWrt Scripts
alias listWiFiDevices="ssh newifi 'sh -s' < $HOME/Documents/dotfiles/OpenWrtScripts/listDevice.sh"
alias rebootRouter="ssh newifi 'sh -s' < $HOME/Documents/dotfiles/OpenWrtScripts/rebootRouter.sh"
alias reloadRouter="ssh newifi 'sh -s' < $HOME/Documents/dotfiles/OpenWrtScripts/reloadNetwork.sh"
# alias routerBridgeL="ssh newifi 'sh -s' < $HOME/Documents/dotfiles/OpenWrtScripts/bridgeLinle.sh"
# alias routerBridgeA="ssh newifi 'sh -s' < $HOME/Documents/dotfiles/OpenWrtScripts/bridgeA86481746.sh"

# ADB Android
alias adbMountReadWriteFileSystem="adb shell mount -o remount -o rw /system"
