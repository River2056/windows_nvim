source C:/Users/user/AppData/Local/nvim/init/plugins.vim
source C:/Users/user/AppData/Local/nvim/init/sets.vim
source C:/Users/user/AppData/Local/nvim/init/mappings.vim
source C:/Users/user/AppData/Local/nvim/init/coc.vim
source C:/Users/user/AppData/Local/nvim/init/nerdtree.vim
source C:/Users/user/AppData/Local/nvim/init/telescope.vim
" source C:/Users/user/AppData/Local/nvim/init/lualine.vim
" source C:/Users/user/AppData/Local/nvim/init/airline.vim
source C:/Users/user/AppData/Local/nvim/init/vimspector.vim
source C:/Users/user/AppData/Local/nvim/init/dadbod.vim
source C:/Users/user/AppData/Local/nvim/init/harpoon.vim

" language specific
" CompileRun
func! CompileRun()
    exec "w"
    if &filetype == 'python'
        :!python %
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
        :!lua %<cr>
    elseif &filetype == 'sh'
        :!bash %<cr>
    elseif &filetype == 'go'
        :!go run %<cr>
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

augroup remember_folds
    autocmd!
    autocmd BufWinLeave *.* mkview
    autocmd BufWinEnter *.* silent! loadview
augroup end
