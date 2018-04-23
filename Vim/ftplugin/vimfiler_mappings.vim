:nunmap <buffer> <Space>
nmap <silent><buffer>` :VimFiler -status /home/fbraenns/<CR>
nmap <silent><buffer>1 :VimFiler -status /home/fbraenns/00_ALLG/<CR>
nmap <silent><buffer>2 :VimFiler -status /home/fbraenns/01_FINANCE/<CR>
nmap <silent><buffer>3 :VimFiler -status /home/fbraenns/02_CFD/<CR>
nmap <silent><buffer>4 :VimFiler -status /home/fbraenns/03_GA/<CR>
nmap <silent><buffer>9 :VimFiler -status /home/fbraenns/99_SHARE/<CR>
" nmap <silent><buffer>` :VimFiler -status /home/fbraenns/<CR>
" nmap <silent><buffer>1 :VimFiler -status /WORK1/fbraenns/<CR>
" nmap <silent><buffer>2 :VimFiler -status /WORK2/fbraenns/<CR>
" nmap <silent><buffer>3 :VimFiler -status /data/work/fbraenns/<CR>
" nmap <silent><buffer>4 :VimFiler -status /share/Tools/<CR>
" nmap <silent><buffer>9 :VimFiler -status /home/fbraenns/.modulefiles/<CR>
nmap <silent><buffer>0 <Plug>(vimfiler_cursor_top)

nmap <silent><buffer>b <Plug>(vimfiler_cd_input_directory)<C-u>bookmark:/<CR>
nmap <silent><buffer>d <Plug>(vimfiler_mark_current_line)<Plug>(vimfiler_delete_file)
nmap <silent><buffer>m <Plug>(vimfiler_toggle_mark_current_line)
vmap <silent><buffer>m <Plug>(vimfiler_toggle_mark_selected_lines)
nmap <silent><buffer>o <Plug>(vimfiler_execute_system_associated)
nmap <silent><buffer>O <Plug>(vimfiler_execute_vimfiler_associated)
nmap <silent><buffer>p <Plug>(vimfiler_clipboard_paste)
nmap <silent><buffer>q <Plug>(vimfiler_exit)
nmap <silent><buffer>r <Plug>(vimfiler_move_file)
nmap <silent><buffer>w <Plug>(vimfiler_rename_file)

nmap <silent><buffer>C <Plug>(vimfiler_mark_current_line)<Plug>(vimfiler_clipboard_copy_file)<C-w>w<Plug>(vimfiler_clipboard_paste)
nmap <silent><buffer>F <Plug>(vimfiler_new_file)
nmap <silent><buffer>R <Plug>(vimfiler_mark_current_line)<Plug>(vimfiler_clipboard_move_file)<C-w>w<Plug>(vimfiler_clipboard_paste)
nmap <silent><buffer>Q <Plug>(vimfiler_exit):q<CR>


nmap <silent><buffer>gR :Denite grep -mode=normal<CR>
nmap <silent><buffer>gx :vs<CR> :VimFilerCreate -status -sort-type=Time<CR>
nmap <silent><buffer>gX :sp<CR> :VimFilerCreate -status -sort-type=Time<CR>
nmap <silent><buffer>gt :tabnew<CR> :terminal<CR>
nmap <silent><buffer>gT :sp<CR> :terminal<CR>

nmap <silent><buffer>+ <Plug>(vimfiler_make_directory)

nmap <silent><buffer><C-C> <Plug>(vimfiler_mark_current_line)<Plug>(vimfiler_clipboard_copy_file)
nmap <silent><buffer><C-R> <Plug>(vimfiler_mark_current_line)<Plug>(vimfiler_clipboard_move_file)

nnoremap <silent><buffer><expr><silent> s vimfiler#do_switch_action('split')
nnoremap <silent><buffer><expr><silent> v vimfiler#do_switch_action('vsplit')

nmap <silent><buffer>,x :call jobstart(['xterm'],{'detach':1}) <CR>
" <<<<<<< HEAD
"nmap <silent><buffer>,X :call jobstart('xterm -e /share/Tools/Editing/NeoVim/nvim.appimage -c ":VimFilerBufferDir -status -sort-type=Time"' ,{'detach':1}) <CR>
nmap <silent><buffer>,X :call jobstart('xterm -e /usr/bin/nvim -c ":VimFilerBufferDir -status -sort-type=Time"' ,{'detach':1}) <CR>
"nmap <silent><buffer>,X :call jobstart('xterm -e /share/Tools/Editing/NeoVim/nvim.appimage -c ":VimFilerBufferDir -status -sort-type=Time"' ,{'detach':1}) <CR>
nmap <silent><buffer>X :VimFilerTab -status -sort-type=Time<CR>
" >>>>>>> 34075d7da7db166e36fdcd38bf09c9308deff69c

" Geht nicht, da expand nur den Buffernamen von vimfiler uebertraegt, aber nicht die eigentliche Datei
nmap <silent><buffer>,O :call jobstart(['xterm','-e','/usr/bin/vim',expand('%:t')],{'detach':1}) <CR>
nmap <silent><buffer>,y :call jobstart(['xterm','-e','mc','.','.'],{'detach':1}) <CR>
