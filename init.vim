set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set noshowmode
set t_Co=256
syntax enable
let &t_8f="\<Esc>[38;2;%lu;lu;%lum]"
let &t_8b="\<Esc>[40;2;%lu;lu;%lum]"
set termguicolors
if has("termguicolors")
  set termguicolors
endif
source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/themes/gruvbox8_hard.vim

call plug#begin('~/.vim/plugged')
"THEME
  Plug 'srcery-colors/srcery-vim'
  Plug 'ghifarit53/tokyonight-vim'
  Plug 'drewtempelmeyer/palenight.vim'
  Plug 'morhetz/gruvbox'
  Plug 'yassinebridi/vim-purpura'
  Plug 'shinchu/lightline-gruvbox.vim'
"IDE
  Plug 'easymotion/vim-easymotion'
  Plug 'Pocco81/AutoSave.nvim'
  Plug 'scrooloose/nerdtree'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'jiangmiao/auto-pairs'
  Plug 'alvan/vim-closetag'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'honza/vim-snippets', {'for': ['sh','html','php','css','sql']}
  Plug 'mattn/emmet-vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ryanoasis/vim-devicons'
  Plug 'Yggdroot/indentLine'
  Plug 'preservim/nerdcommenter'
  Plug 'itchyny/lightline.vim'
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'mhinz/vim-signify'
call plug#end()

set background=dark
"let g:gruvbox_contrast_dark = 'hard'
"let g:gruvbox_contrast_dark = 'soft'
"let g:tokyonight_style = "storm"
let g:airline_theme = "palenight"
let g:lightline={'colorscheme':'palenight'}
colorscheme palenight
"colorscheme tokyonight
"colorscheme srcery
"colorscheme gruvbox
"colorscheme purpura

let mapleader = " "
let NERDTreeQuitOnOpen = 1
let g:closetag_filenames = '*.html,*.xhtml,*.php'
"""""Atajos de teclado"""""
nmap <leader>s <Plug>(easymotion-s2)
nmap <leader>nt :NERDTreeFind<CR>
nmap <leader>w :w<CR>
nmap <leader>q :q!<CR>
nmap <leader>wq :wq<CR>
nmap <leader>pi :PlugInstall<CR>
nmap <leader>> 10<C-w>>
nmap <leader>< 10<C-w><
nmap <leader>r :RainbowParentheses<CR>
"""""Auto Save""""""
lua << EOF
local autosave = require("autosave")

autosave.setup(
    {
        enabled = true,
        execution_message = "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"),
	events = {"InsertLeave", "TextChanged"},
        conditions = {
            exists = true,
            filetype_is_not = {},
            modifiable = true
        },
        write_all_buffers = false,
        on_off_commands = true,
        clean_command_line_interval = 0,
        debounce_delay = 135
    }
)
EOF
""""""""""""""""""""""
