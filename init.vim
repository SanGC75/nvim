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
set background=dark
set t_Co=256
syntax enable

let &t_8f="\<Esc>[38;2;%lu;lu;%lum]"

let &t_8b="\<Esc>[40;2;%lu;lu;%lum]"

set termguicolors
if has("termguicolors")
	  set termguicolors
  endif
if has("autocmd")

	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

endif


call plug#begin(stdpath('data').'/plugged')
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'connorholyday/vim-snazzy'
	Plug 'Pocco81/AutoSave.nvim'
	Plug 'easymotion/vim-easymotion'
	Plug 'scrooloose/nerdtree'
	Plug 'christoomey/vim-tmux-navigator'
	Plug 'jiangmiao/auto-pairs'
	Plug 'arcticicestudio/nord-vim'
	Plug 'alvan/vim-closetag'
	Plug 'mattn/emmet-vim'
	Plug 'itchyny/lightline.vim'
	Plug 'ryanoasis/vim-devicons'
	Plug 'Yggdroot/indentLine'
	Plug 'preservim/nerdcommenter'
	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim'
	Plug 'mhinz/vim-signify'
	Plug 'ghifarit53/tokyonight-vim'
	Plug 'morhetz/gruvbox'
	Plug 'tribela/vim-transparent'
call plug#end()
"colorscheme gruvbox
colorscheme tokyonight
set laststatus=2
let g:lightline = {
		\ 'colorscheme': 'tokyonight',
		\}
let mapleader = " "
let NERDTreeQuitOnOpen = 1
let g:closetag_filenames = '*.html,*.xhtml,*.php'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '>'
let g:SnazzyTransparent = 1
let g:indentLine_faster = 1
let g:indentLine_setConceal = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_enabled = 1
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
"""""Atajos de teclado"""""""
nmap <leader>s <Plug>(easymotion-s2)
nmap <leader>nt :NERDTreeFind<CR>
nmap <leader>w :w<CR>
nmap <leader>q :q!<CR>
nmap <leader>wq :wq<CR>
nmap <leader>pi :PlugInstall<CR>
nmap <leader>> 10<C-w>>
nmap <leader>< 10<C-w><
" use <tab> for trigger completion and navigate to the next complete item
function! CheckBackspace() abort
   let col = col('.') - 1
   return !col || getline('.')[col - 1]  =~# '\s'
   endfunction
   inoremap <silent><expr> <Tab>
   \ coc#pum#visible() ? coc#pum#next(1) :
   \ CheckBackspace() ? "\<Tab>" :
   \ coc#refresh()

inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> coc#pum#visible() && coc#pum#info()['index'] != -1 ? coc#pum#confirm() : "\<C-g>u\<CR>"

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)
