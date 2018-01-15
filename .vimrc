"This .vimrc used by Onni Lampi
"Usage: download and run https://onnilampi.fi/static/vimrc-install.sh

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
filetype plugin indent on
syntax enable

"better safe than sorry, no idea what this does
set nocompatible

"bottom bar
set ruler

"smart indents
set smartindent

"enable mouse support
"set mouse=a


"completion in cl
set wildmenu wildmode=longest,list

"hilight search results
set hlsearch

"ignore case when searching
set ignorecase

"fun with parenthesis
set showmatch

"real time search
set incsearch

"always show bottom bar
set laststatus=2

"line numbers and relative numbering
set number
set relativenumber

"Tabs to spaces
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

"no swap, it's useless
set nobackup
set nowb
set noswapfile

"map ESC to CTRL+L
imap <C-L> <Esc>

"Tab navigation
map <C-n> :tabn<CR>
map <C-b> :tabp<CR>
map <C-e> :tabe 
color desert

"Hilight text hoinh over 80 characters
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

"autowrite and autoread
set autoread autowrite

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-t> :NERDTreeToggle<CR>
let g:airline_powerline_fonts = 1
