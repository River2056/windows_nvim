let g:db = 'jdbc:sqlserver://pbss_sit_dbo:dbosit@172.24.17.23:1803/PBSS_SIT_1'
" let g:dbs = [
"     \ { 'name': 'sql-server', 'url': g:db }
" \ ]

let g:db_ui_execute_on_save = '0'
nnoremap <leader>u :DBUIToggle<cr>
nnoremap <leader>rq :%DB<cr>
vnoremap <leader>rq :DB<cr>
