nmap <Leader>C :vsp<CR><C-w><C-w>:term python %<CR>
" map <F12> :Deol -comand "python `expand('%:p:h')`"<CR>
" nmap <silent><Leader>c :call jobstart('xterm -hold -e python"' ,{'detach':1}) <CR>
nmap <silent><Leader>c :call jobstart(['xterm','-hold','-e','python',expand('%:t')],{'detach':1}) <CR>
