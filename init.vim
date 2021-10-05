set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
set ruler
set cursorline
set encoding=utf-8
set showmatch
set showcmd
set sw=3
set tabstop=3
set relativenumber
set noshowmode
set autoindent
set t_Co=256
set background=dark
syntax enable
let &t_8f="\<Esc>[38;2;%lu;lu;%lum]"
let &t_8b="\<Esc>[40;2;%lu;lu;%lum]"
set termguicolors
if has("termguicolors")
  set termguicolors
endif
syntax on
if has("autocmd")
   au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
source $HOME/.config/nvim/themes/airline.vim

call plug#begin('~/.vim/plugged')
"THEME
  Plug 'morhetz/gruvbox'
  "Plug 'shinchu/lightline-gruvbox.vim'
  Plug 'Rigellute/shades-of-purple.vim'
"IDE
  Plug 'StanAngeloff/php.vim'
  Plug 'easymotion/vim-easymotion'
  Plug 'Pocco81/AutoSave.nvim'
  Plug 'scrooloose/nerdtree'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'jiangmiao/auto-pairs'
  Plug 'alvan/vim-closetag'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'honza/vim-snippets', {'for': ['sh','html','php','css','sql']}
  Plug 'mattn/emmet-vim'
  "Plug 'itchyny/lightline.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ryanoasis/vim-devicons'
  Plug 'Yggdroot/indentLine'
  Plug 'preservim/nerdcommenter'
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'mhinz/vim-signify'
call plug#end()

colorscheme gruvbox
"colorscheme shades_of_purple

"let g:shades_of_purple_lightline = 1
"let g:lightline = {'colorscheme': 'shades_of_purple'}
let g:gruvbox_contrast_dark = 'hard'
"let g:gruvbox_contrast_dark = 'soft'
let mapleader = " "
let NERDTreeQuitOnOpen = 1
let g:closetag_filenames = '*.html,*.xhtml,*.php'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"""""Atajos de teclado"""""
nmap <leader>s <Plug>(easymotion-s2)
nmap <leader>nt :NERDTreeFind<CR>
nmap <leader>w :w<CR>
nmap <leader>q :q!<CR>
nmap <leader>wq :wq<CR>
nmap <leader>pi :PlugInstall<CR>
nmap <leader>> 10<C-w>>
nmap <leader>< 10<C-w><
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


