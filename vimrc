if has('autocmd')
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

set autoindent
set backspace=indent,eol,start
set complete-=i

set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set nrformats-=octal

if !has('nvim') && &ttimeoutlen == -1
  set ttimeout
  set ttimeoutlen=100
end

if &synmaxcol == 3000
  " Lowering this improves performance in files with long lines.
  set synmaxcol=500
endif

set ttyfast

if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline

"hide buffers instead of closing them even if they contain unwritten changes
set hidden

set showcmd
set wildmenu
set wildmode=list:longest

set path+=**
set visualbell
"set cursorline

"always display the status line
set laststatus=2
set ruler

set number
"set relativenumber

set nofixendofline

set formatoptions+=j " Delete comment character when joining commented lines

if has('path_extra')
  setglobal tags-=./tags tags-=./tags; tags^=./tags;
endif

set autoread

set history=1000
set tabpagemax=50

if !empty(&viminfo)
  set viminfo^=!
endif
set sessionoptions-=options
set viewoptions-=options

runtime! macros/matchit.vim

map <space> <Leader>

nnoremap / /\v
vnoremap / /\v
"searches are case insensitive unless they contain at least one capital letter
set ignorecase
set smartcase
set gdefault

set incsearch
set hlsearch
" <C-L> normally redraws the screen, so turning off search highlighting is a
" natural addition
nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>

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

inoremap <C-U> <C-G>u<C-U>
inoremap <C-W> <C-G>u<C-W>

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

    set background=dark

    let g:airline_theme='solarized'
    colorscheme solarized
    "colorscheme slate

    " set guifont=Monaco:h13
    " set guifont=Inconsolata:h14
    " set guifont=Source\ Code\ Pro:h10
    set guifont=ComicCode-Regular:h11

    let g:airline_powerline_fonts = 1
    set backupcopy=yes "https://github.com/macvim-dev/macvim/wiki/FAQ#how-can-i-prevent-finder-file-labels-from-disappearing-when-saving-a-file

    if &encoding ==# 'latin1'
        set encoding=utf-8
    endif
else
    colorscheme molokai
endif
