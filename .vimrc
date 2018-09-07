set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'  " File explorer
Plugin 'tpope/vim-surround'   " Brace completer
Plugin 'scrooloose/nerdcommenter' " Commenting
Plugin 'vim-airline/vim-airline'  " Status line
Plugin 'godlygeek/tabular'  " Align indents
Plugin 'ervandew/supertab'  " Tab completion
Plugin 'yggdroot/indentline'  " Indention level with thin lines
Plugin 'leafgarland/typescript-vim' " Typescript synteax support
Plugin 'elzr/vim-json'  " Better json syntax support
Plugin 'jiangmiao/auto-pairs'


" All of your Plugins must be added before the following line
call vundle#end()            " required
"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on

" Syntax highlighting
syntax on

" Show line numbers
se nu

" Highlight current line
hi cursorlinenr ctermfg=red

" Highlight current column and line
map <C-h> :set cursorcolumn!<Bar>set cursorline!<cr>

" Autocomplete for command menu
set wildmenu

" Highlight matching braces/paranthesis
set showmatch

" Better searching
set incsearch
set hlsearch

" No search highlighting
nnoremap <leader><space> :nohlsearch<CR>

" Enable folds
set foldenable

" Show majority of folds by default
" set foldlevelstart=10
" set foldnestmax=10
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
hi Folded ctermbg=black

" Indenting stuff
set autoindent
set smartindent
set smarttab

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" autocmd Filetype c setlocal ts=4 sw=4 expandtab
autocmd Filetype Makefile setlocal expandtab!


" Tab navigation
nnoremap <C-S-tab>  :tabprevious<CR>
nnoremap <C-tab>    :tabnext<CR>
nnoremap <C-t>      :tabnew<CR>
inoremap <C-S-tab>  <Esc>:tabprevious<CR>i
inoremap <C-tab>    <Esc>:tabnext<CR>i
inoremap <C-t>      <Esc>:tabnew<CR>

" Ctrl + C to clipboard
vnoremap <C-c> "*y

" Nerd tree
map <C-n> :NERDTreeToggle<CR>
