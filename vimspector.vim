" for Vimspector debug java
" stop => shift + f5
nmap <F1> :CocCommand java.debug.vimspector.start<CR>
nnoremap <leader>lb :call vimspector#ListBreakpoints()<cr>
nnoremap <leader>cb :call vimspector#ClearBreakpoints()<cr>
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
"
fun! GotoWindow(id)
    call win_gotoid(a:id)
    MaximizerToggle
endfun

nnoremap <leader>m :MaximizerToggle!<cr>
nnoremap <leader>dd :call vimspector#Launch()<cr>
nnoremap <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<cr>
nnoremap <leader>dt :call GotoWindow(g:vimspector_session_windows.tagpage)<cr>
nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<cr>
nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<cr>
nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<cr>
nnoremap <leader>do :call GotoWindow(g:vimspector_session_windows.output)<cr>
nnoremap <leader>de :call vimspector#Reset()<cr>

nnoremap <leader>dtcb :call vimspector#CleanLineBreakpoint()<cr>

nmap <leader>dl <Plug>VimspectorStepInto
nmap <leader>dj <Plug>VimspectorStepOver
nmap <leader>dk <Plug>VimspectorStepOut
nmap <leader>d_ <Plug>VimspectorRestart
nnoremap <leader>d<space> :call vimspector#Continue()<cr>

nmap <leader>drc <Plug>VimspectorRunToCursor
nmap <leader>dbp <Plug>VimspectorToggleBreakpoint
nmap <leader>dcbp <Plug>VimspectorToggleConditionalBreakpoint
