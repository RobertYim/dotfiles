#!/usr/bin/env /sh
PLUGINDIR=$HOME/.vim/bundle

# list plugin repos here, seprating by space
PLUGINS="https://github.com/vim-airline/vim-airline
    https://github.com/easymotion/vim-easymotion
    https://github.com/tpope/vim-commentary
    https://github.com/Raimondi/delimitMate
    https://github.com/tpope/vim-surround
    https://github.com/roxma/nvim-yarp
    https://github.com/ncm2/ncm2
    https://github.com/ncm2/ncm2-path
    https://github.com/ncm2/ncm2-bufword
    https://github.com/ncm2/ncm2-tmux
    "

cd $PLUGINDIR

for i in $PLUGINS; do
    echo $i
    git clone --depth 1 $i
    echo ""
done

echo "Done."
