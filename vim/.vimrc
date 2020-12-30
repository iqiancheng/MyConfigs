" BASIC
set nocompatible
syntax on
set showmode
set showcmd
set mouse=a
set encoding=utf-8
set t_Co=256
filetype indent on

" INDENT
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

" APPEARANCE
set number
set cursorline
set textwidth=120
set wrap
set laststatus=2
set ruler

" SEARCH
set showmatch
set hlsearch
set incsearch
set ignorecase

" EDIT
set undofile
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//
set undodir=~/.vim/.undo//
set history=1000
set autoread
set listchars=tab:»■,trail:■
set list
set wildmenu
set wildmode=longest:list,full