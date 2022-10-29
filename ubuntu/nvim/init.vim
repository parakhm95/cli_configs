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
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')

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


