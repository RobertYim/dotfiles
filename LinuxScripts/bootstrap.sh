#!/usr/bin/env bash

# Enable trim
sudo systemctl enable fstrim.timer
sudo systemctl start fstrim.timer

# Enable trackpad tapping and drag lock
#mkdir /etc/X11/xorg.conf.d
sudo ln -s $HOME/Documents/dotfiles/LinuxScripts/70-synaptics.conf /etc/X11/xorg.conf.d

# Map CapsLock to Ctrl
#cp ./keyboard /etc/default/keyboard
# localectl --no-convert set-x11-keymap us "" "" ctrl:nocaps

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
rm $HOME/.zshrc
ln -s $HOME/Documents/dotfiles/DotFiles/.zshrc $HOME
ln -s /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh $HOME/.oh-my-zsh/custom/

ln -s $HOME/Documents/dotfiles/DotFiles/.alacritty.yml $HOME

mkdir -p $HOME/.vim/autoload
mkdir -p $HOME/.vim/swaps
mkdir -p $HOME/.vim/backups
mkdir -p $HOME/.vim/bundle
mkdir -p $HOME/.config

ln -s $HOME/Documents/dotfiles/DotFiles/i3 $HOME/.config
ln -s $HOME/.vim $HOME/.config/nvim
ln -s $HOME/Documents/dotfiles/DotFiles/.vimrc $HOME/.config/nvim/init.vim
ln -s $HOME/Documents/dotfiles/DotFiles/coc-settings.json $HOME/.vim
# Install VimPlug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s $HOME/Documents/dotfiles/DotFiles/.emacs $HOME

ln -s $HOME/Documents/dotfiles/DotFiles/.gitconfig $HOME
ln -s $HOME/Documents/dotfiles/DotFiles/.gitignore_global $HOME

ln -s $HOME/Documents/dotfiles/DotFiles/.aria2 $HOME

ln -s $HOME/Documents/dotfiles/DotFiles/youtube-dl $HOME/.config

#ln -s $HOME/Documents/dotfiles/DotFiles/"Sublime Text 3"/* $HOME/"Library/Application Support/Sublime Text 3/Packages/User"
#ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin

ln -s $HOME/Documents/dotfiles/DotFiles/.tmux.conf $HOME

mkdir -p $HOME/.config/VSCodium
ln -s $HOME/Documents/dotfiles/DotFiles/Code/User $HOME/.config/VSCodium

ln -s $HOME/Documents/dotfiles/DotFiles/.npmrc $HOME

ln -s $HOME/Documents/dotfiles/DotFiles/.mpv $HOME

ln -s $HOME/Documents/dotfiles/DotFiles/.pip $HOME

ln -s $HOME/Documents/dotfiles/DotFiles/.wgetrc $HOME

# Download Rime Dictionary and unzip
ln -s $HOME/Documents/dotfiles/DotFiles/fcitx5 $HOME/.config
mkdir -p $HOME/.local/share/fcitx5
git clone --depth 1 git@gitlab.com:RobertYim/rime-settings.git ~/.local/share/fcitx5/rime
# Fcitx Skin
# https://github.com/hosxy/Fcitx5-Material-Color

# Rofi
ln -s $HOME/Documents/dotfiles/LinuxScripts/rofi $HOME/.config

# Polybar
ln -s $HOME/Documents/dotfiles/DotFiles/polybar $HOME/.config

# Picom
ln -s $HOME/Documents/dotfiles/DotFiles/picom.conf $HOME/.config


# GTK Dark Theme
echo "[Settings]
gtk-application-prefer-dark-theme=1" > $HOME/.config/gtk-3.0/settings.ini
echo "[Settings]
gtk-application-prefer-dark-theme=1" > $HOME/.config/gtk-4.0/settings.ini

# Fcitx
echo "
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=fcitx
" >> $HOME/.profile
