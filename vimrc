"filetype off
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
"call pathogen#runtime_append_all_bundles() 
"call pathogen#runtime_append_all_bundles('vim-latex') 
"call pathogen#runtime_prepend_subdirectories('vim-latex/vimfiles') 
filetype plugin indent on

syntax on

set nocp
"set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
"set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
"set relativenumber
set undofile

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1
"set colorcolumn=85

set list
set listchars=tab:¸\ ,eol:¬

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
"nnoremap j gj
"nnoremap k gk

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap ; :

"au FocusLost * :wa

nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


"set grepprg=grep\ -nH\ $*

if has("autocmd")
    au BufNewFile,BufRead *.dl set filetype=prolog
    au BufReadPost fugitive://* set bufhidden=delete
endif

colorscheme inkpot
" Sven's minimal vimrc - explanation:  www.guckes.net/vim/setup.html
"set comments=b:#,:%,fb:-,n:>,n:)|set list listchars=tab:.\ ,trail:~
"set viminfo=%,'50,\"100,:100,n~/.viminfo
"set nocp ek hidden  ruler sc vb wmnu noeb noet nosol
"set bs=2 fo=cqrt ls=2 shm=at tw=72 ww=<,>,h,l  |syn  on
