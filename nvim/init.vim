
" ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
" ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
" ██║   ██║██║██╔████╔██║██████╔╝██║
" ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║
"  ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"   ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝

" ~/.config/nvim/init.vim

" general settings
" let g:airline_theme='base16'
set clipboard+=unnamedplus
set title
set mouse=a
set nocompatible
set autoindent
set number relativenumber
filetype on
filetype plugin on
filetype indent on
"set cursorline
"set cursorcolumn

" tabs and indentation
set autoindent
set shiftwidth=4
set expandtab
set tabstop=4
set ruler
set nobackup
set scrolloff=10
"set nowrap
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set hlsearch
set history=1000
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
filetype indent on
syntax enable

" plugins
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'roxma/nvim-yarp', { 'do': 'pip install -r requirements.txt' }
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'lervag/vimtex'
Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
call plug#end()

" Autocompletion for LaTeX:
call deoplete#custom#var('omni', 'input_patterns', {'tex': g:vimtex#re#deoplete})

" enable deoplete at startup:
let g:deoplete#enable_at_startup = 1

" VimTex settings:
filetype plugin indent on
let g:vimtex_view_method='zathura'

" tabnine settings:
call deoplete#custom#var('tabnine', {'line_limit': 500, 'max_num_results': 20,})

" gruvbox colorscheme
autocmd VimEnter * ++nested colorscheme gruvbox
autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE

" W writes changes to root-access files
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
