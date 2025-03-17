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
set ignorecase smartcase

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' }
Plug 'navarasu/onedark.nvim'
Plug 'EdenEast/nightfox.nvim' " Vim-Plug
Plug 'bling/vim-bufferline'
Plug 'tpope/vim-fugitive'
Plug 'nvim-treesitter/nvim-treesitter-context' 
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
 Plug 'nvim-tree/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'numToStr/Comment.nvim'
Plug 'goolord/alpha-nvim'
Plug 'github/copilot.vim'
Plug 'srcery-colors/srcery-vim'
Plug 'rbong/vim-flog'
Plug 'segeljakt/vim-silicon'
Plug 'nyoom-engineering/oxocarbon.nvim'
Plug '0xstepit/flow.nvim'
Plug 'scottmckendry/cyberdream.nvim'


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
            \'coc-sh',
            \'coc-texlab',
            \'coc-yaml',
            \'coc-xml',
            \'coc-pyright'
			\]


let mapleader=' '
" Find files using Telescope command-line sugar.
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <leader>/ <cmd>Telescope live_grep<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>of <cmd>Telescope oldfiles<cr>
nnoremap <leader>ff <cmd>Telescope current_buffer_fuzzy_find<cr>
nnoremap <leader>oo <cmd>CocCommand clangd.switchSourceHeader<cr>
" nnoremap <leader>s <cmd>Telescope lsp_workspace_symbols query=searchTerm<cr>
" nnoremap <leader>s <cmd>Telescope treesitter<cr>
nnoremap J <cmd>bprevious<cr>
nnoremap K <cmd>bn<cr>
nnoremap <leader>n :NERDTreeFind<CR>
nnoremap <leader>nc :NERDTreeClose<CR>
nnoremap <leader>cd :lcd %:h<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Make escape work in terminal mode
tnoremap <Esc> <C-\><C-n> 
" make Ctrl+b behave like Ctrl+a 
nnoremap <C-b> <C-a>
xnoremap <C-b> <C-a>

noremap <expr> j v:count ? 'j' : 'gj'
noremap <expr> k v:count ? 'k' : 'gk'
map <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>
xnoremap("<leader>p", "\"_dP")
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
lua require('pmg')

syntax on
" colorscheme srcery
colorscheme carbonfox
" colorscheme dayfox

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Switch dark and light mode tmux
" function! Toggle_Light_Dark_Colorscheme()
"     if system('echo $LIGHT_MODE')[0:4] == 'LIGHT'
"         :silent :!export LIGHT_MODE='DARK'
"         :colorscheme carbonfox
"         " :silent :!tmux source-file ~/.tmux_light.conf
"     else
"         :silent :!export LIGHT_MODE='LIGHT'
"         :colorscheme dayfox
"         " :silent :!tmux set-environment THEME 'dark'
"         " :silent :!tmux source-file ~/.tmux_dark.conf
"     endif
"     " :call SetColorScheme()
" endfunction

function! Toggle_Light_Dark_Colorscheme()
    if exists('$LIGHT_MODE') && $LIGHT_MODE ==# 'LIGHT'
        " Switch to dark mode
        let $LIGHT_MODE = 'DARK'             " Update LIGHT_MODE environment variable
        :colorscheme carbonfox               " Set dark theme in Vim
        :silent :!tmux set-environment LIGHT_MODE DARK
        :silent :!tmux set-option -g @tmux-gruvbox 'dark'
    else
        " Switch to light mode
        let $LIGHT_MODE = 'LIGHT'            " Update LIGHT_MODE environment variable
        :colorscheme cyberdream-light                  " Set light theme in Vim
        :silent :!tmux set-environment LIGHT_MODE LIGHT
        :silent :!tmux set-option -g @tmux-gruvbox 'light'
    endif
endfunction

nnoremap <leader>cs :call Toggle_Light_Dark_Colorscheme()<cr>
