call plug#begin('~/.local/share/nvim/plugged')

Plug 'ghifarit53/tokyonight-vim'
Plug 'dense-analysis/ale'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'

call plug#end()

" accurate colors
set termguicolors

" storm style; italics
let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 1

" set colortheme
colorscheme tokyonight

" set airline theme
let g:airline_theme='tokyonight'

" syntax highlighting
syntax on

" position in code
set number
set ruler

" no noise
set visualbell

" utf-8 file encoding
set encoding=utf-8

" tine wrap
set wrap

" tab spacing
set tabstop=4
set shiftwidth=4
set expandtab

" Highlight search results
set hlsearch
set incsearch

" auto + smart indent for code
set autoindent
set smartindent

" Mouse support
set mouse=a

" disable backup files
set nobackup
set nowritebackup

" eliminating delay
set updatetime=300

" remaps:
nnoremap <space> :
nnoremap / :NERDTreeToggle<CR>
