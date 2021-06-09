filetype plugin indent on

set history=100
set laststatus=2
set noswapfile
set nobackup

set nu
set relativenumber
let python_highlight_all=1
set clipboard=unnamed
set splitbelow
set encoding=UTF-8
set incsearch 
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set noerrorbells
set showmatch
syntax on
set splitright splitright
set mouse=a
set updatetime=100
set foldmethod=marker
set foldmarker={{{{{,}}}}}


" turn off arrow keys
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
noremap  <Up>    <NOP>
noremap  <Down>  <NOP>
noremap  <Left>  <NOP>
noremap  <Right> <NOP>

" vim splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
tnoremap <Esc> <C-\><C-n>

" remapping folding
nnoremap <space> za
" nnoremap za <space>

" leader keys
let mapleader = ";"
let maplocalleader = ","

" Split window
noremap <leader>h :<C-u>split<CR>
noremap <leader>v :<C-u>vsplit<CR>
