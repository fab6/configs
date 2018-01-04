nmap <buffer>` :VimFiler -status /home/fbraenns/<CR>
nmap <buffer>0 :VimFiler -status /home/fbraenns/00_ALLG/<CR>
nmap <buffer>1 :VimFiler -status /home/fbraenns/01_FINANCE/<CR>
nmap <buffer>2 :VimFiler -status /home/fbraenns/02_CFD/<CR>
nmap <buffer>3 :VimFiler -status /home/fbraenns/03_GA/<CR>
nmap <buffer>9 :VimFiler -status /home/fbraenns/99_SHARE/<CR>
nmap <buffer>Z :vs <CR> :terminal<CR>
nmap <buffer>z :call jobstart('xterm') <CR>






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
