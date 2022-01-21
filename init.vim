set nocompatible
set encoding=utf-8
set backspace=2
filetype off
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

call plug#begin('C:/Users/user/AppData/Local/nvim/autoload')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'AndrewRadev/tagalong.vim'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'mogelbrod/vim-jsonpath'
Plug 'morhetz/gruvbox'
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'
Plug 'preservim/nerdtree'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'OmniSharp/omnisharp-vim'
" Plug 'mfussenegger/nvim-jdtls'
" Plug 'nvim-lua/completion-nvim'
" Plug 'neovim/nvim-lspconfig'
" Plug 'ycm-core/YouCompleteMe'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } 
Plug 'junegunn/fzf.vim'
call plug#end()

colorscheme gruvbox
set background=dark
syntax enable

:lua require('kevin')
source C:/Users/user/AppData/Local/nvim/mappings.vim
source C:/Users/user/AppData/Local/nvim/coc.vim
source C:/Users/user/AppData/Local/nvim/nerdtree.vim
source C:/Users/user/AppData/Local/nvim/telescope.vim
source C:/Users/user/AppData/Local/nvim/airline.vim
source C:/Users/user/AppData/Local/nvim/vimspector.vim
source C:/Users/user/AppData/Local/nvim/dadbod.vim

" language specific
func! CompileRun()
    exec "w"
    if &filetype == 'python'
        :!time python %
    elseif &filetype == 'java'
        let l:path = expand('%')
        echo l:path
        exec '!javac -d bin ' . l:path
        echo 'compile success: ' . l:path
        let l:path = substitute(l:path, "\\", ".", "g")
        let l:path = substitute(l:path, ".java", "", "")
        let l:path = substitute(l:path, "src.", "", "")
        echo l:path
        exec '!java -cp ./bin ' . l:path
    elseif &filetype == 'lua'
        :!time lua %<cr>
    elseif &filetype == 'sh'
        :!time bash %<cr>
    elseif &filetype == 'go'
        :!time go run %<cr>
    endif
endfunc
nmap <leader>r :call CompileRun()<cr>

" autocmd FileType go nnoremap <buffer> <leader>r :!go run %

" fzf settings
" This is the default extra key bindings
let g:fzf_action = {
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-x': 'split',
            \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'
