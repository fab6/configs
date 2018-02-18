" nmap <buffer>` :VimFiler -status /home/fbraenns/<CR>
" nmap <buffer>1 :VimFiler -status /home/fbraenns/00_ALLG/<CR>
" nmap <buffer>2 :VimFiler -status /home/fbraenns/01_FINANCE/<CR>
" nmap <buffer>3 :VimFiler -status /home/fbraenns/02_CFD/<CR>
" nmap <buffer>4 :VimFiler -status /home/fbraenns/03_GA/<CR>
" nmap <buffer>9 :VimFiler -status /home/fbraenns/99_SHARE/<CR>
" nmap <buffer>0 :VimFiler -status /share/software/Fire/<CR>
nmap <buffer>` :VimFiler -status /home/fbraenns/<CR>
" nmap <buffer>0 :VimFiler -status /home/fbraenns/<CR>
nmap <buffer>1 :VimFiler -status /WORK1/fbraenns/<CR>
nmap <buffer>2 :VimFiler -status /WORK2/fbraenns/<CR>
nmap <buffer>3 :VimFiler -status /data/work/fbraenns/<CR>
nmap <buffer>4 :VimFiler -status /share/Tools/<CR>
nmap <buffer>9 :VimFiler -status /home/fbraenns/.modulefiles/<CR>
nmap <buffer>gx :vs<CR> :VimFilerCreate -status<CR>
nmap <buffer>gX :sp<CR> :VimFilerCreate -status<CR>
nmap <buffer>o <Plug>(vimfiler_execute_vimfiler_associated)
nmap <buffer><C-C> <Plug>(vimfiler_mark_current_line)<Plug>(vimfiler_clipboard_copy_file)
nmap <buffer><C-R> <Plug>(vimfiler_mark_current_line)<Plug>(vimfiler_clipboard_move_file)
nmap <buffer>C <Plug>(vimfiler_mark_current_line)<Plug>(vimfiler_clipboard_copy_file)<C-w>w<Plug>(vimfiler_clipboard_paste)
nmap <buffer>R <Plug>(vimfiler_mark_current_line)<Plug>(vimfiler_clipboard_move_file)<C-w>w<Plug>(vimfiler_clipboard_paste)
nmap <buffer>r <Plug>(vimfiler_move_file)
nmap <buffer>p <Plug>(vimfiler_clipboard_paste)
nmap <buffer>d <Plug>(vimfiler_mark_current_line)<Plug>(vimfiler_delete_file)
nmap <buffer>F <Plug>(vimfiler_new_file)
nmap <buffer>+ <Plug>(vimfiler_make_directory)
nmap <buffer>m <Plug>(vimfiler_toggle_mark_current_line)
nmap <buffer>b <Plug>(vimfiler_cd_input_directory)<C-u>bookmark:/<CR>
nnoremap <buffer><expr><silent> s vimfiler#do_switch_action('split')
nnoremap <buffer><expr><silent> v vimfiler#do_switch_action('vsplit')
"nnoremap <silent> <leader>M :<C-u>Denite menu -mode=normal<CR>

" nmap <buffer>Z :vs <CR>:terminal<CR>
"nmap <buffer>z :call jobstart('xterm') <CR>
nmap <buffer>,x :call jobstart('xterm',{'detach':1}) <CR>
nmap <buffer>,y :call jobstart('xterm -e mc . .',{'detach':1}) <CR>
nmap <buffer>X :call jobstart('xterm -e vi',{'detach':1}) <CR>

nmap <buffer>ce>      @<Plug>(vimfiler_toggle_mark_current_line)
nmap <buffer>gR :Denite grep -mode=normal<CR>







" nunmap <buffer> x
    " autocmd Filetype vimfiler setlocal cursorline
    " autocmd FileType vimfiler nunmap <buffer> x
    " autocmd FileType vimfiler nmap <buffer>` :VimFiler /home/fbraenns/<CR>
    " autocmd FileType vimfiler nmap <buffer>0 :VimFiler /home/fbraenns/00_ALLG/<CR>
    " autocmd FileType vimfiler nmap <buffer>1 :VimFiler /home/fbraenns/01_FINANCE/<CR>
    " autocmd FileType vimfiler nmap <buffer>2 :VimFiler /home/fbraenns/02_CFD/<CR>
    " autocmd FileType vimfiler nmap <buffer>3 :VimFiler /home/fbraenns/03_GA/<CR>
    " autocmd FileType vimfiler nmap <buffer>9 :VimFiler /home/fbraenns/99_SHARE/<CR>
    " autocmd FileType vimfiler nmap <buffer>Z :vs <CR> :terminal<CR>
    " autocmd FileType vimfiler nmap <buffer>z :! xterm <CR>
    " autocmd Filetype vimfiler setlocal cursorline
    " autocmd FileType vimfiler nunmap <buffer> x
    " autocmd FileType vimfiler nmap <buffer>x <Plug>(vimfiler_toggle_mark_current_line)
    " autocmd FileType vimfiler vmap <buffer>x <Plug>(vimfiler_toggle_mark_selected_lines)
    " autocmd FileType vimfiler nunmap <buffer> l
    " autocmd FileType vimfiler nmap <buffer> l <Plug>(vimfiler_cd_or_edit)
    " autocmd FileType vimfiler nmap <buffer> h <Plug>(vimfiler_switch_to_parent_directory)
    " autocmd FileType vimfiler nmap <buffer> <C-R> <Plug>(vimfiler_redraw_screen)
    " autocmd FileType vimfiler nmap <silent><buffer><expr> <CR> vimfiler#smart_cursor_map( "\<Plug>(vimfiler_expand_tree)", "\<Plug>(vimfiler_edit_file)")
    " au FileType vimfiler call s:vimfiler_settings()
