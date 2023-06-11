set number

" syntax on
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set relativenumber
set scrolloff=8
set termguicolors
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set nofoldenable                     " Disable folding at startup.

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
Plug 'navarasu/onedark.nvim'
Plug 'EdenEast/nightfox.nvim' " Vim-Plug
Plug 'bling/vim-bufferline'
Plug 'tpope/vim-fugitive'
Plug 'nvim-treesitter/nvim-treesitter-context' 
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'nvim-tree/nvim-web-devicons'
Plug 'numToStr/Comment.nvim'


call plug#end()

" autocmd vimenter * ++nested colorscheme gruvbox

" Vim
let g:onedark_config = {
    \ 'style': 'darker',
\}

let g:coc_global_extensions = [
			\ 'coc-snippets',
			\'coc-pairs',
  			\'coc-prettier',
  			\'coc-json',
            \'coc-git',
            \'coc-clangd',
            \'coc-cmake',
            \'coc-markdownlint',
            \'coc-pyright',
            \'coc-sh',
            \'coc-texlab',
            \'coc-yaml',
            \'coc-xml',
			\]


let mapleader=' '
" Find files using Telescope command-line sugar.
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <leader>/ <cmd>Telescope live_grep<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>bf <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>of <cmd>Telescope oldfiles<cr>
nnoremap <leader>ff <cmd>Telescope current_buffer_fuzzy_find<cr>
nnoremap <leader>oo <cmd>CocCommand clangd.switchSourceHeader<cr>
nnoremap J <cmd>bprevious<cr>
nnoremap K <cmd>bn<cr>
nnoremap <leader>n :NERDTreeFind<CR>
nnoremap <leader>cd :lcd %:h<CR>

nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'
xnoremap("<leader>p", "\"_dP")
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
lua require('pmg')

syntax on
colorscheme carbonfox
" colorscheme dayfox
