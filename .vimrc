set nu
set ruler
" set cursorline
set syntax=on
set autoindent
set smartindent
filetype indent on
set cindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set hlsearch
set backspace=2
set mouse=a

" Clear highlighting on escape in normal mode
nnoremap <esc> :noh<return><esc>

" needed so that vim still understands escape sequences
nnoremap <esc>^[ <esc>^[

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim' 

" vim-less
Plugin 'groenewege/vim-less'

" editorconfig
Bundle 'editorconfig/editorconfig-vim'

Plugin 'scrooloose/nerdtree'

Bundle 'xolox/vim-misc'

Bundle 'fatih/vim-go'

Plugin 'chr4/nginx.vim'

Plugin 'avakhov/vim-yaml'

" All of your Plugins must be added before the following line
call vundle#end()            " required
syntax on
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
