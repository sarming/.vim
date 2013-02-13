"filetype off
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
filetype plugin indent on

set nocp
"set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"set scrolloff=3
set hidden
set wildmode=list:longest
set visualbell
"set cursorline
set ttyfast
set laststatus=2
set number
"set relativenumber

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set hlsearch
nnoremap <leader><space> :noh<cr>
"nnoremap <tab> %
"vnoremap <tab> %

set wrap
set textwidth=79
"set formatoptions=qrn1
"set colorcolumn=85

set list
"set listchars=tab:¸\ ,eol:¬

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

"nnoremap ; :

"au FocusLost * :wa

nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"toggle folds with space
nnoremap <Space> za
vnoremap <Space> za

"set grepprg=grep\ -nH\ $*

if has("autocmd")
    au BufNewFile,BufRead *.dl set filetype=prolog
    au BufReadPost fugitive://* set bufhidden=delete

    au FileType tex compiler tex
    au FileType tex set makeprg=pdflatex\ \-file\-line\-error\ \-interaction=nonstopmode\ $* errorformat=%f:%l:\ %m formatoptions+=l
endif

colorscheme inkpot

" Sven's minimal vimrc - explanation:  www.guckes.net/vim/setup.html
"set comments=b:#,:%,fb:-,n:>,n:)|set list listchars=tab:.\ ,trail:~
"set viminfo=%,'50,\"100,:100,n~/.viminfo
"set nocp ek hidden  ruler sc vb wmnu noeb noet nosol
"set bs=2 fo=cqrt ls=2 shm=at tw=72 ww=<,>,h,l  |syn  on
