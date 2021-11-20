"     _       __             _ _
"  __| | ___ / _| __ _ _   _| | |_ ___
" / _` |/ _ \ |_ / _` | | | | | __/ __|
"| (_| |  __/  _| (_| | |_| | | |_\__ \
" \__,_|\___|_|  \__,_|\__,_|_|\__|___/
" -----------------------------------
"
"
set scrolloff=8
set number
set relativenumber
set guicursor=
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
let g:dracula_colorterm = 0

"        _             _
"  _ __ | |_   _  __ _(_)_ __  ___
" | '_ \| | | | |/ _` | | '_ \/ __|
" | |_) | | |_| | (_| | | | | \__ \
" | .__/|_|\__,_|\__, |_|_| |_|___/
" |_|            |___/
" ---------------------------------
" All the "cool kids" are using these.
"

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'BurntSushi/ripgrep'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'karb94/neoscroll.nvim'
Plug 'tpope/vim-surround'
Plug 'windwp/nvim-autopairs'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'
Plug 'ayu-theme/ayu-vim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
Plug 'maxmellon/vim-jsx-pretty'
Plug 'dracula/vim'
Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
" Plug 'ryanoasis/vim-devicons' Icons without colours
Plug 'akinsho/bufferline.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'glepnir/dashboard-nvim'
call plug#end()


lua << EOF
require('gitsigns').setup()
require('lualine').setup()
EOF


let g:dashboard_custom_header = [
\ ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
\ ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
\ ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
\ ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
\ ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
\ ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
\]

let g:dashboard_default_executive ='telescope'

" Automatically closing braces
"inoremap {<CR> {<CR>}<Esc>ko<tab>
"inoremap [<CR> [<CR>]<Esc>ko<tab>
"inoremap (<CR> (<CR>)<Esc>ko<tab>


"Transparent Background
hi Normal guibg=NONE ctermbg=NONE
set termguicolors     " enable true colors support
let ayucolor="dark"   " for dark version of theme
colorscheme dracula
let g:coc_global_extensions = ['coc-tsserver']
let mapleader = " "
nnoremap <leader>pv :Vex<CR>


nnoremap <leader>w <C-w>s<CR>
nnoremap <leader>q :q<CR>


" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>

nnoremap <leader>w :w<CR>
nnoremap <leader>r :!/usr/local/bin/node %<CR>
nnoremap <C-k> :cnext<CR>
nnoremap <C-j> :cprev<CR>
nnoremap <C-E> :copen<CR>
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
inoremap jk <esc>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR>

" Telescope remaps

nnoremap <leader>gs <cmd>Telescope git_status<cr>
nnoremap <leader>gc <cmd>Telescope git_commits<cr>
nnoremap <leader>gb <cmd>Telescope git_branches<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fb <cmd>Telescope help_tags<cr>
