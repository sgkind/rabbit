" 基本配置
set number
filetype plugin indent on
set showmatch
set shiftwidth=2
set tabstop=2
set encoding=utf-8
set hlsearch
set autoindent
set colorcolumn=80

set nobackup
set noswapfile
set nowritebackup
set noundofile

set nocompatible

" 配套插件
call plug#begin('~/.config/nvim/plugged')


call plug#end()

:lua require("plugins")
:lua require("config/lsp")
:lua require("config/others")
:lua require("config/rust-tools")
:lua require("config/keybindings")
