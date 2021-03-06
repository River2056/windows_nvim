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
nnoremap <space> za

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
nmap <leader>dg :diffget<cr>
nmap <leader>gc :Git commit<cr>
nmap <leader>gp :Git push<cr>

" language specific abbreviations
autocmd FileType java iabbrev sout System.out.println
autocmd FileType java iabbrev souf System.out.printf()<esc>F(a
autocmd FileType java iabbrev pcls public class <esc>"%pvbbdbbv^wwdA {<cr>}<esc>O
autocmd FileType java iabbrev pint public interface <esc>"%pvbbdbbv^wwdA {<cr>}<esc>O
autocmd FileType java iabbrev psvm public static void main(String[] args) {<cr>}<esc>O
autocmd FileType typescript iabbrev ecls export class <esc>"%pvbbdbbv^wwdA {<cr>}<esc>O
autocmd FileType typescript iabbrev eint export interface <esc>"%pvbbdbbv^wwdA {<cr>}<esc>O
autocmd FileType python iabbrev defmain def main():<esc>opass<esc>o<cr>if __name__ == '__main__':<esc>omain()
autocmd FileType python iabbrev deftest import unittest<esc>o<cr>O<esc>"%pvbbdbbv^dIdef <esc>A():<cr>pass<cr><cr><esc>"%p$vbbdbbv^d,ccIclass Test<esc>l~<esc>A(unittest.TestCase):<cr>def setUp(self):<cr>self.tests = []<cr><cr><esc>"%pvbbdbbv^dI	def test_<esc>A(self):<cr>for value, expected in self.tests:<cr>with self.subTest(value=value):<cr>result = <esc>"%pvbbdbbvT=di <esc>A(value)<cr>print(f'result: {result}, expected: {expected}, input: {value}')<cr>self.assertEqual(result, expected)<cr><cr><esc>0aif __name__ == '__main__':<cr>unittest.main()
autocmd FileType python iabbrev defmn <cr><esc>"%pvbbdbbv0dviw"lyIdef <esc>A():<cr>pass<cr><cr><esc>d0Idef test_case():<cr>res = <esc>"lpA()<cr>print(res)<cr><cr><esc>d0Idef main():<cr>test_case() # res<cr><cr><esc>d0Iif __name__ == "__main__":<cr>main()

" disable language server for csharp to avoid lag: PBSS
augroup disable_lsp
    autocmd!
    " autocmd BufWinEnter *.cs :CocDisable
    autocmd BufWinEnter *.cs :call OmniSharp#StopAllServers()
augroup end

augroup black_on_save
  autocmd!
  autocmd BufWritePre *.py Black
augroup end

function! SearchAndReplace()
    let l:word = expand('<cword>')
    echom l:word
    exec "wincmd l"
    " if search(l:word, 'w') != 0
    "     exec "wincmd h"
    "     exec "norm! 0d}dd"
    " endif
    call search(l:word, 'w')
endfunction
nnoremap <leader>sr :call SearchAndReplace()<cr>
