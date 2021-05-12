""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            Start Plug Manager                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""     
call plug#begin()
" filetype plugin indent on

Plug 'preservim/nerdtree' |            
            \ Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'icymind/NeoSolarized'
Plug 'jalvesaq/vimcmdline', {'for': ['python', 'racket']}
Plug 'jiangmiao/auto-pairs'
Plug 'w0rp/ale'
Plug 'vim-syntastic/syntastic', {'for': 'r'}
Plug 'jimhester/lintr', {'for': 'r'}
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'} 
Plug 'deoplete-plugins/deoplete-jedi', {'for': 'python'}
Plug 'ervandew/supertab'
Plug 'tpope/vim-commentary' 
Plug 'machakann/vim-highlightedyank'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'frazrepo/vim-rainbow'
Plug 'airblade/vim-gitgutter'
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            not always needed                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" Plug 'davidhalter/jedi-vim', {'for': 'python'}
Plug 'tpope/vim-surround'
Plug 'wlangstroth/vim-racket', {'for': 'racket'}
Plug 'junegunn/vim-easy-align', {'for': 'r'}
Plug 'ncm2/ncm2', {'for': 'r'}
Plug 'roxma/nvim-yarp', {'for': 'r'}
Plug 'gaalcaras/ncm-R', {'for': 'r'}
Plug 'jalvesaq/Nvim-R', {'for': 'r','branch': 'stable'}
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" Plug 'ncm2/ncm2-ultisnips', {'for': 'r'}
" Plug 'ncm2/ncm2-bufword', {'for': 'r'}
" Plug 'ncm2/ncm2-path', {'for': 'r'}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            New; to be evaluated                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" startup
Plug 'mhinz/vim-startify'
" LaTex
Plug 'lervag/vimtex'


call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             End plugin manager                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
