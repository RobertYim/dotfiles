" Vim-plug
call plug#begin('~/.vim/bundle')
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'},
Plug 'leafgarland/typescript-vim'
call plug#end()

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
" When the <Enter> key is pressed while the popup menu is visible, it only
" hides the menu. Use this mapping to close the menu and also start a new
" line.
" inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
" Use <TAB> to select the popup menu:
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


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
color gruvbox
" let g:airline_theme='onehalfdark'
set background=dark
"
" Airline theme
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'

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


autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
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
" Ale
" let g:ale_sign_error = '●' " Less aggressive than the default '>>'
" let g:ale_sign_warning = '.'
" let g:ale_lint_on_enter = 0 " Less distracting when opening a new file

" easy-motion
let g:EasyMotion_leader_key = '<Leader><Leader>'

" Nerd Tree
" let NERDChristmasTree=0
" let NERDTreeWinSize=30
" let NERDTreeChDirMode=2
" let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$', '\.DS_Store$']
" let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
" let NERDTreeShowBookmarks=1

" ZenCoding
" let g:user_emmet_expandabbr_key='<C-g>'

" Ultisnips
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" SuperTab
" let g:SuperTabDefultCompletionType='context'
" let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
" let g:SuperTabRetainCompletionType=2

" ctrlp
" set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
" let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" Keybindings for plugin toggle
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
" nmap <F3> :NERDTreeToggle<cr>
nmap <F4> :IndentGuidesToggle<cr>
nnoremap <leader>a :Ack
nnoremap <leader>v V`]

" YouCompleteMe
" let g:ycm_global_ycm_extra_conf = '~/Documents/dotfiles/DotFiles/.ycm_extra_conf.py'
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'

" ncm2
" enable ncm2 for all buffers
" autocmd BufEnter * call ncm2#enable_for_buffer()
" IMPORTANTE: :help Ncm2PopupOpen for more inform
" set completeopt=noinsert,menuone,noselect
" wrap existing omnifunc
" Note that omnifunc does not run in background and may probably block the
" editor. If you don't want to be blocked by omnifunc too often, you could
" add 180ms delay before the omni wrapper:
"  'on_complete': ['ncm2#on_complete#delay', 180,
"               \ 'ncm2#on_complete#omni', 'csscomplete#CompleteCSS'],
" au User Ncm2Plugin call ncm2#register_source({
"         \ 'name' : 'css',
"         \ 'priority': 9,
"         \ 'subscope_enable': 1,
"         \ 'scope': ['css','scss'],
"         \ 'mark': 'css',
"         \ 'word_pattern': '[\w\-]+',
"         \ 'complete_pattern': ':\s*',
"         \ 'on_complete': ['ncm2#on_complete#omni', 'csscomplete#CompleteCSS'],
"     \ })

" CoC
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

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

