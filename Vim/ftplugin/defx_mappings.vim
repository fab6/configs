	" autocmd FileType defx call s:defx_my_settings()
	" function! s:defx_my_settings() abort
	"   " Define mappings
	"   nnoremap <silent><buffer><expr> <CR>
	"   \ defx#do_action('open')
	"   nnoremap <silent><buffer><expr> K
	"   \ defx#do_action('new_directory')
	"   nnoremap <silent><buffer><expr> N
	"   \ defx#do_action('new_file')
	"   nnoremap <silent><buffer><expr> h
	"   \ defx#do_action('cd', ['..'])
	"   nnoremap <silent><buffer><expr> ~
	"   \ defx#do_action('cd')
	"   nnoremap <silent><buffer><expr> <Space>
	"   \ defx#do_action('toggle_select') . 'j'
	"   nnoremap <silent><buffer><expr> j
	"   \ line('.') == line('$') ? 'gg' : 'j'
	"   nnoremap <silent><buffer><expr> k
	"   \ line('.') == 1 ? 'G' : 'k'
	" endfunction

nnoremap <silent><buffer><expr> <CR> defx#do_action('open')
nnoremap <silent><buffer><expr> l defx#do_action('open')
nnoremap <silent><buffer><expr> K defx#do_action('new_directory')
nnoremap <silent><buffer><expr> N defx#do_action('new_file')
nnoremap <silent><buffer><expr> h defx#do_action('cd', ['..'])
nnoremap <silent><buffer><expr> <Space> defx#do_action('toggle_select') . 'j'
nnoremap <silent><buffer><expr> j line('.') == line('$') ? 'gg' : 'j'
nnoremap <silent><buffer><expr> k line('.') == 1 ? 'G' : 'k'


nnoremap <silent><buffer><expr> ~ defx#do_action('cd')
nnoremap <silent><buffer><expr> ` defx#do_action('cd')

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
    nmap <silent><buffer><expr> 9  defx#do_action('cd', ['/home/fbraenns/.modulefiles/'])
    nmap <silent><buffer>,X :call jobstart('xterm -e /share/Tools/Editing/NeoVim/nvim.appimage -c ":Defx"' ,{'detach':1}) <CR>
    " nmap <silent><buffer>,s2 :call jobstart('/share/software/cd-adapco/STAR-CCM+12.02/STAR-CCM+12.02.010-R8/star/bin/starccm+',{'detach':1}) <CR>
    " nmap <silent><buffer>,s1 :call jobstart('/share/software/cd-adapco/STAR-CCM+11.06/STAR-CCM+11.06.010-R8/star/bin/starccm+',{'detach':1}) <CR>
    "nmap <silent><buffer>,p :call jobstart('python +',{'detach':1}) <CR>
    "nmap <silent><buffer>,p :call jobstart(['python','/share/Tools/Python/FireSimulation/plotHRR_csv63.py',expand('%:t')],{'detach':1}) <CR>
endif

nmap <silent><buffer>,x :call jobstart(['xterm'],{'detach':1}) <CR>
nmap <silent><buffer>X :Defx<CR>

" Geht nicht, da expand nur den Buffernamen von vimfiler uebertraegt, aber nicht die eigentliche Datei
" nmap <silent><buffer>,O :call jobstart(['xterm','-e','/usr/bin/vim',expand('%:t')],{'detach':1}) <CR>
nmap <silent><buffer>,y :call jobstart(['xterm','-e','mc','.','.'],{'detach':1}) <CR>
