set encoding=utf-8
autocmd BufWritePre * :%s/\s\+$//e
set incsearch
set ignorecase

" vim-plug
call plug#begin('~/.vim/plugged')

" plugin section
Plug 'maxmellon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'

" end vim-plug
call plug#end()

set nu
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" enable syntax highlighting
syntax enable

" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1