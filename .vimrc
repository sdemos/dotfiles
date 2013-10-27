" set incsearch
" set number
" set showmatch
" set shiftwidth=3
" set autoindent
" set scrolloff=5
" set ignorecase
" set smartcase
" set wildmode=longest,list
" set nosmartindent
" set list
" set nocompatible
" set showcmd
" set ruler
" set showmode
" set listchars=tab:>-,trail:-,eol:$,nbsp:%,
" let python_highlight_all=1
" syntax on
" inoremap jj <Esc>
" set tabstop=4
" set shiftwidth=4
" set expandtab

" /* vim:set cin ft=c sw=4 sts=4 ts=8 et ai cino=Ls\:0t0(0 : -*- mode:c;fill-column:80;tab-width:8;c-basic-offset:4;indent-tabs-mode:nil;c-file-style:"k&r" -*-*/



""""""""""""""""""""""""""""""""""""""""""""""""
" .vimrc                                       "
" author: Stephen Demos <stphndemos@gmail.com> "
""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible

" first, set a leader
let mapleader = " "

" source bundles and vundle
source ~/.vimrc_vundle
source ~/.vimrc_bundles

" make editing and sourcing .vimrc easier
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" make writing multi-line abbrevs easier
vnoremap <C-c> :s/^/\\\<\C\R\>/<CR>:nohlsearch<CR>
vnoremap <C-A-c> :s/\\<CR[>]//<CR>:nohlsearch<CR>

" general main abbreviations!
iab cmainr 
\<CR>int main (int argc, char *argv)
\<CR>{
\<CR>}jkkA;jki<CR>jkhxli

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
    autocmd FileType c :set cino=Ls\:0t0(0
    autocmd FileType c :iab mainr cmainabbrev
augroup END

" Autocommands for haskell
augroup filetype_haskell
    " clear any autocmds for this group already set
    autocmd!
    autocmd FileType haskell nnoremap <buffer> <leader>c I-- <esc>
    autocmd FileType haskell nnoremap <buffer> <leader>u ^xxx
augroup END

