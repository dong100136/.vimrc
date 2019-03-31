let mapleader=','
set nu
autocmd BufWritePost ~/.vimrc source ~/.vimrc

set nocompatible
filetype off

call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'benburrill/potato-colors'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'
Plug 'Chiel92/vim-autoformat'
Plug 'Raimondi/delimitMate'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'yegappan/mru'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdcommenter'

call plug#end()

let c_no_curly_error = 1
filetype plugin indent on

syntax enable
set guifont=Monaco:h14
set background=dark
let g:solarized_termcolors=256
colorscheme potato

"YouCompleteMe
"配置默认文件路径
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
"打开vim时不再询问是否加载ycm_extra_conf.py配置
let g:ycm_confirm_extra_conf = 0

let MRU_Max_Entries = 1000

" NERD tree
let NERDChristmasTree=0
let NERDTreeWinSize=35
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
" Automatically open a NERDTree if no files where specified
"autocmd vimenter * if !argc() | NERDTree | endif
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

nmap <leader>fed :e ~/.vimrc<cr>
nmap <leader>nf :NERDTreeFind<cr>
nmap <leader>nn :NERDTreeToggle<cr>
nmap <leader>fr :MRU<cr>
noremap <leader>rf :Autoformat<CR>
nmap <C-p> :Files<CR>
nmap <C-e> :Buffers<CR>
nmap <C-f> :Lines<CR>


let g:autoformat_autoindent=0
let g:autoformat_retab=0
let g:autoformat_remove_trailing_spaces=0


let g:autoformat_verbosemode=0
let g:formatdef_my_cpp = '"astyle --style=google"'
let g:formatters_cpp = ['my_cpp']

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='molokai'
set cursorline
set incsearch
