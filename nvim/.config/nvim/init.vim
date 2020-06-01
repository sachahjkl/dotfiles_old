let mapleader = ' '

syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set rnu nu
set nowrap
set smartcase
set noswapfile
set nobackup
let &undodir = stdpath('data') . '/undodir'
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin(stdpath('data') . '/plugged')

Plug 'morhetz/gruvbox'
Plug 'tomasiser/vim-code-dark'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'vim-utils/vim-man'
"Plug 'ycm-core/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ap/vim-css-color'
Plug 'PotatoesMaster/i3-vim-syntax'

call plug#end()

colorscheme codedark
set background=dark

let g:airline#extension#tabline#enabled = 1

" Automatically deletes all trailing whitespace and newlines at end of file on save.
autocmd BufWritePre * %s/8s8+$//e
autocmd BufWritepre * %s/8n8+8%$//e

" Save file as sudo on files that require root permission
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitbelow splitright

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Enable autocompletion:
set wildmode=longest,list,full

