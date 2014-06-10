""""""""""""""""""""""""""""""""""""""""""""""""
" .vimrc                                       "
" author: Stephen Demos <stphndemos@gmail.com> "
""""""""""""""""""""""""""""""""""""""""""""""""

set   t_Co=256

color demos_xterm

set nocompatible

" first, set a leader
let mapleader = " "
let maplocalleader = "\\"

" set up pathogen to autoload stuff
"execute pathogen#infect()

" source bundles and vundle
"source ~/.vimrc_vundle
"source ~/.vimrc_bundles

" make editing and sourcing .vimrc easier
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" make writing multi-line abbrevs easier
vnoremap <C-c> :s/^/\\\<\C\R\>/<CR>:nohlsearch<CR>
vnoremap <C-A-c> :s/\\<CR[>]//<CR>:nohlsearch<CR>

" I hate search hilighting, but it is useful
nnoremap <leader>hl :hlsearch<CR>
nnoremap <leader>lh :nohlsearch<CR>

" make it easier to get into normal mode
inoremap jk <esc>

" set some general settings for all files
set number
set relativenumber
set laststatus=2
set backspace=indent,eol,start
set nowrap
set mouse=a
set ruler
set showcmd
set autoindent
set showmode
set listchars=tab:>-,trail:-,eol:$,nbsp:%,
syntax on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set scrolloff=5
set smarttab
set et

" Autocommands for python
augroup filetype_python
    " clear any autocmds for this group already set
    autocmd!
    " comment the line you are on
    autocmd FileType python nnoremap <buffer> <localleader>c I# <esc>
    " uncomment the line you are on
    autocmd FileType python nnoremap <buffer> <localleader>u ^xx
augroup END

" Autocommands for c
augroup filetype_c
    " clear any autocmds for this group already set
    autocmd!
    " comment the line you are on
    autocmd FileType c :nnoremap <buffer> <localleader>c I// <esc>
    " uncomment the line you are on
    autocmd FileType c :nnoremap <buffer> <localleader>u ^xxx
    autocmd FileType c :set cin
    autocmd FileType c :set et
    autocmd FileType c :set ai
augroup END

" Autocommands for haskell
augroup filetype_haskell
    " clear any autocmds for this group already set
    autocmd!
    autocmd FileType haskell nnoremap <buffer> <localleader>c I-- <esc>
    autocmd FileType haskell nnoremap <buffer> <localleader>u ^xxx
augroup END

augroup filetype_make
    autocmd!
    autocmd FileType make :set noexpandtab
augroup END
