" VISUAL (Vanity)
set background=dark
colorscheme smyck
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1                        " allows pipe(insert) and block cursor(edit)
let $NVIM_TUI_ENABLE_TRUE_COLOR=1                          " allow ITERM to show true colors

" Settings
let javascript_enable_domhtmlcss=1
let NERDTreeShowHidden=1
let python_highlight_all=1

" HACK: NeoVim has an issue with cntrl h 
if has('nvim')
  nmap <BS> <C-W>h
endif

" reduce command delay
set timeoutlen=1000 ttimeoutlen=100

" cursorline
hi CursorLine   cterm=NONE ctermbg=235
set cursorline

" Always show statusline
set laststatus=2

" don't bother with vi compatibility
set nocompatible
" enable syntax highlighting
syntax enable

filetype plugin indent on
filetype plugin on

set autoindent
set autoread                                                 " reload files when changed on disk, i.e. via `git checkout`
set backspace=2                                              " Fix broken backspace in some setups
set backupcopy=yes                                           " see :help crontab
set clipboard=unnamedplus                                    " yank and paste with the system clipboard
set directory-=.                                             " don't store swapfiles in the current directory
set encoding=utf-8
set expandtab                                                " expand tabs to spaces
set gdefault                                                 " add the g flat to search/replace by default
set ignorecase                                               " case-insensitive search
set incsearch                                                " search as you type
set laststatus=2                                             " always show statusline
set list                                                     " show trailing whitespace
set listchars=trail:▫
set mouse=a                                                  " enable mouse
set number                                                   " show line numbers
set noerrorbells                                             " disable error bells
set nolist
set ruler                                                    " show where you are
set scrolloff=3                                              " show context above/below cursorline
set shiftwidth=2                                             " normal mode indentation commands use 2 spaces
set showcmd                                                  " show the command as it's being typed
set showmode                                                 " show the current mode
set smartcase                                                " case-sensitive search if any caps
set softtabstop=2                                            " insert mode tab and backspace use 2 spaces
set tabstop=2                                                " actual tabs occupy 8 characters
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu                                                 " show a navigable menu for tab completion
set wildmode=longest,list,full

" keyboard shortcuts
let mapleader = ','
" navigate windows
map <C-h> <C-w>h              
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" save 
map <C-s> :w<CR>
vmap <C-s> <C-c>:w<CR>
imap <C-s> <C-c>:w<CR>

map <silent> <leader>V :source ~/.nvimrc<CR>:filetype detect<CR>:exe ":echo 'nvimrc reloaded'"<CR>

"fast switching between buffers
map gn :bn<cr>
map gp :bp<cr>

"close buffer while opening next(no buffer left behind!)
map gd :bp<bar>:bd #<CR>

map tn :tabnext<cr>
map tp :tabprevious<cr>
map td :tabclose<cr>
"esc clears search results
nnoremap <esc> :noh<return><esc>

" in case you forgot to sudo
cmap w!! %!sudo tee > /dev/null %

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind \ (backward slash) to grep shortcut
" command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
nnoremap \ :Ag<SPACE>

" load plugins managed by vim-plug
if filereadable(expand("~/.nvimrc.plugins"))
  source ~/.nvimrc.plugins
endif

" automatic commands
if has("autocmd")
  " JSON as js
  autocmd BufRead, BufNewFile *.json set filetype=json syntax=javascript
  " fdoc is yaml
  autocmd BufRead,BufNewFile *.fdoc set filetype=yaml
  " md is markdown
  autocmd BufRead,BufNewFile *.md set filetype=markdown
  " ejs is html
  autocmd BufRead,BufNewFile *.ejs set filetype=html
  " automatically rebalance windows on vim resize
  autocmd VimResized * :wincmd =
endif

" VANITY
:set fillchars+=vert:\ 
:highlight NonText ctermfg=grey
:highlight VertSplit guifg=#5D5D5D

" Go crazy!
if filereadable(expand("~/.nvimrc.local"))
  " In your .vimrc.local, you might like:
  "
  " set autowrite
  " set nocursorline
  " set nowritebackup
  " set whichwrap+=<,>,h,l,[,] " Wrap arrow keys between lines
  "
  " autocmd! bufwritepost .vimrc source ~/.vimrc
  " noremap! jj <ESC>
  source ~/.nvimrc.local
endif
