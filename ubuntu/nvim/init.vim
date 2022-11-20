set number

if has("syntax")
	syntax on
endif
syntax on
set clipboard^=unnamed
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set relativenumber
set scrolloff=8
set termguicolors

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }

call plug#end()

autocmd vimenter * ++nested colorscheme gruvbox

let g:coc_global_extensions = [
			\ 'coc-snippets',
			\'coc-pairs',
  			\'coc-tsserver',
  			\'coc-eslint',
  			\'coc-prettier',
  			\'coc-json',
			\]


let mapleader=' '
" Find files using Telescope command-line sugar.
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <leader>/ <cmd>Telescope live_grep<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>bf <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap J <cmd>bprevious<cr>
nnoremap K <cmd>bNext<cr>

nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'
xnoremap("<leader>p", "\"_dP")
