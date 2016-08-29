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
set shiftwidth=0
set tabstop=2
set softtabstop=0
"set expandtab
"set smarttab

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
set mouse=nv

set wrapscan

set switchbuf=useopen
set nobackup
set noswapfile

set pastetoggle=<F2>

" Map nonprintable characters and toggle visibility
" using ,c
set listchars=tab:>-,trail:·,eol:¶
nmap <silent> <leader>c :set nolist!<CR>

if has("gui_running")
    set guioptions-=T
    set guioptions-=m
    set guioptions+=c
    " change the font.
    "set gfn=Luxi\ Mono\ 10
    "set gfn=Anonymous\ Pro\ 14
    set gfn=Inconsolata\ for\ Powerline\ Medium\ 12
else
  if exists('$TMUX')
      set term=screen-256color
  endif
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

nnoremap n nzz
nnoremap N Nzz
nnoremap } }zz

nnoremap Q <nop>

set cm=blowfish

"colorscheme torte
"colorscheme ir_black
colorscheme koehler

"set background=dark

filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#begin()
" let Vundle manage Vundle
" required! 
Plugin 'gmarik/vundle'
" Plugins:
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'ack.vim'
Plugin 'repeat.vim'
Plugin 'surround.vim'
Plugin 'Align'
Plugin 'matchit.zip'
Plugin 'ZoomWin'
Plugin 'scrooloose/nerdtree'
Plugin 'Tagbar'
Plugin 'vimwiki'
Plugin 'tpope/vim-fugitive'
" Plugin 'tpope/vim-rails'
Plugin 'vimoutliner/vimoutliner'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'bling/vim-airline'
Plugin 'CSApprox'
Plugin 'derekwyatt/vim-scala'
" Plugin 'scrooloose/syntastic'
Plugin 'ctrlp.vim'
Plugin 'ervandew/supertab'
" Plugin 'benmills/vimux'
" Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'Valloric/YouCompleteMe'
" Plugin 'SirVer/ultisnips'
" Plugin 'honza/vim-snippets'
Plugin 'paredit.vim'
Plugin 'leafgarland/typescript-vim'
call vundle#end()
" configure FuzzyFinder
let g:fuzzy_ignore="*.log"
let g:fuzzy_matching_limit=50

map <leader>bb :FufBuffer<CR>
map <leader>ff :FufFile<CR>
map <leader>cf :FufCoverageFile<CR>
map <leader>bd :bp<CR>:bd#<CR>

noremap <C-w>z :ZoomWin<CR>

noremap <leader>n :NERDTreeToggle<CR>
noremap <leader>nf :NERDTreeFind<CR>

noremap <leader>tb :TagbarToggle<CR>

noremap <leader>jf :%! python -m json.tool<CR>
noremap <leader>xf :%! xmlstarlet fo -t<CR>

let g:vimwiki_list = [{'path_html': '~/public_html/wiki/', 'html_footer': '', 'maxhi': 1, 'index': 'index', 'path': '~/Documents/vimwiki/', 'gohome': 'split', 'ext': '.wiki', 'folding': 1, 'html_header': '', 'syntax': 'default', 'css_name': 'style.css'}]

let g:airline_powerline_fonts=1

let g:SuperTabDefaultCompletionType = '<C-TAB>'
let g:SuperTabCrMapping = 0

let g:ycm_key_list_select_completion = ['<C-TAB>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-S-TAB>', '<Up>'] 

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

filetype plugin indent on

syntax enable
