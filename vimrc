" Vundle configuration -------------------------------------------------------
"  :PluginInstall after adding a new plugin to install it and :PluginUpdate to
"  update all the plugins.

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle.
Plugin 'vundlevim/Vundle.vim'

" NerdTree.
Plugin 'scrooloose/nerdtree.git'

" CtrlP
Plugin 'ctrlpvim/ctrlp.vim'

" Hard Mode.
Plugin 'wikitopian/hardmode'

" Fugitive
Plugin 'tpope/vim-fugitive'

" Surround
Plugin 'tpope/vim-surround'

" SnipMate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

call vundle#end()

"-----------------------------------------------------------------------------

set number
set relativenumber     

set linebreak  
set showbreak=+++       
set textwidth=79
set showmatch   
set visualbell  
 
set hlsearch    
set smartcase   
set ignorecase  
set incsearch   
 
set autoindent  
set expandtab   
set shiftwidth=4        
set smartindent 
set smarttab    
set softtabstop=4       

set ruler       
 
set undolevels=1000     
set backspace=indent,eol,start  

syntax on
filetype plugin on
set smartcase

" Code Folding setting
set foldmethod=indent
set foldnestmax=5

" Highlight a section of code and pres gq to re-wrap it to the textwidth
" specified.
au BufRead,BufNewFile *.cc,*.py setlocal textwidth=72

" KEY MAPINGS ----------------------------------------------------------

"NERDTree.
map <leader>nt :NERDTree <enter>

"Insert an actual tab cahrachter (like for makefiles)
map <S-Tab> <C-V><Tab>

"Map F7 to tab previous and F8 to next tab
map <F7> :tabp <Enter>
map <F8> :tabn <Enter>

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" setup powerline ------------------------------------------------------------
set rtp+=/usr/lib/python3.4/site-packages/powerline/bindings/vim  
" displaythe status line in all windows.
set laststatus=2
" sets the colorspace.
set t_Co=256
" Allows for the fancy symobls.
let g:Powerline_symbols = 'fancy'

"nnoremap <esc> :noh<return><esc>

" Make it so that yank pull to the system clipboard.
set clipboard=unnamed

