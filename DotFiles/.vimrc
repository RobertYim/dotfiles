" enable pathogen.vim plugin
execute pathogen#infect()
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
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
    set undodir=~/.vim/undo
endif

" NeoVim
set termguicolors

" Cursor Style
" highlight Cursor guifg=white guibg=black
" highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:hor100-Cursora-blinkon0
set guicursor=i:ver100-iCursor-blinkon5,v:block-vCursor
" highlight current line
set cursorline
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
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
"
" color scheme
color one
set background=dark
"
let g:one_allow_italics = 1                                       "One theme italic support
"
" Uncomment next line to set original monokai background color
" let g:molokai_original = 1
"
" Airline theme
let g:airline_theme='one'

" search
set incsearch
"set highlight 	" conflict with highlight current line
set ignorecase
set smartcase

" editor settings
set history=1000
set nocompatible
set nofoldenable                                                  " disable folding"
set confirm                                                       " prompt when existing from an unsaved file
set backspace=indent,eol,start                                    " More powerful backspacing
set t_Co=256                                                      " Explicitly tell vim that the terminal has 256 colors "
set mouse=a                                                       " use mouse in all modes
set report=0                                                      " always report number of lines changed                "
" set nowrap                                                        " dont wrap lines
set wrap
set scrolloff=5                                                   " 5 lines above/below cursor when scrolling
set number                                                        " show line numbers
set relativenumber
set showmatch                                                     " show matching bracket (briefly jump)
set showcmd                                                       " show typed command in status bar
set title                                                         " show file in titlebar
set laststatus=2                                                  " use 2 lines for the status bar
set matchtime=2                                                   " show matching bracket for 0.2 seconds
set matchpairs+=<:>                                               " specially for html
" set relativenumber

" Default Indentation
set autoindent
" set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace
set shiftwidth=4    " indent width
" set textwidth=79
" set smarttab
set expandtab       " expand tab to space

autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml,yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
" js
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" Explore Mode
let g:netrw_liststyle=3
" map <F3> :Explore<cr>   " conflict with NERDTree


"-----------------
" Plugin settings
"-----------------
" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" easy-motion
let g:EasyMotion_leader_key = '<Leader><Leader>'

" Nerd Tree
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$', '\.DS_Store$']
" let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1

" ZenCoding
" let g:user_emmet_expandabbr_key='<C-g>'

" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" SuperTab
" let g:SuperTabDefultCompletionType='context'
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2

" ctrlp
" set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
" let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" Keybindings for plugin toggle
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
nmap <F3> :NERDTreeToggle<cr>
nmap <F4> :IndentGuidesToggle<cr>
nnoremap <leader>a :Ack
nnoremap <leader>v V`]

" YouCompleteMe
" let g:ycm_global_ycm_extra_conf = '~/Documents/dotfiles/DotFiles/.ycm_extra_conf.py'
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

"------------------
" Useful Functions
"------------------
" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

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

" sublime key bindings
" nmap <D-]> >>
" nmap <D-[> <<
" vmap <D-[> <gv
" vmap <D-]> >gv

" eggcache vim
nnoremap ; :
" :command W w
" :command WQ wq
" :command Wq wq
" :command Q q
" :command Qa qa
" :command QA qa

" for macvim
" if has("gui_running")
    " set go=aAce  " remove toolbar
    " "set transparency=30
    " set guifont=Monaco:h12
    " " set guifont=Source\ Code\ Pro:r14
    " set showtabline=1
    " set columns=120
    " set lines=60
    " " noremap <D-M-Left> :tabprevious<cr>
    " " noremap <D-M-Right> :tabnext<cr>
    " map <D-1> 1gt
    " map <D-2> 2gt
    " map <D-3> 3gt
    " map <D-4> 4gt
    " map <D-5> 5gt
    " map <D-6> 6gt
    " map <D-7> 7gt
    " map <D-8> 8gt
    " map <D-9> 9gt
    " map <D-0> :tablast<CR>
" endif

