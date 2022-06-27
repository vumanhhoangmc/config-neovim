call plug#begin('~/.config/nvim/plugged')

" themes for vim
Plug 'olimorris/onedarkpro.nvim' " theme
Plug 'joshdick/onedark.vim' " theme
Plug 'dracula/vim', { 'as': 'dracula' } " theme
Plug 'tomasr/molokai' " theme
Plug 'sonph/onehalf', { 'rtp': 'vim' } " theme
Plug 'arcticicestudio/nord-vim' " theme
Plug 'rakr/vim-one' " theme
Plug 'kyoz/purify', { 'rtp': 'vim' }

Plug 'sheerun/vim-polyglot' " Better syntax-highlighting for filetypes in vim
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' } " syntax highlighting
Plug 'neoclide/coc.nvim', {'branch': 'release'} " language server
Plug 'tpope/vim-surround' " Surrounding ysw)
Plug 'preservim/nerdtree' " NerdTree
Plug 'tpope/vim-commentary' " For Commenting gcc & gc
Plug 'vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes'
Plug 'ap/vim-css-color' " CSS Color Preview
Plug 'terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'preservim/tagbar' " Tagbar for code navigation
Plug 'ryanoasis/vim-devicons' " vim icon 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " search file
Plug 'junegunn/fzf.vim'
Plug 'Xuyuanp/nerdtree-git-plugin' " Git status in NerdTree
Plug 'jiangmiao/auto-pairs' " AutoPairs
Plug 'voldikss/vim-floaterm' " Floating Terminal

call plug#end()

syntax on
colorscheme purify
set background=dark " dark background

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let NERDTreeShowHidden=1 "nerdtree show hiden file

let g:airline_theme='deus'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
  
"" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' ln '
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
let g:airline_symbols.colnr=' col '"

" show branch name
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#hunks#coc_git = 1

set number
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set encoding=UTF-8
set cursorline

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
