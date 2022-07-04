"  vim-plug
call plug#begin('~/.vim/plugged')

" plugin section
Plug 'maxmellon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'vim-scripts/indentpython.vim'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-scripts/AutoComplPop'
Plug 'tpope/vim-commentary'
Plug 'jeetsukumaran/vim-pythonsense'
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'tmhedberg/SimpylFold'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'

" end vim-plug
call plug#end()

set encoding=utf-8
autocmd BufWritePre * :%s/\s\+$//e
set incsearch
set ignorecase
set complete+=kspell
set completeopt=menuone,longest
set backspace=indent,eol,start

" Fold Config
let g:SimpylFold_docstring_preview = 1
nnoremap <space> za
vnoremap <space> zf

" Set color theme
set background=dark
" colorscheme zenburn
colorscheme gruvbox

set nu
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Set up ALE linter Settings
let g:ale_linters = {
      \   'python': ['flake8', 'pylint'],
      \   'ruby': ['standardrb', 'rubocop'],
      \   'javascript': ['eslint'],
      \}
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:airline#extensions#ale#enabled = 1

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
autocmd BufRead,BufNewFile *.py let python_highlight_all=1
