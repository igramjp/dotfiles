set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/taglist.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'matchit.zip'
Plugin 'othree/html5-syntax.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'
Plugin 'kannokanno/previm'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'rking/ag.vim'
Plugin 'sbl/scvim'

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
let g:rustfmt_autosave = 1
let g:previm_open_cmd = 'open -a Firefox'
let g:previm_disable_default_css = 1
let g:previm_custom_css_path = '~/Documents/Vim/github-markdown.css'
let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1
map <silent> <leader>t :TlistToggle<cr>
nmap <F8> :TagbarToggle<CR>
au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)
function! CtrlP_OpenAtCenter(action, line)
    let cw = bufwinnr('.')
    for n in range(0, bufnr('$'))
        let bw = bufwinnr(n)
        if bw == cw && buflisted(n)
            exe bw . 'wincmd w'
            break
        endif
    endfor
    call call('ctrlp#acceptfile', [a:action, a:line])
endfunction
let g:ctrlp_open_func = {'files': 'CtrlP_OpenAtCenter'}

"Color Scheme
set guifont=Inconsolata:h14
set background=dark
colorscheme molokai
