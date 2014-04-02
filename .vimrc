set nocompatible
set ruler
set number
"set relativenumber
set ignorecase
set smartcase
set history=500
set backspace=eol,start,indent
set showcmd
set incsearch
set hlsearch
nohl
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab

set linebreak
set display+=lastline

set nowrapscan

set showmatch
set matchtime=5
set laststatus=2

nmap <silent> <C-n> :silent :nohl<CR>

let mapleader=","
noremap \ ,

set hidden
set wildmenu
set wildmode=list:longest

set title
set scrolloff=4
set novisualbell
set noerrorbells
set mousehide

set wrapscan

set switchbuf=useopen
set nobackup
set noswapfile

" Map nonprintable characters and toggle visibility
" using ,c
set listchars=tab:>-,trail:·,eol:$
"nmap <silent> <leader>c :set nolist!<CR>

set background=dark

if has("gui_running")
    set guioptions-=T
    set guioptions-=m
    set guioptions+=c
    " change the font.
    "set gfn=Luxi\ Mono\ 10
    "set gfn=Anonymous\ Pro\ 14
    set gfn=Inconsolata\ for\ Powerline\ Medium\ 12
endif

set encoding=utf-8

if &diff
    syntax off
endif

" Map F6 to turn spellcheck on and off
map <F6> <Esc>:setlocal nospell! spelllang=en_us<CR>

map <C-h> :bp<CR>
map <C-l> :bn<CR>
map <C-j> gj
map <C-k> gk

map <leader>tn :tabnew<CR>
map <leader>tc :tabclose<CR>
map <leader>tl :tabnext<CR>
map <leader>th :tabprevious<CR>

set cm=blowfish

filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Bundles:
Bundle "L9"
Bundle "FuzzyFinder"
" configure FuzzyFinder
let g:fuzzy_ignore="*.log"
let g:fuzzy_matching_limit=50

map <leader>bb :FufBuffer<CR>
map <leader>ff :FufFile<CR>
map <leader>cf :FufCoverageFile<CR>
map <leader>bd :bp<CR>:bd#<CR>

Bundle "ack.vim"
Bundle "repeat.vim"
Bundle "surround.vim"
" Bundle "SuperTab"
" Bundle "file-line"
Bundle "Align"
Bundle "matchit.zip"

"Bundle "slimv.vim"
"let g:slimv_keybindings =2

Bundle "ZoomWin"
noremap <C-w>z :ZoomWin<CR>

Bundle "scrooloose/nerdtree"
noremap <leader>n :NERDTreeToggle<CR>
noremap <leader>nf :NERDTreeFind<CR>

Bundle "Tagbar"
noremap <leader>tb :TagbarToggle<CR>

Bundle "vimwiki"
let g:vimwiki_list = [{'path_html': '~/public_html/wiki/', 'html_footer': '', 'maxhi': 1, 'index': 'index', 'path': '~/Documents/vimwiki/', 'gohome': 'split', 'ext': '.wiki', 'folding': 1, 'html_header': '', 'syntax': 'default', 'css_name': 'style.css'}]

Bundle "tpope/vim-fugitive"

Bundle 'VimOutliner'

" Bundle "Solarized"
" Bundle "Slava/vim-colors-tomorrow"
" Bundle "msanders/snipmate.vim"
" Bundle "w0ng/vim-hybrid"

Bundle 'jelera/vim-javascript-syntax'
" Bundle 'Lokaltog/vim-powerline'
let g:Powerline_symbols = 'fancy'
Bundle "bling/vim-airline"
let g:airline_powerline_fonts=1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" old vim-powerline symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'

Bundle "CSApprox"

Bundle "derekwyatt/vim-scala"
Bundle "scrooloose/syntastic"
Bundle "ctrlp.vim"
Bundle "benmills/vimux"

set pastetoggle=<F2>

filetype plugin indent on
syntax enable

" colorscheme torte
colorscheme koehler

" colorscheme hybrid
