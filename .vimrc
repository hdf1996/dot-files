set nocompatible              " be iMproved, required
filetype off                  " required

let NERDTreeShowHidden=1
set noswapfile
set ai
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Navigation :)
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set number

" Style
syntax on

call vundle#end()            " required
filetype plugin indent on    " required
