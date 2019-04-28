"Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'taglist.vim'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'matchit.zip'
Plugin 'othree/html5-syntax.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'rust-lang/rust.vim'

call vundle#end()
filetype plugin indent on

"System
set nobackup
set noswapfile
set autoread
set hidden

"Display
set number
set list listchars=tab:\▸\-
set title
set showcmd
set wildmode=list:longest
set visualbell
set ruler
set cursorline
set cursorcolumn
set laststatus=2 
set showmatch
set matchpairs=(:),{:},[:],<:>
syntax on

"Character
set fenc=utf-8
set virtualedit=onemore
set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
nnoremap j gj
nnoremap k gk

"Search
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

"Plugin
map <C-n> :NERDTreeToggle<CR>
let g:user_emmet_expandabbr_key = '<C-e>'

"Color Scheme
set guifont=Inconsolata:h14
set background=dark
colorscheme hybrid
