set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Bundle 'vim-ruby/vim-ruby'
Plugin 'scrooloose/nerdtree.git'
Plugin 'tpope/vim-rails'
Plugin 'bling/vim-airline'
Plugin 'Yggdroot/indentLine'
Plugin 'mattn/emmet-vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Bundle 'edkolev/tmuxline.vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'Valloric/MatchTagAlways'
Plugin 'othree/html5.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'wincent/command-t'
Plugin 'rking/ag.vim'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'bufexplorer.zip'
" Plugin 'ervandew/supertab'
" Plugin 'Valloric/YouCompleteMe.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
colorscheme slate
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
set omnifunc=syntaxcomplete#Complete
set number
" set relativenumber
set expandtab
set shiftwidth=2
set softtabstop=2
execute pathogen#infect()
set backspace=indent,eol,start
let g:airline#extensions#tabline#enabled = 1
set t_Co=256
set clipboard=unnamed
set noswapfile
set laststatus=2
set lazyredraw
set ttyfast
set hlsearch
set incsearch
set wrap
set linebreak
set fileencodings=utf-8,cp1251,koi8-r,cp866
" for escaping from search with spacebar
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
" select all lines that was pasted last time
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'
" Silver search
nnoremap <Leader>a :Ag<Space>
" buffer browser
noremap <Leader>b :BufExplorer<CR>
" file browser
nnoremap <Tab> :NERDTreeToggle<CR>
" search highlighted
vnoremap // y/<C-R>"<CR>
" Language swap
set keymap=russian-jcukenwin
" default keymap - english
set iminsert=0
nnoremap k gk
nnoremap j gj
imap <C-F> <C-^>
