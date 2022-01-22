call plug#begin('C:/Users/user/AppData/Local/nvim/autoload')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'alvan/vim-closetag'
" Plug 'AndrewRadev/tagalong.vim'
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
