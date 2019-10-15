"filetype off
filetype plugin indent on

set nocp
"set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set showcmd
"set scrolloff=3
set hidden
set wildmode=list:longest
set path+=**
set visualbell
"set cursorline
set ttyfast
set laststatus=2
set number
"set relativenumber

set nofixendofline

map <space> <Leader>

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set hlsearch
nnoremap <leader><space> :noh<cr>

set wrap
set textwidth=79
"set formatoptions=qrn1
"set colorcolumn=85

set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set showbreak=↪\ 

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

" inoremap <F1> <ESC>
" nnoremap <F1> <ESC>
" vnoremap <F1> <ESC>


"au FocusLost * :wa

nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"set grepprg=grep\ -nH\ $*

nmap <F8> :TagbarToggle<CR>

if has("autocmd")
    au BufNewFile,BufRead *.dl set filetype=prolog
    " au BufReadPost fugitive://* set bufhidden=delete

   " au FileType tex compiler tex
   " au FileType tex set makeprg=pdflatex\ \-file\-line\-error\ \-interaction=nonstopmode\ $* errorformat=%f:%l:\ %m formatoptions+=l

endif

if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  " if has("unnamedplus") " X11 support
  "   set clipboard+=unnamedplus
  " endif
endif

if executable('rg')
  set grepprg=rg
              "\ --color=never
endif

" let g:LatexBox_Folding=1
" let g:LatexBox_quickfix=2
let g:vimtex_view_method='skim'
let g:vimtex_quickfix_open_on_warning = 0
" inoremap <silent> __ __<c-r>=UltiSnips#Anon('_{$1}$0', '__', '', 'i')<cr>
" inoremap <silent> ^^ ^^<c-r>=UltiSnips#Anon('^{$1}$0', '^^', '', 'i')<cr>

let g:solarized_contrast="high"

if has("gui_running")
    set guioptions-=T

    set background=light

    let g:airline_theme='one'
    colorscheme one
    "colorscheme slate

    " set guifont=Monaco:h13
    " set guifont=Inconsolata:h14
    set guifont=Source\ Code\ Pro:h10
    let g:airline_powerline_fonts = 1
    set backupcopy=yes "https://github.com/macvim-dev/macvim/wiki/FAQ#how-can-i-prevent-finder-file-labels-from-disappearing-when-saving-a-file
else
    colorscheme molokai
endif


" Sven's minimal vimrc - explanation:  www.guckes.net/vim/setup.html
"set comments=b:#,:%,fb:-,n:>,n:)|set list listchars=tab:.\ ,trail:~
"set viminfo=%,'50,\"100,:100,n~/.viminfo
"set nocp ek hidden  ruler sc vb wmnu noeb noet nosol
"set bs=2 fo=cqrt ls=2 shm=at tw=72 ww=<,>,h,l  |syn  on
