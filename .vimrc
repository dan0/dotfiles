 set nocompatible               " be iMproved
 let mapleader=","
 filetype off                   " required!

 syntax on
 let &t_Co=256

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()


 "-------------------------------------
 "  Bundles 
 "-------------------------------------
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
 Bundle 'tpope/vim-fugitive'
 "Bundle 'mhinz/vim-startify'
 Bundle 'bling/vim-airline'

 "groenewege Less Highlighting
 Bundle 'hail2u/vim-css3-syntax'
 Bundle 'lunaru/vim-less'
 nnoremap ,m :w <BAR> !lessc % > %:t:r.css<CR><space>
 au BufNewFile,BufRead *.less set filetype=less
 
 "Snipmate requirements
 Bundle "MarcWeber/vim-addon-mw-utils"
 Bundle "tomtom/tlib_vim"
 Bundle 'garbas/vim-snipmate'

 "let g:tern_map_keys=1
 "let g:tern_show_argument_hints='on_hold'

 filetype plugin indent on     " required!

 " Automatically open nerdtree if no files open
 "autocmd vimenter * if !argc() | NERDTree | endif

 " Nerdtree with ctrl+n
 map <C-n> :NERDTreeToggle<CR>

 " Powerline/airline font handling
 let g:airline_powerline_fonts = 1

 "----------------------------------
 "  Terminal
 "----------------------------------
 set ttyfast           " this is the 21st century, people"


 "-------------------------------------
 "  Whitespace
 "-------------------------------------
 " Trailing whitespace, highlight and strip
 highlight ExtraWhitespace ctermbg=red guibg=red
 match ExtraWhitespace /\s\+$/
 autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
 autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
 autocmd InsertLeave * match ExtraWhitespace /\s\+$/
 autocmd BufWinLeave * call clearmatches()

 function! TrimWhiteSpace()
   %s/\s\+$//e
 endfunction
 autocmd BufWritePre     *.js :call TrimWhiteSpace()


 "-------------------------------------
 "  Colours
 "-------------------------------------
 colorscheme smyck 



 "-------------------------------------
 "  Editing etc.
 "-------------------------------------
 if exists('+colorcolumn')
   set colorcolumn=80    " display a line in column 80 to show you
                         " when to line break.
 endif

 set showmode
 set showcmd " In the status bar, show incomplete commands as they are typed 
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

 
 "set expandtab
 "set shiftwidth=2
 "set softtabstop=2

 autocmd FileType javascript set expandtab shiftwidth=2 softtabstop=2
 " When vimrc is edited, reload it
 autocmd! bufwritepost .vimrc source ~/.vimrc
 
 "-----------------------------------
 "  Searching
 "-----------------------------------
 set hlsearch       "highlight search
 set incsearch      "incremental search
 set ignorecase     "search is case insensitive...
 set smartcase      "..unless it contains an uppercase char

 
 "----------------------------------
 
 set bs=indent,eol,start     " Backspace over everything in insert mode
