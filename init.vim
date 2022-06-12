call plug#begin('~/.config/nvim/plugged')

Plug 'olimorris/onedarkpro.nvim' " theme for vim
Plug 'joshdick/onedark.vim' " theme for vim
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' } " syntax highlighting
Plug 'neoclide/coc.nvim', {'branch': 'release'} " language server
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'Xuyuanp/nerdtree-git-plugin' " Git status in NerdTree
Plug 'ryanoasis/vim-devicons' " vim icon 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " search file
Plug 'junegunn/fzf.vim'
Plug 'Xuyuanp/nerdtree-git-plugin' " Git status in NerdTree
Plug 'jiangmiao/auto-pairs' " AutoPairs

call plug#end()

syntax on
colorscheme onedarkpro

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set encoding=UTF-8

" Disable backup
"set nobackup
"set nowb
"set noswapfile

set expandtab
set listchars=tab:\¦\       " Tab charactor 
set list
set foldmethod=syntax       " 
set foldnestmax=1
set foldlevelstart=0        "  
set ignorecase              " Enable case-sensitive

if has('win32')
  set clipboard=unnamed  
else
  set clipboard=unnamedplus
endif

nmap <F8> :TagbarToggle<CR>
