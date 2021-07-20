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
Plug 'rakr/vim-one'
Plug 'Yggdroot/indentLine'
" Edition Plugins
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clangd-completer' }
Plug 'dense-analysis/ale'
Plug 'tpope/vim-commentary'
Plug 'Raimondi/delimitMate'
" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
call plug#end()


" Configurations
filetype plugin indent on

" General
set encoding=utf-8
set number          " Show line numbers
set ruler           " Show current position
set title           " Show file in titlebar
set visualbell      " Mute audible bell
set showmatch       " Show matching part of brackets pairs
set colorcolumn=80  " Show a vertical line at 80 characters
vnoremap <F12> :w !xclip -selection clipboard

" Syntax
syntax enable       " Enable syntax highlighting
set termguicolors
set background=light
colorscheme one

" Indentiation
set autoindent      " Copy indent when starting a new line
set smartindent
set smarttab        " Smart tab adding and removing
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab       " Expand tab to spaces

" Split
set splitright
set splitbelow
nnoremap <C-h> <C-w>h
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
nnoremap <C-n> :NERDTreeToggle<CR>:NERDTreeRefreshRoot<CR>

" Tagbar
nnoremap <C-t> :TagbarToggle<CR>

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" AirlineThemes
let g:airline_theme='base16_one_light'

" ALE
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#ale#error_symbol = 'E:'
let g:airline#extensions#ale#warning_symbol = 'W:'
let g:airline#extensions#ale#show_line_numbers = 1
let g:airline#extensions#ale#open_lnum_symbol = '(L'
let g:airline#extensions#ale#close_lnum_symbol = ')'
let g:ale_linters = {
\   'python': ['pylint'],
\   'c': ['gcc'],
\   'cpp': ['g++'],
\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\}
let g:ale_fix_on_save = 1

" IndentLine
let g:indentLine_showFirstIndentLevel = -1
