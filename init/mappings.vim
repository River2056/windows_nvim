" custom mappings
inoremap jk <esc>
inoremap kj <esc>
let mapleader = ","
noremap <leader>aa :%y+<cr>
nnoremap <leader>tex :Tex<cr>
noremap <leader>jp :JsonPath<cr>
nnoremap <leader><space> :noh<cr>
vnoremap <leader>p "_dP
nnoremap <leader>o :Ex<cr>
nnoremap <leader>% "%p
nnoremap <leader>ss :w<cr>
nnoremap <leader>q :q<cr>
vnoremap <leader>rc :w !cmd<cr>
nnoremap <leader>0 :CocCommand rest-client.request<cr>
nnoremap <leader>ev :Hex! C:/Users/user/AppData/Local/nvim/<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>pi :PlugInstall<cr>
nnoremap <leader>pc :PlugClean<cr>

" tabs
nnoremap <leader>dtt :diffthis<cr>
nnoremap <leader>dff :diffoff<cr>
nnoremap <leader>nt :tabnew<cr>
nnoremap <leader>vba :vert ba<cr>

" buffers
nnoremap <leader>nb :enew<cr>
nnoremap <leader>bn :bnext<cr>
nnoremap <leader>bp :bprevious<cr>
nnoremap <leader>bd :bdelete<cr>
nnoremap <leader>bda :%bd<bar>e#<cr>
nnoremap <leader>ls :ls<cr>

" fzf
nnoremap <leader>fl :Lines 
nnoremap <leader>fb :BLines 
nnoremap <leader>ff :Files<cr>
nnoremap <leader>fg :GFiles 
nnoremap <leader>f? :GFiles? 
nnoremap <leader>ft :Tags<cr>
nnoremap <leader>fa :Ag<cr>
nnoremap <leader>fc :Commits

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" visual indent
vnoremap > >gv
vnoremap < <gv

" Git fugitive
nmap <leader>gs :Git<cr>
nmap <leader>gf :diffget //2<cr>
nmap <leader>gj :diffget //3<cr>

" language specific abbreviations
autocmd FileType java iabbrev pcls public class <esc>"%pvbbdbbv^wwdA {<cr>}<esc>O
autocmd FileType java iabbrev pint public interface <esc>"%pvbbdbbv^wwdA {<cr>}<esc>O
autocmd FileType java iabbrev psvm public static void main(String[] args) {<cr>}<esc>O
autocmd FileType typescript iabbrev ecls export class <esc>"%pvbbdbbv^wwdA {<cr>}<esc>O
autocmd FileType typescript iabbrev eint export interface <esc>"%pvbbdbbv^wwdA {<cr>}<esc>O

" disable language server for csharp to avoid lag: PBSS
augroup disable_lsp
    autocmd!
    autocmd BufWinEnter *.cs :CocDisable
    autocmd BufWinEnter *.cs :call OmniSharp#StopAllServers()
augroup end
