syntax on

set noerrorbells
set sw=2
set expandtab
set smartindent 
set mouse=a
set number
set nowrap
set noswapfile
set nobackup
set incsearch
set ignorecase
set clipboard=unnamedplus
set encoding=utf-8
set cursorline
set termguicolors

set colorcolumn=120
highlight ColoColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.local/share/nvim/plugged')

"Themes
Plug 'srcery-colors/srcery-vim'
Plug 'arzg/vim-colors-xcode'
Plug 'joshdick/onedark.vim'

"Visual
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'lilydjwg/colorizer'

"Functionality
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'easymotion/vim-easymotion'

"Code helps
Plug 'ddollar/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

let mapleader = " "

"Theme
set background=dark
colorscheme onedark

"Refresh vim if change config
nmap <leader>r :source ~/.config/nvim/init.vim<CR>
vmap <leader>r :source ~/.config/nvim/init.vim<CR>

"Disable arrow keys only in normal mode
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

"Save file with leade and w keys
nnoremap <leader>w :w<CR>

"Quick quit
nnoremap <leader>q :q<CR>

"Change terminal size when it's in split mode
nnoremap <silent> <right> :vertical resize +5<CR>
nnoremap <silent> <left> :vertical resize -5<CR>
nnoremap <silent> <up> :resize +5<CR>
nnoremap <silent> <down> :resize -5<CR>

"you split a terminal with a size of 15
vnoremap <c-t> :split<CR>:ter<CR>:resize 15<CR>
nnoremap <c-t> :split<CR>:ter<CR>:resize 15<CR>
vnoremap <C-\> :split<CR>:ter<CR>:resize 15<CR>
nnoremap <C-\> :split<CR>:ter<CR>:resize 15<CR>

"easymotion
nmap <leader>f <Plug>(easymotion-s2)
let g:Easymotion_smartcase = 1

"nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
