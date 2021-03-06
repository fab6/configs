
		" nnoremap <silent><buffer><expr> <CR>
		" \ defx#is_directory() ?
		" \ defx#do_action('open') :
		" \ defx#do_action('multi', ['drop', 'quit'])
"-------------------------------------------------------------------------------------------------- 
"nnoremap <buffer> o <Plug>(vimfiler_execute_system_associated)
nnoremap <silent><buffer><expr> C defx#do_action('copy') . '<C-w>w' . defx#do_action('paste')
nnoremap <silent><buffer><expr> R defx#do_action('move') . '<C-w>w' . defx#do_action('paste')
" nnoremap <silent><buffer><expr> E defx#do_action('open', 'vsplit')
nnoremap <silent><buffer> H :Denite defx/history<CR>
nnoremap <silent><buffer><expr> K defx#do_action('new_directory')
nnoremap <silent><buffer><expr> M defx#do_action('new_multiple_files')
nnoremap <silent><buffer><expr> N defx#do_action('new_file')
nnoremap <silent><buffer><expr> P defx#do_action('open', 'pedit')
nnoremap <silent><buffer><expr> T defx#do_action('toggle_sort', 'Time')
" nnoremap <silent><buffer><expr> t defx#do_action('toggle_sort', 'time')
nnoremap <silent><buffer><expr> N defx#do_action('toggle_sort', 'filename')
nnoremap <silent><buffer><expr> O defx#do_action('execute_system')
" nnoremap <silent><buffer><expr> N defx#do_action('toggle_sort', 'Filename')
nnoremap <silent><buffer><expr> E defx#do_action('toggle_sort', 'extension')
nnoremap <silent><buffer><expr> S defx#do_action('toggle_sort', 'Size')
nnoremap <silent><buffer><expr> W defx#do_action('copy') . defx#do_action('paste')

" nnoremap <silent><buffer>X :tabnew<CR>:Defx -auto-cd<CR>

nnoremap <silent><buffer>b :<C-u>Denite defx/dirmark<cr>
nnoremap <silent><buffer>B :<C-u>Denite dirmark/add<cr>
" nnoremap <silent><buffer>B :UniteBookmarkAdd<CR>
" nnoremap <silent><buffer>B :Denite dirmark<CR>
" nnoremap <silent><buffer>b :Unite -silent -auto-resize -buffer-name=Bookmarks -default-action=vimfiler bookmark<CR>
nnoremap <silent><buffer><expr> cd defx#do_action('change_vim_cwd')

nnoremap <silent><buffer><expr> d defx#do_action('remove')
nnoremap <silent><buffer><expr> l defx#do_action('open')
nnoremap <silent><buffer><expr> w defx#do_action('rename')
nnoremap <silent><buffer><expr> j line('.') == line('$') ? 'gg' : 'j'
nnoremap <silent><buffer><expr> k line('.') == 1 ? 'G' : 'k'
nnoremap <silent><buffer><expr> m defx#do_action('toggle_select') . 'j'
nnoremap <silent><buffer><expr> o defx#do_action('open_or_close_tree')
nnoremap <silent><buffer><expr> q defx#do_action('quit')
nnoremap <silent><buffer><expr> h defx#do_action('cd', ['..'])

nnoremap <silent><buffer><expr> tc defx#do_action('toggle_columns', 'mark:filename:type:size:time')



nnoremap <silent><buffer><expr> c defx#do_action('copy')
nnoremap <silent><buffer><expr> r defx#do_action('move')
nnoremap <silent><buffer><expr> p defx#do_action('paste')

nnoremap <silent><buffer><expr> ; defx#do_action('repeat')
nnoremap <silent><buffer><expr> ! defx#do_action('execute_command')


"-------------------------------------------------------------------------------------------------- 
nnoremap <silent><buffer>0 gg 
nnoremap <silent><buffer><expr> yy defx#do_action('yank_path')

" nnoremap <silent><buffer><expr> <CR> defx#do_action('open', 'wincmd w \| drop')
nnoremap <silent><buffer><expr> <C-CR> defx#do_action('drop')
nnoremap <silent><buffer><expr> <CR> defx#do_action('open')
nnoremap <silent><buffer><expr> <C-l> defx#do_action('redraw')
nnoremap <silent><buffer><expr> <C-g> defx#do_action('print')
nnoremap <silent><buffer><expr> <Space> defx#do_action('toggle_select') . 'j'
nnoremap <silent><buffer><expr> * defx#do_action('toggle_select_all')
nnoremap <silent><buffer><expr> .  defx#do_action('toggle_ignored_files')

"-------------------------------------------------------------------------------------------------- 
nmap <silent><buffer>,O :call jobstart(['xterm','-e','/usr/bin/vim',expand('%:t')],{'detach':1}) <CR>
nmap <silent><buffer>,x :call jobstart(['xterm'],{'detach':1}) <CR>
nmap <silent><buffer>,y :call jobstart(['xterm','-e','mc','.','.'],{'detach':1}) <CR>

" nmap <silent><buffer>gx :vs<CR> :VimFilerCreate -status -sort-type=Time<CR>
" nmap <silent><buffer>gX :sp<CR> :VimFilerCreate -status -sort-type=Time<CR>

