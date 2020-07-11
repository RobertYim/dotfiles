" Vim-plug
call plug#begin('~/.vim/bundle')
Plug 'morhetz/gruvbox'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'AndrewRadev/splitjoin.vim'
Plug 'honza/vim-snippets'
Plug 'ctrlpvim/ctrlp.vim'
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
color gruvbox
" let g:rehash256 = 1
" let g:molokai_original =1
" let g:airline_theme='onehalfdark'
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
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

" ctrlp
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" Keybindings for plugin toggle
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
" nmap <F3> :NERDTreeToggle<cr>
nmap <F4> :IndentGuidesToggle<cr>
" nnoremap <leader>a :Ack
nnoremap <leader>v V`]

" Vim-Go
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
autocmd FileType go nmap <Leader>i <Plug>(go-info)
" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction
autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_metalinter_deadline = "5s"
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
" let g:go_highlight_fields = 1

" CoC
set cmdheight=2
set updatetime=100
" don't give |ins-completion-menu| messages.
set shortmess+=I
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
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)
" Json comment highlight
autocmd FileType json syntax match Comment +\/\/.\+$+
let g:coc_snippet_next = '<tab>'

"------------------
" Useful Functions
"------------------
" easier navigation between split windows
" nnoremap <c-j> <c-w>j
" nnoremap <c-k> <c-w>k
" nnoremap <c-h> <c-w>h
" nnoremap <c-l> <c-w>l

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
