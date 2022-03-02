set nocompatible
set encoding=utf-8
set backspace=2
filetype plugin indent on
let $PATH = "C:\\Program Files\\Git\\usr\\bin;" . $PATH

let $LANG='en'
set langmenu=none
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set smartindent
set smartcase
set ignorecase
set incsearch
set noswapfile
set nowrap
set number 
set splitbelow
set splitright
set relativenumber
set hlsearch
" set t_Co=256                            " Support 256 colors
set termguicolors
set path+=**
set iskeyword+=-
set noerrorbells
set scrolloff=10
set hidden
au! BufWritePost $MYVIMRC source $MYVIMRC      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

colorscheme gruvbox
set background=dark
syntax enable

augroup set_ts_tab_width
    autocmd!
    autocmd FileType typescript set tabstop=2 softtabstop=2 shiftwidth=2
augroup end

lua require('kevin')
