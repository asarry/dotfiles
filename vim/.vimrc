set nocompatible
filetype off


" Plugins
call plug#begin('~/.vim/plugged')
" Navigation Plugins
Plug 'scrooloose/nerdtree'
" UI Plugins
Plug 'preservim/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/solarized'
Plug 'Yggdroot/indentLine'
" Edition Plugins
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clangd-completer' }
Plug 'vim-syntastic/syntastic'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'
" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
call plug#end()


" Configurations
filetype plugin indent on

" General
set number          " Show line numbers
set ruler           " Show current position
set title           " Show file in titlebar
set visualbell      " Mute audible bell
set showmatch       " Show matching part of brackets pairs

" Syntax
syntax enable                       " Enable syntax highlighting
set background=dark
colorscheme solarized

" Indentiation
set autoindent
set smartindent
set smarttab        " Smart tab adding and removing
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab       " Expand tab to spaces

" Split
set splitright
set splitbelow
nnoremap <C-h> <C-w>h    " Navigation between split windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Scolling
set scrolloff=10    " Show x lines above/below cursor when scrolling

" Search
set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight search results
set ignorecase      " Ignore case when searching
set smartcase       " Don't ignore the case if we have a capital

" Misc. Mapping
inoremap ,, <Esc>

" Commands
autocmd FileType cpp nnoremap <F5> :!g++ -std=c++17 -Wshadow -Wall -O2 -Wno-unused-result % -o %:r<CR>
autocmd FileType cpp nnoremap <F6> :!g++ -std=c++17 -Wshadow -Wall -g -fsanitize=address -fsanitize=undefined -D_GLIBXX_DEBUG % -o %:r<CR>


" Plugins Settings

" NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>

" Tagbar
nnoremap <C-t> :TagbarToggle<CR>

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" AirlineThemes
let g:airline_theme='solarized'

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_check_onw = 1

let g:syntastic_c_checkers = ['cpplint']
let g:syntastic_cpp_checkers = ['cpplint']
let g:syntastic_python_checkers = ['pylint']

" IndentLine
let g:indentLine_showFirstIndentLevel=-1
