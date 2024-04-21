" neovim config
" created by anonzerg@proton.me
" mar 3, 2023

" disable compatibility to old-time vi
set nocompatible

" show matching parantheses
set showmatch

" case insensitive search
set ignorecase

" enable mouse support
set mouse=a

" show line numbers
set number

" show relative numbers
set relativenumber

" number of columns occupied by a tab
set tabstop=2

" multiple spaces as tabstops so <BS> does the right thing
set softtabstop=2

" convert tabs to white space
set expandtab

" width for autoindents
set shiftwidth=2

" indent a new line the same amount as the line just typed
set autoindent

" split windows below and right
set splitbelow splitright

" show file name in title bar
set title

" speed up scrolling in vim
set ttimeoutlen=0

" get bash-like tab completions
set wildmenu

" highlight search
set hlsearch

" incremental search
set incsearch

" disable creating swap file
set noswapfile

" allow auto-indenting depending on file type
filetype plugin indent on

" syntax highlighting
syntax on

" directory to store backup files
set backupdir=~/.cache/vim

" jump to the last position when reopening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" display commands and key sequences on status bar.
set showcmd

" confirmation before executing certain commands.
set confirm

" wrap lines at word boundaries.
set linebreak

" always display status bar.
set laststatus=2

" display current cursor position on status bar.
set ruler
