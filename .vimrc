set nocompatible              " be iMproved, required
filetype off                  " required

let NERDTreeShowHidden=1
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:ctrlp_dont_split = 'NERD'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
set splitright
set mouse=a
set noswapfile
set ai
set textwidth=100
set colorcolumn=+1
set showmode


" Shortcuts
nnoremap <leader><leader> <c-^>
noremap <Leader>s :update<CR>
noremap <Leader>q :qa<CR>


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
set wrap linebreak nolist
" Style
syntax on

" Nerdtree
augroup NERD
  au!
  autocmd VimEnter * NERDTree
  autocmd VimEnter * wincmd p
augroup END
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:nerdtree_tabs_open_on_gui_startup = 0
let g:nerdtree_tabs_open_on_console_startup = 0
call vundle#end()            " required
filetype plugin indent on    " required
