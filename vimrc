set nocompatible              " required
filetype off                  " required
set noerrorbells
set nowrap
set incsearch
set smartindent
set tabstop=4 softtabstop=4
set shiftwidth=4
set undofile
set undodir=~/.vim/undo
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...
Bundle 'Valloric/YouCompleteMe'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-syntastic/syntastic'
Plugin 'morhetz/gruvbox'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'simnalamburt/vim-mundo'
Plugin 'mbbill/undotree'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

"make code look fcking pretty
let python_highlight_all=1
syntax on

"define which scheme to use based upon the VIM mode
"if has('gui_running')
"  set background=dark
"  colorscheme solarized
"else
"  colorscheme zenburn
"endif
colorscheme gruvbox
set background=dark
" enable syntax highlighting
syntax enable

" show line numbers
set number

" show the matching part of the pair for [] {} and ()
"set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1


"because python programmers use tabs and not spaces
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ textwidth=79
    \ expandtab
    \ autoindent
    \ fileformat=unix

map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>
nnoremap <F5> :MundoToggle<CR>
