set number
set nocompatible
syntax on
set showmode
set showcmd
set mouse=a
set encoding=utf-8
set t_Co=256
filetype indent on
set listchars=tab:>·,trail:■,extends:>,precedes:<
set list
set colorcolumn=80,120
set backspace=indent,eol,start

" windows
if has("gui_running")
  " GUI is running or is about to start.
  set lines=32 columns=115
  set guifont=Consolas:h12
endif

if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end

" 自动缩进
set autoindent
" tab显示的空格数
set tabstop=4
" 缩进字符数
set shiftwidth=4
" tab自动转空格
set expandtab
" tab自动转空格数
set softtabstop=4

set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase

source ~/.vim/config/coc_vim.vimrc
source ~/.vim/config/nerdtree.vimrc
source ~/.vim/config/plug.vimrc
source ~/.vim/config/airline_vim.vimrc
source ~/.vim/config/tab_config.vimrc
source ~/.vim/config/fzf_vim.vimrc
