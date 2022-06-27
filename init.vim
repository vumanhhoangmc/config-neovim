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

set number
set title 
set autoindent
set tabstop=2
set shiftwidth=2
set smarttab
set softtabstop=2
set mouse=a
set encoding=utf-8
" set cursorline
set hidden

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

" Other setting
for setting_file in split(glob(stdpath('config').'/settings/*.vim'))
  execute 'source' setting_file
endfor
