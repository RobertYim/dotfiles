" encoding dectection
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
" enable filetype dectection and ft specific plugin/indent
filetype plugin indent on
" enable syntax <highource>" encoding <dectection>set
syntax on
" map <leader>
let mapleader=","
let maplocalleader="\\"
" use system pasteboard
set clipboard=unnamed
" Centralize backups, swapfiles and undo history
" set backupdir=~/.vim/backups
set nobackup
set nowritebackup
set directory=~/.vim/swaps
if exists("&undodir")
    set undodir=~/.vim/undo
endif
set autowrite

" Cursor Style
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:hor100-Cursora-blinkon0
set guicursor=i:ver100-iCursor-blinkon5,v:block-vCursor
" highlight current line
" set cursorline
" set cursorcolumn

" remap
nmap L $
vmap L $
nmap H ^
vmap H ^
inoremap jk <ESC>
" reindent
nnoremap <Leader>i  mzgg=G`z
"
nmap <backspace> :nohl<CR>
inoremap <c-c> <ESC>
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
" 'Q' in normal mode enters Ex mode. You almost never want this.
nmap Q <Nop> 


" Useful with ralativenumber
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

"--------
" Vim UI
"--------
"True color support
"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if exists('+termguicolors')
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
endif
"
" color scheme
set background=dark
" color gruvbox
" let g:rehash256 = 1
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

" search
set incsearch
"set highlight 	" conflict with highlight current line
set ignorecase
set smartcase
set path+=**
set wildmenu

" editor settings
set history=1000
set nocompatible
" disable folding
set nofoldenable
" prompt when existing from an unsaved file
set confirm
" More powerful backspacing
set backspace=indent,eol,start
" Explicitly tell vim that the terminal has 256 colors
" set t_Co=256
" use mouse in all modes
set mouse=a
" always report number of lines changed
set report=0
set wrap
" 5 lines above/below cursor when scrolling
set scrolloff=5
" show line numbers
set number
set relativenumber
" show matching bracket (briefly jump)
set showmatch
" show typed command in status bar
set showcmd
" show file in titlebar
set title
" use 2 lines for the status bar
set laststatus=2
" show matching bracket for 0.2 seconds
set matchtime=2
" specially for html
set matchpairs+=<:>

" Default Indentation
" indent when
set autoindent
" set smartindent
" tab width
set tabstop=4
" backspace
set softtabstop=4
" indent width
set shiftwidth=4
" set textwidth=79
" set smarttab
" expand tab to space
set expandtab
set hidden

autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript,typescript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml,yaml,json setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
" js
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" Explore Mode
let g:netrw_liststyle=3
let g:netrw_altv=1
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_browse_split=4
map <F3> :Explore<cr>   " conflict with NERDTree


"-----------------
" Plugin settings
"-----------------

"------------------
" Useful Functions
"------------------
" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

" w!! to sudo & write a file
cmap w!! %!sudo tee >/dev/null %

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" eggcache vim
nnoremap ; :
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa
