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
Plugin 'racer-rust/vim-racer'

call vundle#end()
filetype plugin indent on

"System
set nobackup
set noswapfile
set autoread
set hidden

"Display
set number
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
set encoding=utf-8
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
nnoremap <silent><C-n> :NERDTreeToggle<CR>
let g:user_emmet_expandabbr_key = '<C-e>'
let g:racer_cmd = '~/.cargo/bin/racer'
let g:racer_experimental_completer = 1
au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)

"Color Scheme
set guifont=Inconsolata:h14
set background=dark
colorscheme hybrid
