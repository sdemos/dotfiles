""""""""""""""""""""""""""""""""""""""""""""""""
" .vimrc                                       "
" author: Stephen Demos <stphndemos@gmail.com> "
""""""""""""""""""""""""""""""""""""""""""""""""

" set 250 color
set t_Co=256
color demos_xterm

filetype off
" use vundle
" when I modify this, run :PluginInstall!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
"Plugin 'gilligan/vim-lldb'
"Plugin 'mbbill/undotree'
Plugin 'pbrisbin/vim-syntax-shakespeare'
Plugin 'groenewege/vim-less'
Plugin 'the-lambda-church/coquille'
Plugin 'def-lkb/vimbufsync'
Plugin 'fatih/vim-go'
call vundle#end()
filetype plugin indent on

" first, set a leader
let mapleader = "'"
let maplocalleader = "\\"

" make editing and sourcing .vimrc easier
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" I hate search hilighting, but it is useful
nnoremap <leader>hl :hlsearch<CR>
nnoremap <leader>lh :nohlsearch<CR>

" make it easier to get into normal mode
inoremap jk <esc>

" set some general settings for all files
set number
set relativenumber
set nowrap
set ruler
set showcmd
set showmode
set listchars=tab:>-,trail:-,eol:$,nbsp:%,
syntax on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set scrolloff=5
set et

" Maps Coquille commands to <F2> (Undo), <F3> (Next), <F4> (ToCursor)
au FileType coq CoqLaunch
au FileType coq call coquille#FNMapping()
au Filetype coq nnoremap <buffer> <leader>n :CoqNext<cr>
au Filetype coq nnoremap <buffer> <leader>u :CoqUndo<cr>
au Filetype coq nnoremap <buffer> <leader>t :CoqToCursor<cr>
au Filetype coq nnoremap <buffer> <leader>k :CoqKill<cr>
au Filetype coq nnoremap <buffer> <leader>d :GotoDot<cr>
au Filetype coq set shiftwidth=2
au Filetype coq set tabstop=2

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

augroup filetype_golang
    autocmd!
    autocmd FileType go let g:go_highlight_functions = 1
    autocmd FileType go let g:go_highlight_methods = 1
    autocmd FileType go let g:go_highlight_structs = 1
    autocmd FileType go let g:go_highlight_interfaces = 1
    autocmd FileType go let g:go_highlight_operators = 1
    autocmd FileType go let g:go_highlight_build_constraints = 1
    autocmd FileType go let g:go_play_open_browser = 0
    autocmd FileType go let g:go_fmt_autosave = 0
    autocmd FileType go set equalprg=gofmt
augroup END
