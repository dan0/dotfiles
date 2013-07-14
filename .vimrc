 set nocompatible               " be iMproved
 let mapleader=","
 filetype off                   " required!

 syntax on
 let &t_Co=256

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()


 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 Bundle 'Valloric/YouCompleteMe'
 Bundle 'kien/ctrlp.vim'
 Bundle 'w0ng/vim-hybrid'
 Bundle 'mileszs/ack.vim'
 Bundle 'scrooloose/nerdtree'
 Bundle 'scrooloose/syntastic'
 Bundle 'jelera/vim-javascript-syntax'
 Bundle 'pangloss/vim-javascript'
 Bundle 'nathanaelkane/vim-indent-guides'
 Bundle 'marijnh/tern_for_vim'

 " Automatically open nerdtree if no files open
 autocmd vimenter * if !argc() | NERDTree | endif

 " Nerdtree with ctrl+n
 map <C-n> :NERDTreeToggle<CR>
 
 " let g:hybrid_use_Xresources = 1
 colorscheme hybrid

 set showmode
 set showcmd
 set shortmess=atI
 set laststatus=2

 set statusline=%(\ %f%m%r%{&paste?'[PASTE]':''}\ %)%=%(\ y=%l,x=%v:%=%p%%\ %)

set splitbelow
set splitright
set fillchars=stl:-,vert:\|,fold:-,diff:-

" navigate between windws
noremap <C-j> <C-w>W
noremap <C-k> <C-W>w
noremap <C-w><C-j> <C-w>W
noremap <C-w><C-k> <C-W>w
noremap <C-w>j <C-w>W
noremap <C-w>k <C-W>w
noremap <C-w><C-w> <C-w>p

noremap <leader>t :tabnew<CR>

 filetype plugin indent on     " required!
 "
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

 
 set expandtab
 set shiftwidth=2
 set softtabstop=2

 autocmd FileType javascript set expandtab shiftwidth=2
 " When vimrc is edited, reload it
 autocmd! bufwritepost .vimrc source ~/.vimrc
 set hlsearch
 set bs=indent,eol,start     " Backspace over everything in insert mode
