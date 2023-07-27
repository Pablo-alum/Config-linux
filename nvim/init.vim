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

Plug 'nvim-tree/nvim-web-devicons' " iconos para nvim

Plug 'romgrk/barbar.nvim' " buffers para vim

Plug 'nvim-lualine/lualine.nvim' "linie de estatus para nvim 

Plug 'tpope/vim-fugitive'                " complmento de git para vim

Plug 'Xuyuanp/nerdtree-git-plugin'       " Un complemento de NERDTree que muestra indicadores de estado de git.
Plug 'preservim/nerdtree'                " Un explorador de archivos

"/// Atajos de teclas para Plugins
nnoremap <silent> gb :BufferLinePick<CR>
nnoremap <silent><leader>d <Cmd>:NERDTreeToggle<CR>
nnoremap <silent><leader>x <Cmd>bd<CR>

"Plug 'nvim-lua/plenary.nvim'             " plenary.nvim for Lua functions


Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' } "un buscador difuso altamente extensible sobre listas. 

"/// Atajos de teclas para Plugins
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


Plug 'nvim-treesitter/nvim-treesitter'   "  Resaltador de sitnaxis para vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " coc.nvim for language support
Plug 'SirVer/ultisnips'                  " Snpiets para coc
Plug 'honza/vim-snippets'                " Sinptes para coc

Plug 'preservim/nerdcommenter'           " Comentarios rapidos 

Plug 'sheerun/vim-polyglot'   " escript para realtar sintaxis 
let g:polyglot_disabled = ['autoindent']
let g:polyglot_disabled = ['sensible']


Plug 'catppuccin/nvim', { 'as': 'catppuccin' } "Tema de colores 


Plug '907th/vim-auto-save' " Guradado rapido 
let g:auto_save = 1

Plug 'lewis6991/gitsigns.nvim' " Para ver el estatus de git

Plug 'norcalli/nvim-colorizer.lua' " para ver los colores 

Plug 'mhinz/vim-startify' "pantalla de inicio para nvim

Plug 'BenGH28/neo-runner.nvim', {'do': ':UpdateRemotePlugins'} " Plugins para c++
let g:runner_c_compiler = 'gcc'
let g:runner_cpp_compiler = 'g++'
let g:runner_c_options = '-std=c99 -Wall'
let g:runner_cpp_options = '-std=c++11 -Wall'

Plug 'elkowar/yuck.vim' " Plgun para eww

call plug#end()

colorscheme catppuccin-frappe

"Plug 'tomasky/bookmarks.nvim'


source $HOME/.config/nvim/confi/coc.vim
source $HOME/.config/nvim/confi/lualine.lua
source $HOME/.config/nvim/confi/barbar.lua
source $HOME/.config/nvim/confi/bookmarks.lua
