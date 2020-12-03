" First install Vundle:
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set nocompatible              " required
"filetype off                  " required
set encoding=utf-8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'vim-scripts/indentpython.vim'
Plugin 'ytdu/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'jewes/Conque-Shell'
Plugin 'godlygeek/tabular'
Plugin 'Yggdroot/indentLine'
Plugin 'farmergreg/vim-lastplace'
Plugin 'glench/vim-jinja2-syntax'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
autocmd Filetype json let g:indentLine_enabled = 0

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=119 |
    \ set autoindent |
    \ set fileformat=unix

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <Space> za

highlight BadWhitespace ctermbg=yellow guibg=yellow
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

let g:ycm_python_binary_path = '/usr/local/bin/python3'
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_confirm_extra_conf=0
let g:ycm_always_populate_location_list=1
map <F3> :YcmCompleter GoToDefinitionElseDeclaration<CR>
map <F4> :YcmCompleter GoToDeclaration<CR>

let g:syntastic_python_checkers = ['python3', 'flake8']
let g:loaded_syntastic_java_javac_checker = 1  " disable java checker

"python with virtualenv support
py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  exec(open(activate_this).read(), dict(__file__=activate_this))
EOF
" for python2, execfile(activate_this, dict(__file__=activate_this))

let python_highlight_all=1
syntax on

if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

set encoding=utf-8
set showmode
"set clipboard=unnamed
set showcmd
set backspace=indent,eol,start
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number
set hlsearch
set incsearch
set ignorecase
set smartcase
set laststatus=2
set fileencodings=utf8
set textwidth=119
set wrapmargin=0
set formatoptions-=t
set pastetoggle=<F10>
set cursorline
set listchars=eol:$,tab:▸\ ,extends:>,precedes:<
set list
let &colorcolumn="80,".join(range(120,999),",")
set diffopt+=iwhite

nnoremap <F12> :e ++enc=utf-8<CR>
nnoremap j gj
nnoremap k gk
vnoremap // y/<C-R>"<CR>

iab sefl self
