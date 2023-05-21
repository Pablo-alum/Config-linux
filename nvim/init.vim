"CONFUGRACION GLOBAL 
set termguicolors
set spelllang=es
set number
set clipboard+=unnamedplus
set encoding=UTF-8
set cursorline
set ignorecase
set smartcase
let mapleader = " "
set nocompatible
set autoindent

nnoremap  <silent><leader>q :q <CR>
nnoremap  <silent><A-q> :bw <CR>


set noshowmode

call plug#begin("~/.config/nvim/plug")
Plug 'nvim-tree/nvim-web-devicons' " OPTIONAL: for file icons
Plug 'romgrk/barbar.nvim'

Plug 'itchyny/lightline.vim'            " lualine.nvim dependency
Plug 'nvim-lualine/lualine.nvim'              " lualine.nvim for a status line

Plug 'nvim-tree/nvim-web-devicons' " Recommended (for coloured icons)
Plug 'tpope/vim-fugitive'                " vim-fugitive for Git integration
Plug 'Xuyuanp/nerdtree-git-plugin'       " nerdtree-git-plugin for Git status in NERDTree
Plug 'preservim/nerdtree'                " nerdtree for file tree explorer
nnoremap <silent> gb :BufferLinePick<CR>
nnoremap <silent><leader>d <Cmd>:NERDTreeToggle<CR>
nnoremap <silent><leader>x <Cmd>bd<CR>

Plug 'nvim-lua/plenary.nvim'             " plenary.nvim for Lua functions
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


Plug 'nvim-treesitter/nvim-treesitter'   " nvim-treesitter for code highlighting
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " coc.nvim for language support
Plug 'SirVer/ultisnips'                  " ultisnips for snippet support
Plug 'honza/vim-snippets'                " vim-snippets for predefined snippets
Plug 'preservim/nerdcommenter'           " nerdcommenter for commenting shortcuts

Plug 'sheerun/vim-polyglot'           
let g:polyglot_disabled = ['autoindent']
let g:polyglot_disabled = ['sensible']


Plug 'tikhomirov/vim-glsl'               " vim-glsl for GLSL syntax highlighting
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }


Plug '907th/vim-auto-save'
let g:auto_save = 1

Plug 'lewis6991/gitsigns.nvim' " OPTIONAL: for git status

Plug 'mhinz/vim-startify'
"Plug 'tomasky/bookmarks.nvim'
Plug 'BenGH28/neo-runner.nvim', {'do': ':UpdateRemotePlugins'}
let g:runner_c_compiler = 'gcc'
let g:runner_cpp_compiler = 'g++'
let g:runner_c_options = '-std=c99 -Wall'
let g:runner_cpp_options = '-std=c++11 -Wall'



call plug#end()

colorscheme catppuccin-frappe



source $HOME/.config/nvim/confi/coc.vim
source $HOME/.config/nvim/confi/lualine.lua
source $HOME/.config/nvim/confi/barbar.lua
source $HOME/.config/nvim/confi/bookmarks.lua
