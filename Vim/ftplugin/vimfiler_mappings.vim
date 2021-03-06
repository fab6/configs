"--------------------------------------------------------------------------------------------------
:nunmap <buffer> <Space>
if hostname() == "asus"
    nmap <silent><buffer>` :VimFiler -status /home/fbraenns/<CR>
    nmap <silent><buffer>1 :VimFiler -status /home/fbraenns/00_ALLG/<CR>
    nmap <silent><buffer>2 :VimFiler -status /home/fbraenns/01_FINANCE/<CR>
    nmap <silent><buffer>3 :VimFiler -status /home/fbraenns/02_CFD/<CR>
    nmap <silent><buffer>4 :VimFiler -status /home/fbraenns/03_GA/<CR>
    nmap <silent><buffer>9 :VimFiler -status /home/fbraenns/99_SHARE/<CR>
    nmap <silent><buffer>,X :call jobstart('xterm -e /usr/bin/nvim -c ":VimFilerBufferDir -status -sort-type=Time"' ,{'detach':1}) <CR>
    "nmap <silent><buffer>,A :call jobstart('xterm -e arduino --upload' ,{'detach':1}) <CR>
    nmap <silent><buffer>,U :call jobstart(['xterm','-e','arduino','--upload',expand('%:t')],{'detach':1}) <CR>
    nmap <silent><buffer>,V :call jobstart(['xterm','-e','arduino','--verify',expand('%:t')],{'detach':1}) <CR>
    "nmap <silent><buffer>,O :call jobstart(['xterm','-e','/usr/bin/vim',expand('%:t')],{'detach':1}) <CR>
else
    nmap <silent><buffer>` :VimFiler -status /home/fbraenns/<CR>
    nmap <silent><buffer>1 :VimFiler -status /WORK1/fbraenns/<CR>
    nmap <silent><buffer>2 :VimFiler -status /WORK2/fbraenns/<CR>
    nmap <silent><buffer>3 :VimFiler -status /WORK3/fbraenns/<CR>
    nmap <silent><buffer>4 :VimFiler -status /data/work/fbraenns/<CR>
    nmap <silent><buffer>5 :VimFiler -status /share/Tools/<CR>
    nmap <silent><buffer>6 :VimFiler -status /share/software/<CR>
    nmap <silent><buffer>9 :VimFiler -status /home/fbraenns/.modulefiles/<CR>
    nmap <silent><buffer>,X :call jobstart('xterm -e /share/Tools/Editing/NeoVim/nvim.appimage -c ":VimFilerBufferDir -status -sort-type=Time"' ,{'detach':1}) <CR>
    nmap <silent><buffer>,s2 :call jobstart('/share/software/cd-adapco/STAR-CCM+12.02/STAR-CCM+12.02.010-R8/star/bin/starccm+',{'detach':1}) <CR>
    nmap <silent><buffer>,s1 :call jobstart('/share/software/cd-adapco/STAR-CCM+11.06/STAR-CCM+11.06.010-R8/star/bin/starccm+',{'detach':1}) <CR>
    "nmap <silent><buffer>,p :call jobstart('python +',{'detach':1}) <CR>
endif
nmap <silent><buffer>0 <Plug>(vimfiler_cursor_top)

"-------------------------------------------------------------------------------------------------- 
"nmap <silent><buffer>b <Plug>(vimfiler_cd_input_directory)<C-u>bookmark:/<CR>
nmap <silent><buffer>B :UniteBookmarkAdd<CR>
nmap <silent><buffer>b :Unite -silent -auto-resize -buffer-name=Bookmarks -default-action=vimfiler bookmark<CR>
"VimFilerBufferDir -status -sort-type=Time<CR>
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
"nmap <silent><buffer>R <Plug>(vimfiler_mark_current_line)<Plug>(vimfiler_clipboard_move_file)<C-w>w<Plug>(vimfiler_clipboard_paste)
nmap <silent><buffer>R <Plug>(vimfiler_mark_current_line)<Plug>(vimfiler_clipboard_move_file)<C-w>w<Plug>(vimfiler_clipboard_paste)y
nmap <silent><buffer>Q <Plug>(vimfiler_exit):q<CR>
" nmap <silent><buffer>S <Plug>(vimfiler_sort)<Plug>(vimfiler_clipboard_copy_file)<C-w>w<Plug>(vimfiler_clipboard_paste)


"-------------------------------------------------------------------------------------------------- 
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

"-------------------------------------------------------------------------------------------------- 
nmap <silent><buffer>,x :call jobstart(['xterm'],{'detach':1}) <CR>
nmap <silent><buffer>X :VimFilerTab -status -sort-type=Time<CR>

" Geht nicht, da expand nur den Buffernamen von vimfiler uebertraegt, aber nicht die eigentliche Datei
nmap <silent><buffer>,O :call jobstart(['xterm','-e','/usr/bin/vim',expand('%:t')],{'detach':1}) <CR>
nmap <silent><buffer>,y :call jobstart(['xterm','-e','mc','.','.'],{'detach':1}) <CR>

