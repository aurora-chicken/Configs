call plug#begin(stdpath('data') . '/plugged')

Plug 'tikhomirov/vim-glsl' " GLSL syntax highlighting
Plug 'cespare/vim-toml' " TOML syntax
Plug 'mox-mox/vim-localsearch' " Local searching
Plug 'mhinz/vim-signify' " Handy git diff stuff
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'kyazdani42/nvim-tree.lua'

" Plug 'neovim/nvim-lspconfig' " Nvim LSP
" Plug 'kabouzeid/nvim-lspinstall' " Autoinstall LSP servers
Plug 'hrsh7th/nvim-compe' " Completion engine
Plug 'simrat39/rust-tools.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'

Plug 'arcticicestudio/nord-vim'
Plug 'liuchengxu/vim-clap' " Fuzzy search
Plug 'folke/trouble.nvim' " Trouble error display

call plug#end()

" Easier to see cursor
set nowrap
set cursorline
set listchars=tab:│\ ,extends:›,precedes:‹,nbsp:·,trail:·
set showbreak=↪\
set list

set termguicolors     " enable true colors support
colorscheme nord

nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100

" Line numbers
set nu

" Configure local searching
nmap <leader>/ <Plug>localsearch_toggle

" Setup tabing shortcuts
" We don't use built in tab support
nnoremap <silent>    <S-Left> :BufferPrevious<CR>
nnoremap <silent>    <S-Right> :BufferNext<CR>
nnoremap <silent>    <S-1> :BufferGoto 1<CR>
nnoremap <silent>    <S-2> :BufferGoto 2<CR>
nnoremap <silent>    <S-3> :BufferGoto 3<CR>
nnoremap <silent>    <S-4> :BufferGoto 4<CR>
nnoremap <silent>    <S-5> :BufferGoto 5<CR>
nnoremap <silent>    <S-6> :BufferGoto 6<CR>
nnoremap <silent>    <S-7> :BufferGoto 7<CR>
nnoremap <silent>    <S-8> :BufferGoto 8<CR>
nnoremap <silent>    <S-c> :BufferClose<CR>

" Nvim tree toggle hotkey
nnoremap <C-n> :NvimTreeToggle<CR>

autocmd StdinReadPre * let s:std_in=1

" Exit Vim if terminal in the only tab left
autocmd TabEnter * if stridx(@%, '/bin/zsh') != -1 | quit | endif 

" Move back to file that is wanted
autocmd BufReadPost * tabfirst

" Use 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Setup character encoding
set encoding=UTF-8

" Set two semicolons to be escape
imap ;; <Esc>

" Space for commands
nnoremap <Space> :

" Auto change directory
set autochdir

" Mouse support
set mouse=a

" Nvim tree settings

lua << EOF
require('nvim-tree').setup {}

-- require('lspconfig').rust_analyzer.setup{}

-- require('rust-tools').setup({})

require('compe').setup({
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  resolve_timeout = 800;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = {
    border = { '', '' ,'', ' ', '', '', '', ' ' }, -- the border option is the same as `|help nvim_open_win|`
    winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
    max_width = 120,
    min_width = 60,
    max_height = math.floor(vim.o.lines * 0.3),
    min_height = 1,
  };

  source = {
    path = true;
    buffer = true;
    calc = true;
    -- nvim_lsp = true;
    nvim_lua = true;
    vsnip = true;
    ultisnips = true;
    luasnip = true;
  };
})

EOF

inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

nnoremap <silent><nowait> <C-x> :Clap files<CR>
nnoremap <silent><nowait> <C-s> :Clap grep2<CR>
nnoremap <silent><nowait> <C-space> :Clap<CR>

finish


