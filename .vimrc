""""""""""""""""""""""""""""""""""""""""""""""""
" .vimrc                                       "
" author: Stephen Demos <stphndemos@gmail.com> "
""""""""""""""""""""""""""""""""""""""""""""""""

" set 250 color
set t_Co=256
color demos_xterm

set nocompatible
filetype off
" use vundle
" when I modify this, run :PluginInstall!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'pbrisbin/vim-syntax-shakespeare'
Plugin 'raichoo/purescript-vim'
call vundle#end()
filetype plugin indent on

" first, set a leader
let mapleader = " "
let maplocalleader = "\\"

" make editing and sourcing .vimrc easier
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" make writing multi-line abbrevs easier
vnoremap <C-c> :s/^/\\\<\C\R\>/<CR>:nohlsearch<CR>
vnoremap <C-A-c> :s/\\<CR[>]//<CR>:nohlsearch<CR>

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
set tabstop=8
set shiftwidth=4
set softtabstop=4
set scrolloff=5
set smarttab
set et
set lazyredraw
set ttyfast

nnoremap <leader>c :setlocal spell spelllang=en_us<cr>

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
    autocmd BufEnter *.hs set formatprg=pointfree\ --stdin
    autocmd FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
    autocmd FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>
    autocmd FileType haskell nnoremap <buffer> <silent> <F3> :HdevtoolsInfo<CR>
augroup END

augroup filetype_make
    autocmd!
    autocmd FileType make :set noexpandtab
augroup END
