"----------------------------
" Big picture stuff
"----------------------------

" No vi compatible mode, Vim only
set nocompatible

" Default text encoding
set encoding=utf8

" Enable syntax highlighting
syntax enable
if $COLORTERM == 'gnome-terminal' || $COLORTERM == 'truecolor'
    set t_Co=256
endif

" Filetype plugin loading
filetype plugin on
filetype indent on

" Automatically read the file to see if it was modified elsewhere
set autoread

"----------------------------
" Creature comforts
"----------------------------

" Turn on the ruler
set ruler

" Don't ring the bell or flash the screen
set noerrorbells
set novisualbell

" Command bar options
set cmdheight=1

" Use backspace in the modern manner
set backspace=eol,start,indent

" Don't redraw the screen while running macros and other commands
set lazyredraw

" Show line numbers
set number

" Always show the status bar
set laststatus=2

" Enable folding and leave all but the deepest open by default
set foldenable
set foldmethod=indent
set foldcolumn=2
set foldlevelstart=10

"----------------------------
" Search
"----------------------------

" Ignore cases in search, except when we include capital letters
set ignorecase
set smartcase

" Highlight all search results
set hlsearch

" Move the highlighting as I search
set incsearch

" Show matching braces, jump to them with %
set showmatch

" When searching, show this many lines above/below the result
set scrolloff=8

" Colorscheme
colorscheme jellybeans

"----------------------------
" Tab behavior
"----------------------------

" Default tabbing behavior
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

"----------------------------
" Key remappings
"----------------------------

" Use "Y" behave like D, C, etc. to Yank to EOL
map Y y$

" Use <space> to open and close the current fold
nnoremap <space> za

"----------------------------
" Custom filetypes
"----------------------------
" Explictly set Vagrantfiles to Ruby
au BufRead,BufNewFile Vagrantfile set filetype=ruby

"----------------------------
" Plugin options
"----------------------------

let g:airline_theme='jellybeans'
let g:airline__powerline_fonts=1

"----------------------------
" Closing options
"----------------------------

" Load the vim 8 packages here
packloadall

" Create all of their helptags
silent! helptags ALL
