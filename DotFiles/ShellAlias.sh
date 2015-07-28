alias crul="curl"
alias df='df -h'
alias systemLog='less +F /var/log/system.log'
#alias xflux='$HOME/Downloads/software/xflux -l 23.2 -g 113.2 -k 4600'
alias cp='cp -iv'
alias mv='mv -vi'
alias mkdir="mkdir -p"
alias ln='ln -v'
alias ...='../..'
alias roll="$HOME/Documents/tools/roll.py"
# alias goagent='python $HOME/Downloads/goagent/local/proxy.py'
alias editHosts='sudo mvim /etc/hosts'
alias you-get-proxy='proxychains4 python3 $HOME/Documents/development/repos/you-get/you-get'
alias you-get='python3 $HOME/Documents/development/repos/you-get/you-get'
#alias drbox='$HOME/Documents/tools/Dropbox-Uploader/dropbox_uploader.sh'
#alias suspend.lock='$HOME/Dropbox/dotfiles/suspend_script.sh'
#alias D='cd /media/niko/PersonalData/'
#alias E='cd /media/niko/Music'
#alias F='cd /media/niko/Movie'
#alias G='cd /media/niko/Storage'
alias t="$HOME/Documents/tools/tTrans.py"
alias ping="ping -c 10"
alias gen.psd="$HOME/Documents/tools/generate_password.py"
#alias remove_old_kernel='$HOME/Dropbox/dotfiles/remove_old_kernel.sh'
alias h="history"
alias editAlias='mvim /Users/niko/Documents/dotfiles/DotFiles/ShellAlias.sh'
alias editPac='mvim $HOME/.ShadowsocksX/user-rule.txt'
alias tt='tmux attach'
alias l='ls -alh'
alias luTorrent="$HOME/Documents/development/repos/LuTorrent/lutorrent.py"
alias proxyIP="proxychains4 curl ipinfo.io"
alias rentCalculatior="python $HOME/Documents/tools/rent_calculator.py"
alias fetchMail="$HOME/Documents/tools/mailinator.py"
alias WoW="cat $HOME/Dropbox/PDS/WOWO.txt"
alias baiduPan="$HOME/Documents/development/repos/iScript/pan.baidu.com.py"
alias 115py="$HOME/Documents/development/repos/iScript/115.py"
alias unzip="$HOME/Documents/development/repos/iScript/unzip.py"
alias btPy="/Users/niko/Documents/development/repos/iScript/bt.py"
alias rsync="rsync -avP"
alias du="du -sh"
alias traceWithIPinfo="$HOME/Documents/tools/trace.sh"
alias wifiMasterKey="$HOME/Documents/tools/wifiMasterKey/wifiKeySearch.py"
alias sslocal="$HOME/Documents/development/repos/shadowsocks/shadowsocks/local.py"


# Mac only
alias openFTPServer="sudo launchctl load -w /System/Library/LaunchDaemons/ftp.plist"
alias closeFTPServer="sudo launchctl unload -w /System/Library/LaunchDaemons/ftp.plist"
#alias openWinDisk='open /Volumes/win7/Users/niko/Downloads'
alias reloadSound='sudo kextunload /System/Library/Extensions/AppleHDA.kext && sudo kextload /System/Library/Extensions/AppleHDA.kext'
alias flushDNS="sudo killall -HUP mDNSResponder" ## 10.9
# alias flushDNS="sudo discoveryutil udnsflushcaches" ## 10.10
# alias flushDNS="dscacheutil -flushcache" ## 10.6
alias mountSsdEFI="diskutil mount /dev/disk0s1"
alias mountHddEFI="diskutil mount /dev/disk1s1"
alias wifi="networksetup -setairportnetwork en0 '(╯‵□′)╯︵┻━┻'"
# alias vim="mvim"
alias monitorSleep="pmset displaysleepnow"
alias trash="$HOME/Documents/tools/trash.sh"

# OpenWrt Scripts
alias listWiFiDevices="ssh newifi 'sh -s' < $HOME/Documents/dotfiles/OpenWrtScripts/listDevice.sh"
alias rebootRouter="ssh newifi 'sh -s' < $HOME/Documents/dotfiles/OpenWrtScripts/rebootRouter.sh"
alias reloadRouter="ssh newifi 'sh -s' < $HOME/Documents/dotfiles/OpenWrtScripts/reloadNetwork.sh"

# ADB Android
alias adbMountReadWriteSystem="adb shell mount -o remount -o rw /system"
