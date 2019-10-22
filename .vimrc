""""""""""""""""""
" Plugin setting "
""""""""""""""""""
" Vundle (http://blog.b1ue.sh/2016/10/09/vim-ide/)
" $git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin list (must be between #begin and #end)
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'nanotech/jellybeans.vim'

call vundle#end()            " required
filetype plugin indent on    " required

" vim-airline color
set t_Co=256

""""""""""""""""""
" Custom setting "
""""""""""""""""""
" Search keyward highlighting
set hlsearch

" Show search result while typing a keyward
set incsearch

" Line number
set nu

" Automatic indentation
set autoindent
set cindent
set smartindent

" Always show status bar 
set laststatus=2

" Show current cursor position
set ruler

" status bar format
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

" Tab => 2 spaces
set expandtab
set smarttab
set softtabstop=2
set tabstop=2
set shiftwidth=2

" [{()}] highlight
set showmatch

" Use mouse
set mouse=a
if has("mouse_sgr")
  set ttymouse=sgr
else
  set ttymouse=xterm2
end

color jellybeans
syntax on

"""""""""""""""""
" Custom keymap "
"""""""""""""""""
" Moving among split windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" NERDTree
map <Leader>nt <ESC>:NERDTree<CR>