"-------------------------------------------------------------------------------------------------- 
nnoremap <silent><buffer><expr> ~ defx#do_action('cd')
nnoremap <silent><buffer><expr> ` defx#do_action('cd')

"-------------------------------------------------------------------------------------------------- 
if hostname() == "asus"
    nnoremap <silent><buffer><expr> 1 defx#do_action('cd /home/fbraenns/00_ALLG/')
    nnoremap <silent><buffer><expr> 2 defx#do_action('cd /home/fbraenns/01_FINANCE/')
    nnoremap <silent><buffer><expr> 3 defx#do_action('cd /home/fbraenns/02_CFD/')
    nnoremap <silent><buffer><expr> 4 defx#do_action('cd /home/fbraenns/03_GA/')
    nnoremap <silent><buffer><expr> 5 defx#do_action('cd /home/fbraenns/04_AI/')
    nnoremap <silent><buffer><expr> 9 defx#do_action('cd /home/fbraenns/99_SHARE/')
    " nmap <silent><buffer>,X :call jobstart('xterm -e /usr/bin/nvim -c ":VimFilerBufferDir -status -sort-type=Time"' ,{'detach':1}) <CR>
else
    nmap <silent><buffer><expr> 1  defx#do_action('cd', ['/WORK1/fbraenns/'])
    nmap <silent><buffer><expr> 2  defx#do_action('cd', ['/WORK2/fbraenns/'])
    nmap <silent><buffer><expr> 3  defx#do_action('cd', ['/WORK3/fbraenns/'])
    nmap <silent><buffer><expr> 4  defx#do_action('cd', ['/data/work/fbraenns/'])
    nmap <silent><buffer><expr> 5  defx#do_action('cd', ['/share/Tools/'])
    nmap <silent><buffer><expr> 6  defx#do_action('cd', ['/share/software/'])
    nmap <silent><buffer><expr> 7  defx#do_action('cd', ['/share/Tools/Python/FireSimulation/'])
    nmap <silent><buffer><expr> 8  defx#do_action('cd', ['/share/software/Fire/FDS/6.6.0/Documentation'])
    nmap <silent><buffer><expr> 9  defx#do_action('cd', ['/home/fbraenns/.modulefiles/divs/'])
    nmap <silent><buffer>,X :call jobstart('xterm -e /share/Tools/Editing/NeoVim/nvim.appimage -c ":Defx -auto-cd"' ,{'detach':1}) <CR>
    " nmap <silent><buffer>,Y :call jobstart('xterm -e /share/Tools/Editing/vim_190111/bin/vim' ,{'detach':1}) <CR>
    nmap <silent><buffer>,Y :call jobstart(['xterm','-e','/share/Tools/Editing/vim_190111/bin/vim',expand('%:t')],{'detach':1}) <CR>
    
"-------------------------------------------------------------------------------------------------- 
nmap <silent><buffer>,P :call jobstart(['xterm','-hold','-e','python','/share/Tools/Python/FireSimulation/plotHRR_csv63.py',expand('%:t')],{'detach':1}) <CR>
nmap <silent><buffer>,p :call jobstart(['xterm','-hold','-e','python',expand('%:p:h')],{'detach':1}) <CR>
" nmap <silent><buffer>,o :call jobstart(['display',expand('%:p:h')],{'detach':1})
" nur auf directory nmap <silent><buffer>,o :call jobstart(['display'] ,{'detach':1}) <CR>
endif

"-------------------------------------------------------------------------------------------------- 
map <silent><buffer>X :Defx -sort=Time -split=tab -new -auto-cd `expand('%:p:h')` -search=`expand('%:p')` <CR>
map <silent><buffer>gx :Defx -sort=Time -split=vertical -new -auto-cd `expand('%:p:h')` -search=`expand('%:p')` <CR>
map <silent><buffer>,v :Defx -sort=Time -split=vertical -new -auto-cd `expand('%:p:h')` -search=`expand('%:p')` <CR>
map <silent><buffer>gX :Defx -sort=Time -split=horizontal -new -auto-cd `expand('%:p:h')` -search=`expand('%:p')` <CR>
map <silent><buffer>,h :Defx -sort=Time -split=horizontal -new -auto-cd `expand('%:p:h')` -search=`expand('%:p')` <CR>
map <silent><buffer>gf :Defx -sort=Time -split=floating -new -auto-cd `expand('%:p:h')` -search=`expand('%:p')` <CR>

" map <silent><buffer>X :Defx -sort="Time" -split=tab -new -auto-cd <CR>
" map <silent><buffer>gx :Defx -sort="Time" -split=vertical -new -auto-cd <CR>
" map <silent><buffer>gX :Defx -sort="Time" -split=horizontal -new -auto-cd <CR>
" map <silent><buffer>gf :Defx -sort="Time" -split=floating -new -auto-cd <CR>


"
"         function! Test(context) abort
"           echomsg string(a:context.targets)
"             :! display string(a:context.targets)
"             "jobstart(['xterm','-hold','-e','display',expand('%:p:h')],{'detach':1}) <CR>
" " nmap <silent><buffer>,o :call jobstart(['xterm','-hold','-e','display',expand('%:p:h')],{'detach':1}) <CR>
"         endfunction
"         nnoremap <silent><buffer><expr> f
"         \ defx#do_action('call', 'Test')
"
"         " or you can use SID hack
"         function! s:Test(context) abort
"           echomsg string(a:context.targets)
"         endfunction
"         function! s:SID_PREFIX() abort
"           return matchstr(expand('<sfile>'),
"           \ '<SNR>\d\+_\zeSID_PREFIX$')
"         endfunction
"         let g:sid = s:SID_PREFIX()
"         nnoremap <silent><buffer><expr> f
"         \ defx#do_action('call', g:sid.'Test')
"
"nnoremap <silent><buffer><expr>gl  defx#do_action('call', 'DefxTmuxExplorer')
"nnoremap <silent><buffer><expr>gr  defx#do_action('call', 'DefxDeniteGrep')
"nnoremap <silent><buffer><expr>gf  defx#do_action('call', 'DefxDeniteFile')
"nnoremap <silent><buffer><expr>gw   defx#do_action('call', 'DefxToggleWidth')
