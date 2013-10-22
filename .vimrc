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

""""""""""""""""""""""""""""""""""""""""""""""""
" .vimrc                                       "
" author: Stephen Demos <stphndemos@gmail.com> "
""""""""""""""""""""""""""""""""""""""""""""""""

" first, set a leader
let mapleader = " "

" make editing and sourcing .vimrc easier
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" make it easier to get into normal mode
inoremap jk <esc>

" set some general settings for all files
set number
set ruler
set showcmd
filetype on
set autoindent
set showmode
set listchars=tab:>-,trail:-,eol:$,nbsp:%,
syntax on

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
    autocmd FileType c nnoremap <buffer> <localleader>c I// <esc>
    " uncomment the line you are on
    autocmd FileType c nnoremap <buffer> <localleader>u ^xxx
augroup END

" Autocommands for haskell
augroup filetype_haskell
    " clear any autocmds for this group already set
    autocmd!
    autocmd FileType haskell nnoremap <buffer> <leader>c I-- <esc>
    autocmd FileType haskell nnoremap <buffer> <leader>u ^xxx
augroup END

