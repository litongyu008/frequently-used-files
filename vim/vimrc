" Create: 2018-03-20
" Update: 2018-07-02
" Editor: Tongyu Li

" ------------------------------------------------------------
"  Settings
" ------------------------------------------------------------

set nu
set showcmd
set showmode
set t_Co=256
set hlsearch
set relativenumber
set backspace=indent,eol,start

" Jump to the position when last quit
if has("autocmd")
    au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
endif

" ------------------------------------------------------------
"  Indention Options
" ------------------------------------------------------------

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set shiftround
set fdm=manual

" ------------------------------------------------------------
"  Text Rendering Options
" ------------------------------------------------------------

set linespace=0
set linebreak
set list
set listchars=tab:>-,trail:-
syntax enable
syntax on

" ------------------------------------------------------------
"  Encoding
" -----------------------------------------------------------

set encoding=utf-8
set termencoding=utf-8
set langmenu=zh_CN.UTF-8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

" ------------------------------------------------------------
"  Bundle
" ------------------------------------------------------------

set nocompatible              " be improved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Common
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'

" Style
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'     "show a git diff in the gutter and stages/undoes hunks
Plugin 'mhinz/vim-signify'

" Lint
Plugin 'w0rp/ale'

" Nodejs
Plugin 'moll/vim-node'

" Python
Plugin 'nvie/vim-flake8'
Plugin 'tell-k/vim-autopep8'

" Async Completion
Plugin 'maralla/completor.vim'

call vundle#end()
filetype plugin indent on

" ------------------------------------------------------------
"  Airline & Themes
" ------------------------------------------------------------

set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_theme='angr'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#ale#enabled = 1

" ------------------------------------------------------------
"  Async Lint Engine
" ------------------------------------------------------------

let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0
let g:ale_echo_msg_format = '[%linter%][%severity%] %s'

" show next error
nnoremap <silent><C-J> :lnext<CR>
inoremap <silent><C-J> <C-O>:lnext<CR>
vnoremap <silent><C-J> :lnext<CR>

" show previous error
nnoremap <silent><C-K> :lprevious<CR>
inoremap <silent><C-K> <C-O>:lprevious<CR>
vnoremap <silent><C-K> :lprevious<CR>

" ------------------------------------------------------------
"  Tag Bar
" ------------------------------------------------------------

let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:tagbar_width=60
let g:tagbar_left=0
map <F3> :TagbarToggle<CR>

" ------------------------------------------------------------
"  Nerd Commenter
" ------------------------------------------------------------

let mapleader=','
map <F4> <leader>ci <CR>

" ------------------------------------------------------------
"  Vim-signify
" ------------------------------------------------------------
" To change the track branch, change the 'origin/master' below,
" then execute ':SignifyRefresh'

let g:signify_vcs_cmds = {'git': 'git diff origin/master --no-color --no-ext-diff -U0 -- %f'}

" ------------------------------------------------------------
"  Flake 8
" ------------------------------------------------------------
" To relax the maximum line length,
" put the following into your ~/.config/flake8 file:
" [flake8]
" max-line-length = 120

let g:flake8_show_quickfix=0
autocmd FileType python noremap <buffer> <F7> :call Flake8()<CR>

" ------------------------------------------------------------
"  Auto-pep8
" ------------------------------------------------------------

let g:autopep8_aggressive=2
let g:autopep8_disable_show_diff=1
let g:autopep8_max_line_length=120
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>

" ------------------------------------------------------------
"  Completor
" ------------------------------------------------------------

" let g:completor_node_binary=<node-bin>
" let g:completor_python_binary='<python-bin>'
