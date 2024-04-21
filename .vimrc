" vimrc file
" created by anonzerg@proton.me
" sep 11. 2023

" turn off compatibility with vi.
if &compatible
  set nocompatible
endif

" enable automatic file type detection.
filetype on

" activate filetype-specific plugins.
filetype plugin on

" enable automatic indentation.
filetype indent on

" show line numbers.
set number

" show line numbers relative to current line.
set relativenumber

" set number of spaces for indentation.
set shiftwidth=2

" set number of spaces in a single tab.
set tabstop=2

" enhance completion menu appearance.
set wildmenu

" expand tabs into spaces.
set expandtab

" disable the creation of backup file.
set nobackup

" enable syntax highlighting.
syntax enable

" disable the creation of swap file.
set noswapfile

" set maximum line length.
set textwidth=80

" always display status bar.
set laststatus=2

" display current cursor position on status bar.
set ruler

" show file title on status bar.
set title

" wrap lines at word boundaries.
set linebreak

" automatically wrap lines that exceed the window width.
set wrap

" confirmation before executing certain commands.
set confirm

" highlight search result.
set hlsearch

" dynamically update the search result.
set incsearch

" enable smartcase search pattern.
set smartcase

" display commands and key sequences on status bar.
set showcmd

" disable navigation history.
let g:netrw_save_history=0

" encoding to utf-8.
set encoding=utf-8

" jump to the last position when reopening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Show @@@ in the last line if it is truncated.
set display=truncate

" modelines have historically been a source of security/resource
" vulnerabilities -- disable by default, even when 'nocompatible' is set
set nomodeline

" I like highlighting strings inside C comments.
" Revert with ":unlet c_comment_strings".
let c_comment_strings=1

" load man.vim script.
runtime! ftplugin/man.vim

" enable mouse support.
set mouse=a
