:set guioptions=M
"==================================================================================================
":let g:vimsyn_embed='0'
"let g:python_host_skip_check=1
"let g:loaded_python2_provider=1
"let g:loaded_python3_provider=1
"
"==================================================================================================
set rtp+=~/.fzf
set runtimepath+=/home/fbraenns/.nvim/
"--------------------------------------------------------------------------------------------------
" Specify a directory for plugins
call plug#begin('/home/fbraenns/.nvim/vimplug')
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

Plug 'Shougo/deol.nvim'
" Plug 'cyberkov/openhab-vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'zchee/deoplete-jedi'
"Plug 'Shougo/deoplete-clang2.git'
Plug 'zxqfl/tabnine-vim'
Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
"-------------------------------------------------------------------------------------------------- 
"Plug 'ncm2/ncm2'
" assuming you're using vim-plug: https://github.com/junegunn/vim-plug
" Plug 'ncm2/ncm2'
"Plug 'roxma/nvim-yarp'

" enable ncm2 for all buffers
" autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

Plug 'lervag/vimtex'

" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
" Plug 'ncm2/ncm2-bufword'
" Plug 'ncm2/ncm2-path'

Plug 'xywei/vim-dealii-prm'

" Plug 'neoclide/coc.nvim' , {'tag': '*', 'do': { -> coc#util#install()}}

Plug 'Shougo/vimfiler.vim' "needs unite -> new development for denite Plug 'Shougo/defx.nvim'
Plug 'Shougo/neomru.vim'
" Wird fuer grep und find benoetigt
Plug 'Shougo/vimproc.vim', { 'do' : 'make', }  
" Unite is needed due to vimfiler
Plug 'Shougo/unite.vim'
Plug 'mbbill/undotree'
Plug 'simnalamburt/vim-mundo'

"DEFX / DENITE
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-git'

Plug 'Shougo/denite.nvim'
Plug 'kmnk/denite-dirmark' "Bookmarks for defx
"
" Plug '/home/fbraenns/.fzf/bin/fzf'
Plug 'junegunn/fzf.vim'
" Plug 'tiagoinacio/fzf-bookmark.vim'
" Plug 'yuki-ycino/fzf-preview.vim'
Plug 'JuliaEditorSupport/julia-vim'

" Plug 'chemzqm/denite-extra'
" Plug 'chemzqm/denite-git'
" Plug 'notomo/denite-keymap'
Plug 'rafi/vim-denite-session'
" Plug 'iyuuya/denite-ale'
" Plug 'yyotti/denite-marks'
" Plug 'rafi/vim-denite-z'
" Plug 'notomo/denite-autocmd'

Plug 'inkarkat/vim-ingo-library'
Plug 'inkarkat/vim-mark'

Plug 'junegunn/vim-easy-align'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

Plug 'chrisbra/csv.vim'
Plug 'Yggdroot/indentLine'

Plug 'scrooloose/nerdcommenter'

Plug 'itchyny/vim-parenmatch'
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/vim-cursorword'
Plug 'itchyny/lightline.vim'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

Plug 'morhetz/gruvbox'
Plug 'chriskempson/base16-vim'
Plug 'rainglow/vim'
Plug 'rafi/awesome-vim-colorschemes'
" Plug 'joshdick/onedark.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
" Plug 'w0rp/ale'
" Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

Plug 'terryma/vim-multiple-cursors'
" .....................................................................
" Programming:
Plug 'plasticboy/vim-markdown'
Plug 'jvirtanen/vim-octave', { 'for': 'octave' }
Plug 'lervag/vim-foam'
" Plug 'chemzqm/vim-easygit'
" Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
" Plug 'rudes/vim-java', { 'for': 'java' }
Plug 'vyzyv/vimpyter'
"Plug '4Evergreen4/vim-hardy' "Arduino
"--------------------------------------------------------------------------------------------------

call plug#end()

"==================================================================================================
" General Settings
"
"
"
set encoding=utf-8
set number
"set ut=100
set novisualbell
""" Shut down the visual bell of terminal
set t_vb=

"":set mouse=a " mouse support in all modes
:set mousehide " hide the mouse when typing text
"" this makes the mouse paste a block of text without formatting it
:map <MouseMiddle> <esc>"*p

"--------------------------------------------------------------------------------------------------
" Terminal Settings
"
"" `XTerm', `RXVT', `Gnome Terminal', and `Konsole' all claim to be "xterm";
"" `KVT' claims to be "xterm-color":
if &term =~ 'xterm'
endif

let g:loaded_matchparen = 1

"--------------------------------------------------------------------------------------------------
" User Interface

if $TERM == "xterm-256color"
  set t_Co=256
endif
"" have syntax highlighting in terminals which can display colours:
if has('syntax') && (&t_Co > 2)
    syntax on
endif
"
"" have fifty lines of command-line (etc) history:
set history=50
"" remember all of these between sessions, but only 10 search terms; also
"" remember info for 10 files, but never any on removable disks, don't remember
"" marks in files, don't rehighlight old search patterns, and only save up to
"" 100 lines of registers; including @10 in there should restrict input buffer
"" but it causes an error for me:
set viminfo=/10,'10,r/mnt/zip,r/mnt/floppy,f0,h,\"100

"" have command-line completion <Tab> (for filenames, help topics, option names)
"" first list the available options and complete the longest common part, then
"" have further <Tab>s cycle through the possibilities:
set wildmode=list:longest,full
"
"" use "[RO]" for "[readonly]" to save space in the message line:
set shortmess+=r
"
"" display the current mode and partially-typed commands in the status line:
set showmode
set showcmd
"
"
"" when ":edit"-command ignore those files:
set suffixes=.aux,.bak,.dvi,.gz,.idx,.log,.ps,.swp,.tar,.pdf,.rpm,.deb,.o,.e,*~

"" don't have files trying to override this .vimrc:
set nomodeline

"--------------------------------------------------------------------------------------------------
" Text Formatting -- General

"" don't make it look like there are line breaks where there aren't:
set nowrap
"
"" use indents of 2 spaces, and have them copied down lines:
set shiftwidth=4
set shiftround
set expandtab
set autoindent

"" normally don't automatically format `text' as it is typed, IE only do this
"" with comments, at 79 characters:
set formatoptions-=t
set textwidth=72

"--------------------------------------------------------------------------------------------------
" File detection
augroup filetype
    autocmd!

    " autocmd WinEnter *.py call mark#ToggleOff()
    " autocmd WinEnter *.py call mark#ToggleOff()
    " autocmd BufWinEnter *.py call mark#ToggleOff()
    " autocmd BufWinLeave *.py call mark#ToggleOn()
    " autocmd WinLeave *.py call mark#ToggleOn()
    "
    " autocmd BufWinLeave *.* mkview
    " autocmd BufWinEnter *.* silent loadview
    autocmd BufNewFile,BufRead *.in set filetype=dakota
    autocmd BufNewFile,BufRead *Dict set filetype=c
    autocmd BufNewFile,BufRead *.mo set filetype=modelica
    autocmd BufNewFile,BufRead .spacemacs set filetype=lisp
    autocmd BufNewFile,BufRead *.py set filetype=python tabstop=4  softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix
    autocmd BufNewFile,BufRead *.org set syntax=org
    autocmd BufRead,BufNewFile *.m       setf octave
    autocmd BufRead,BufNewFile *.m       set filetype=octave
    autocmd BufRead,BufNewFile *.ino set filetype=arduino
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType html set formatoptions+=tl
    autocmd FileType make set noexpandtab shiftwidth=8
    autocmd Filetype vimfiler setlocal cursorline
    autocmd FileType vimfiler nunmap <buffer> x
    autocmd BufNewFile,BufRead *.snip set syntax=python
    autocmd BufNewFile,BufRead *.fds set filetype=fds
    autocmd BufNewFile,BufRead *.fds5 set syntax=fds
    autocmd BufNewFile,BufRead *.fds set syntax=fds
    autocmd BufNewFile,BufRead *.smv set syntax=fds
    autocmd InsertLeave * NeoSnippetClearMarkers
    autocmd WinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
augroup END

  "   autocmd BufEnter * call ncm2#enable_for_buffer()
  "   autocmd Filetype tex call ncm2#register_source({
  "           \ 'name': 'vimtex',
  "           \ 'priority': 8,
  "           \ 'scope': ['tex'],
  "           \ 'mark': 'tex',
  "           \ 'word_pattern': '\w+',
  "           \ 'complete_pattern': g:vimtex#re#ncm2,
  "           \ 'on_complete': ['ncm2#on_complete#omni', 'vimtex#complete#omnifunc'],
  "           \ })
  " augroup END

"================================================================================================== 
" Filename: foamFT.vim

" No debug stuff
" Should check if the file type is already set
" But it's OK; just set it again

function! SetFoamType()
    " loop through the first 10 lines
    " FoamFile is at line 8 usually
    for nL in range(1,10)
    " match 'FoamFile'
        if (getline(nL) =~ 'FoamFile')
            setfiletype foam
            " if file type is set, leave the loop
            break
        endif
    endfor
endfunction

" That's it!
" Now, when to call it?

augroup FOAMFTautocmds
autocmd!
autocmd BufRead * call SetFoamType()
augroup End
" Filename: customFoam.vim

function! FOAMSetPathToCaseDir()
    " IF you care only for files in
    " system, 0, and constant, use
    " let caseDir = expand('%:p:h:h')
    " But, I'm a regexp lover, so,
    " Make Vim remembers everything in the path until case name.
    " delete everything else!
    let caseDir = expand('%:p:s?\(\/.*run\/[a-zA-Z1-9\. ]*\)\/.*?\1?')
    " set path to include all subdirs of caseDir.
    " you can also use '=+' instead of '=' to add the caseDir to
    " the default path; but I like it this way.
    exe 'set path='.caseDir.'/**'
    " I want to run blockMesh, solvers and other tools
    " Directly in VIM, so change dir to casedir
    exe 'cd '.caseDir
endfunction

" This is just incredible

augroup FOAMautocmds
autocmd!
autocmd FileType foam* call FOAMSetPathToCaseDir()
augroup End
"
"
set backspace=eol,start,indent
"--------------------------------------------------------------------------------------------------
" Search & Replace
"
" assume the /g flag on :s substitutions to replace all matches in a line:
set gdefault
"
"" make searches case-insensitive, unless they contain upper-case letters:
set ignorecase
set smartcase
"
"" show the `best match so far' as search strings are typed:
set incsearch
set hlsearch

"--------------------------------------------------------------------------------------------------
" BACKUP
"
set backup
set backupdir=$HOME/.vim.backupdir/
set backupext=~
set wildmenu "menu has tab completion
set wildignore=.aux,.bak,.dvi,.gz,.idx,.log,.ps,.swp,.tar,.pdf,.rpm,.deb,.o,.e,*~

"-------------------------------------------------------------------------------------------------- 
" " Copy to clipboard and Paste from clipboard
"" Paste Mode On/Off
" map <F11> :call Paste_on_off()<CR>
" set pastetoggle=<F11>
"
let paste_mode = 0 " 0 = normal, 1 = paste
"
"..................................................................................................
" func! Paste_on_off()
"     if g:paste_mode == 0
"         set paste
"         let g:paste_mode = 1
"     else
"         set nopaste
"
"         let g:paste_mode = 0
"     endif
"     return
" endfunc

"..................................................................................................
" vmap <F6> :!xclip -f -sel clip<CR>
" imap <F7> :-1r !xclip -o -sel clip

"
"--------------------------------------------------------------------------------------------------
" keybindings
"
nnoremap <leader>e :e ./<CR>

let mapleader="\<SPACE>"
"let mapleader=","

"" have the h and l cursor keys wrap between lines (like <Space> and <BkSpc> do
"" by default), and ~ covert case over line breaks; also have the cursor keys
"" wrap in insert mode:
set whichwrap=h,l,~,[,]
"
"
"" have % bounce between angled brackets, as well as t'other kinds:
set matchpairs+=<:>
"" have Y behave analogously to D and C rather than to dd and cc (which is
"" already done by yy):
noremap Y y$
map ] f>
map [ F<
" cnoremap <C-a> <Home>
"cnoremap <C-e> <End>
"cnoremap <C-p> <Up>
"cnoremap <C-n> <Down>
"cnoremap <C-j> <Left>
"cnoremap <C-l> <Right>
""
:nnoremap <leader>fec :e ~/.config/nvim/init.vim<CR>
:nnoremap <leader>fef :e ~/.nvim/ftplugin/defx_mappings.vim<CR>
:nnoremap <leader>fem :e ~/.modulefiles/divs/0.2<CR>
:nnoremap <leader>fer :source ~/.config/nvim/init.vim<CR>
:nnoremap <leader>fes :e ~/.nvim/snippets/python.snip<CR>
:nnoremap <leader>fez :e ~/.fzf-marks<CR>

"-------------------------------------------------------------------------------------------------- 
" PASTINg
" func! Paste_on_off()
"     if g:paste_mode == 0
"         set paste
"         let g:paste_mode = 1
"     else
"         set nopaste
"
"         let g:paste_mode = 0
"     endif
"     return
" endfunc

" vmap <F6> :!xclip -f -sel clip<CR>
" imap <F7> :-1r !xclip -o -sel clip

:map <C-x>0 <C-w>c
:map <C-x>1 <C-w>o

:nmap ,x :call jobstart('xterm',{'detach':1}) <CR>
:nmap ,Y :call jobstart(['xterm','-e','/share/Tools/Editing/vim_190111/bin/vim',expand('%:t')],{'detach':1}) <CR>

set clipboard+=unnamedplus
vnoremap  <leader>y  "+y
nnoremap <leader>p ""p
"
"-------------------------------------------------------------------------------------------------- 
" Window / Buffer Navigation
:tnoremap <C-p> <up>
:tnoremap <C-n> <down>
:tnoremap <C-h> <left>
:tnoremap <C-l> <right>
:tnoremap <C-r> <C-right>
:tnoremap <C-b> <C-left>
:tnoremap <C-0> <Home>
:tnoremap <C-a> <Home>
:tnoremap <C-e> <End>
"To use `ALT+{h,j,k,l}` to navigate windows from any mode:
:tnoremap <A-h> <C-\><C-N><C-w>h
:tnoremap <A-j> <C-\><C-N><C-w>j
:tnoremap <A-k> <C-\><C-N><C-w>k
:tnoremap <A-l> <C-\><C-N><C-w>l
:inoremap <A-h> <C-\><C-N><C-w>h
:inoremap <A-j> <C-\><C-N><C-w>j
:inoremap <A-k> <C-\><C-N><C-w>k
:inoremap <A-l> <C-\><C-N><C-w>l
:nnoremap <A-l> <C-w>l
:nnoremap <A-h> <C-w>h
:nnoremap <A-j> <C-w>j
:nnoremap <A-k> <C-w>k

"==================================================================================================
" COMPLETION deoplete.
"
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
imap <C-k>     <Plug>(neosnippet_expand_or_jump)


imap <expr><TAB> pumvisible() ? "\<C-n>" : (neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>")
imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"

let g:neosnippet#snippets_directory='~/.nvim/snippets'

"==================================================================================================
" Denite
"-------------------------------------------------------------------------------------------------- 
"" Define mappings
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction


	" Change file/rec command.
	call denite#custom#var('file/rec', 'command',
	\ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
	" For ripgrep
	" Note: It is slower than ag
	call denite#custom#var('file/rec', 'command',
	\ ['rg', '--files', '--glob', '!.git'])
	" For Pt(the platinum searcher)
	" NOTE: It also supports windows.
	call denite#custom#var('file/rec', 'command',
	\ ['pt', '--follow', '--nocolor', '--nogroup',
	\  (has('win32') ? '-g:' : '-g='), ''])
	" For python script scantree.py
	" Read bellow on this file to learn more about scantree.py
	call denite#custom#var('file/rec', 'command', ['scantree.py'])

	" Change matchers.
	call denite#custom#source(
	\ 'file_mru', 'matchers', ['matcher/fuzzy', 'matcher/project_files'])
	call denite#custom#source(
	\ 'file/rec', 'matchers', ['matcher/cpsm'])

	" Change sorters.
	call denite#custom#source(
	\ 'file/rec', 'sorters', ['sorter/sublime'])

	" Add custom menus
	" let s:menus = {}
        "
	" let s:menus.zsh = {
	"         \ 'description': 'Edit your import zsh configuration'
	"         \ }
	" let s:menus.zsh.file_candidates = [
	"         \ ['zshrc', '~/.config/zsh/.zshrc'],
	"         \ ['zshenv', '~/.zshenv'],
	"         \ ]
        "
	" let s:menus.my_commands = {
	"         \ 'description': 'Example commands'
	"         \ }
	" let s:menus.my_commands.command_candidates = [
	"         \ ['Split the window', 'vnew'],
	"         \ ['Open zsh menu', 'Denite menu:zsh'],
	"         \ ['Format code', 'FormatCode', 'go,python'],
	"         \ ]

	" call denite#custom#var('menu', 'menus', s:menus)

	" Ag command on grep source
	call denite#custom#var('grep', 'command', ['ag'])
	call denite#custom#var('grep', 'default_opts',
			\ ['-i', '--vimgrep'])
	call denite#custom#var('grep', 'recursive_opts', [])
	call denite#custom#var('grep', 'pattern_opt', [])
	call denite#custom#var('grep', 'separator', ['--'])
	call denite#custom#var('grep', 'final_opts', [])

	" Ack command on grep source
	" call denite#custom#var('grep', 'command', ['ack'])
	" call denite#custom#var('grep', 'default_opts',
	"                 \ ['--ackrc', $HOME.'/.ackrc', '-H', '-i',
	"                 \  '--nopager', '--nocolor', '--nogroup', '--column'])
	" call denite#custom#var('grep', 'recursive_opts', [])
	" call denite#custom#var('grep', 'pattern_opt', ['--match'])
	" call denite#custom#var('grep', 'separator', ['--'])
	" call denite#custom#var('grep', 'final_opts', [])
        "
	" " Ripgrep command on grep source
	" call denite#custom#var('grep', 'command', ['rg'])
	" call denite#custom#var('grep', 'default_opts',
	"                 \ ['-i', '--vimgrep', '--no-heading'])
	" call denite#custom#var('grep', 'recursive_opts', [])
	" call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
	" call denite#custom#var('grep', 'separator', ['--'])
	" call denite#custom#var('grep', 'final_opts', [])
        "
	" " Pt command on grep source
	" call denite#custom#var('grep', 'command', ['pt'])
	" call denite#custom#var('grep', 'default_opts',
	"                 \ ['-i', '--nogroup', '--nocolor', '--smart-case'])
	" call denite#custom#var('grep', 'recursive_opts', [])
	" call denite#custom#var('grep', 'pattern_opt', [])
	" call denite#custom#var('grep', 'separator', ['--'])
	" call denite#custom#var('grep', 'final_opts', [])
        "
	" " jvgrep command on grep source
	" call denite#custom#var('grep', 'command', ['jvgrep'])
	" call denite#custom#var('grep', 'default_opts', ['-i'])
	" call denite#custom#var('grep', 'recursive_opts', ['-R'])
	" call denite#custom#var('grep', 'pattern_opt', [])
	" call denite#custom#var('grep', 'separator', [])
	" call denite#custom#var('grep', 'final_opts', [])

	" Specify multiple paths in grep source
	"call denite#start([{'name': 'grep',
	"      \ 'args': [['a.vim', 'b.vim'], '', 'pattern']}])

	" Define alias
	call denite#custom#alias('source', 'file/rec/git', 'file/rec')
	call denite#custom#var('file/rec/git', 'command',
	      \ ['git', 'ls-files', '-co', '--exclude-standard'])

	call denite#custom#alias('source', 'file/rec/py', 'file/rec')
	call denite#custom#var('file/rec/py', 'command',['scantree.py'])

	" Change ignore_globs
	call denite#custom#filter('matcher/ignore_globs', 'ignore_globs',
	      \ [ '.git/', '.ropeproject/', '__pycache__/',
	      \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])

	" Custom action
	" Note: lambda function is not supported in Vim8.
	call denite#custom#action('file', 'test',
	      \ {context -> execute('let g:foo = 1')})
	call denite#custom#action('file', 'test2',
	      \ {context -> denite#do_action(
	      \  context, 'open', context['targets'])})


"-------------------------------------------------------------------------------------------------- 
"nnoremap <silent><leader>ff :<C-u>DeniteBufferDir -start-filter -statusline -no-split -buffer-name=files   file/rec<cr>
nnoremap <silent><leader>ff :<C-u>DeniteBufferDir -statusline -no-split -buffer-name=files   file/rec<cr>
" nnoremap <silent> <leader>/ :<C-u>DeniteBufferDir -mode=insert -no-split -buffer-name=files   file/rec<cr>
"nnoremap <silent><leader>fd :<C-u>DeniteBufferDir -start-filter -statusline -no-split -buffer-name=dir directory_rec<cr>
nnoremap <silent><leader>fd :<C-u>DeniteBufferDir -statusline -no-split -buffer-name=dir directory_rec<cr>
" nnoremap <silent> <leader>\ :<C-u>DeniteBufferDir -mode=insert -no-split -buffer-name=dir directory_rec<cr>
" nnoremap <silent> <leader>\ :<C-u>Denite grep:. -mode=normal<CR>
" nnoremap <silent> <leader>fg :<C-u>Denite grep:. -mode=normal<CR>
nnoremap <silent><leader>* :<C-u>DeniteCursorWord grep:. <CR>
nnoremap <silent><leader>fj :<C-u>DeniteCursorWord grep:. <CR>
"nnoremap <silent><leader>8 :<C-u>DeniteCursorWord line -start-filter -statusline -no-split -buffer-name=line<cr>
nnoremap <silent><leader>8 :<C-u>DeniteCursorWord line -statusline -no-split -buffer-name=line<cr>
"nnoremap <silent><leader>fg :<C-u>Denite grep:. -start-filter -statusline <CR>
nnoremap <silent><leader>fg :<C-u>Denite grep:. -statusline <CR>
nnoremap <silent><leader>fh :<C-u>Denite grep:::`expand('<cword>')`<CR>
" nnoremap <silent> <leader>fG :<C-u>Denite grep:. -mode=normal -G
" nnoremap <silent> <leader>g :<C-u>Denite grep:. -mode=normal<CR>
" nnoremap <leader><Space>/ :<C-u>DeniteBufferDir grep:. -mode=normal<CR>

"-------------------------------------------------------------------------------------------------- 
" nnoremap <silent> <leader>b :<C-u>Denite -mode=normal defx/dirmark<cr>
" nnoremap <silent> <leader>B :<C-u>Denite -mode=normal dirmark/add<cr>
" nnoremap <silent> <leader>B :<C-u>Denite -mode=normal defx/dirmark<cr>
"
"nnoremap <silent> <leader>b :<C-u>Denite -no-split -start-filter -statusline -buffer-name=buffers buffer<cr>
nnoremap <silent> <leader>b :<C-u>Denite -no-split -statusline -buffer-name=buffers buffer<cr>
"nnoremap <silent> <leader>l :<C-u>Denite line -start-filter -statusline -no-split -buffer-name=line<cr>
nnoremap <silent> <leader>l :<C-u>Denite line -statusline -no-split -buffer-name=line<cr>
" nnoremap <silent> <leader>m :<C-u>Denite marks <CR>
"nnoremap <silent> <leader>r :<C-u>Denite -no-split -start-filter -statusline -buffer-name=mru     file_mru<cr>
nnoremap <silent> <leader>r :<C-u>Denite -no-split -statusline -buffer-name=mru     file_mru<cr>

"-------------------------------------------------------------------------------------------------- 
nnoremap <silent> <leader>a :<C-u>Denite ale <CR>
"nnoremap <silent> <leader>o :<C-u>Denite -start-filter -statusline -winwidth=35 outline<cr>
nnoremap <silent> <leader>o :<C-u>Denite -statusline -winwidth=35 outline<cr>
" nnoremap <silent> <leader>v :<C-u>Denite location_list -mode=normal -no-empty -auto-preview<CR>
nnoremap <silent> <leader>M :<C-u>Denite menu <CR>

"-------------------------------------------------------------------------------------------------- 
nnoremap <silent> <leader>Ds :<C-u>Denite -winwidth=35 session<cr>
nnoremap <silent> <leader>Dj :call execute('Denite -resume -select=+'.v:count1.' -immediately')<CR>
nnoremap <silent> <leader>Dk :call execute('Denite -resume -select=-'.v:count1.' -immediately')<CR>
nnoremap <silent> <leader>Dr :<C-u>Denite -resume <CR>
nnoremap <silent> <leader>C :<C-u>Denite colorscheme -auto-preview<CR>

call denite#custom#var('session', 'path', '~/.vim-sessions')

" nnoremap <silent> <leader>hs :<C-u>Denite history:search -mode=normal<CR>
" nnoremap <silent> <leader>hc :<C-u>Denite history:cmd -mode=normal<CR>

" nnoremap <C-p> :<C-u>Denite file_rec<CR>
" nnorema<silent>p <leader><Space>b :<C-u>DeniteBufferDir buffer<CR>
" nnoremap <silent><leader>m :<C-u>Denite buffer<CR>
" nnoremap <silent> <leader>da :<C-u>Denite autocmd -mode=normal -auto-preview<CR>
" nnoremap <silent> <leader>dk :<C-u>Denite keymap -mode=normal<CR>
" nnoremap <silent> <leader>Df :<C-u>Denite file_manager -mode=normal <CR>
" nnoremap <silent> <leader>Dl :<C-u>Denite -mode=normal -auto-resize location_list<CR>
" nnoremap <silent> <leader>Dq :<C-u>Denite -mode=normal -auto-resize quickfix<CR>
" nnoremap <silent> <leader>Dy :<C-u>Denite -mode=normal -winwidth=35 register<cr>

" nnoremap <silent><leader>B  :<C-u>Denite -default-action=cd dirmark<CR>
" nnoremap <silent><leader><leader>B :<C-u>Denite dirmark/add::"' . expand('%:p:h') .  '"<CR>
"
"
" Denite machting files 
call denite#custom#source('_', 'matchers', ['matcher/substring'])
" call denite#custom#source( 'file/rec', 'matchers', ['matcher/cpsm'])
"
"
" :DeniteBufferDir [{options}] {sources}			*:DeniteBufferDir*
" :DeniteCursorWord [{options}] {sources}			*:DeniteCursorWord*
" :DeniteProjectDir [{options}] {sources}			*:DeniteProjectDir*

function! ToggleSorter(sorter) abort
    let sorters = split(b:denite_context.sorters, ',')
    let idx = index(sorters, a:sorter)
    if idx < 0
        call add(sorters, a:sorter)
    else
        call remove(sorters, idx)
    endif
    let b:denite_new_context = {}
    let b:denite_new_context.sorters = join(sorters, ',')
    return '<denite:nop>'
endfunction
call denite#custom#map('insert', '<C-f>',
    \ 'ToggleSorter("sorter/reverse")', 'noremap expr nowait')


" call denite#custom#var('outline', 'command', ['ctags'])
" Ag command on grep source
" call denite#custom#var('grep', 'command', ['ag'])
" call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep'])
" call denite#custom#var('grep', 'recursive_opts', [])
" call denite#custom#var('grep', 'pattern_opt', [])
" call denite#custom#var('grep', 'separator', ['--'])
" call denite#custom#var('grep', 'final_opts', [])
"xxx" call denite#custom#source('grep', 'converters', ['converter/abbr_word'])

" call denite#start([{'name': 'grep', 'args': ['.', ['--python'], pattern]}])
" map <F11> :call denite#custom#var('grep', 'default_opts', ['--python'])<CR>

" Change ignore_globs
" call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
"             \ [ '.git/', '.ropeproject/', '__pycache__/',
"             \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])
"
	" autocmd FileType denite-filter call s:denite_filter_my_settings()
	" function! s:denite_filter_my_settings() abort
	"   imap <silent><buffer> <C-c> <Plug>(denite_filter_quit)
	" endfunction
        "
	" autocmd FileType denite-filter call s:denite_filter_my_settings()
	" function! s:denite_filter_my_settings() abort
	"   inoremap <silent><buffer> <C-j>
	"   \ <Esc><C-w>p:call cursor(line('.')+1,0)<CR><C-w>pA
	"   inoremap <silent><buffer> <C-k>
	"   \ <Esc><C-w>p:call cursor(line('.')-1,0)<CR><C-w>pA
	" endfunction
" call denite#custom#map(
"             \ 'normal',
"             \ 'h',
"             \ '<denite:move_up_path>',
"             \ 'noremap'
"             \)
"
" call denite#custom#map(
"             \ 'normal',
"             \ 'f',
"             \ '<denite:scroll_page_forwards>',
"             \ 'noremap'
"             \)
"
" call denite#custom#map(
"             \ 'normal',
"             \ 'b',
"             \ '<denite:scroll_page_backwards>',
"             \ 'noremap'
"             \)
" " call denite#custom#map(
" "       \ 'normal',
" "       \ 'l',
" "       \ '<denite:enter_mode:normal>',
" "       \ 'noremap'
" "       \)
"
" call denite#custom#map(
"             \ 'insert',
"             \ '<C-j>',
"             \ '<denite:move_to_next_line>',
"             \ 'noremap'
"             \)
" call denite#custom#map(
"             \ 'insert',
"             \ '<C-n>',
"             \ '<denite:move_to_next_line>',
"             \ 'noremap'
"             \)
"
" call denite#custom#map(
"             \ 'insert',
"             \ '<C-k>',
"             \ '<denite:move_to_previous_line>',
"             \ 'noremap'
"             \)
" call denite#custom#map(
"             \ 'insert',
"             \ '<C-p>',
"             \ '<denite:move_to_previous_line>',
"             \ 'noremap'
"             \)

autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
  call deoplete#custom#buffer_option('auto_complete', v:false)
endfunction

call denite#custom#option('_', 'statusline', v:false)

"-------------------------------------------------------------------------------------------------- 
" Add custom menus
let s:menus = {}

let s:menus.Git= {
            \ 'description': 'Git commands'
            \ }
let s:menus.Git.command_candidates = [
            \ ['Log d', 'Denite gitlog'],
            \ ['Log All d', 'Denite gitlog:all -auto-preview -mode=normal'],
            \ ['Status d', 'Denite status'],
            \ ['Status g', 'Gstatus'],
            \ ['Add g', 'Gadd'],
            \ ['Commit g', 'Gcommit'],
            \ ['Pull g', 'Gpull'],
            \ ['Push g', 'Gpush'],
            \ ['Diff g', 'Gdiff'],
            \ ['DiffThis g', 'GdiffThis'],
            \ ['Change g', 'Denite gitchanged'],
            \ ['Branch g', 'Denite gitbranch'],
            \ ]

let s:menus.Denite = {
            \ 'description': 'Denite commands'
            \ }
" \ ['ColorScheme', 'Denite colorscheme -mode=normal'],
let s:menus.Denite.command_candidates = [
            \ ['File Manager', 'Denite file_manager -mode=normal'],
            \ ['Autocmd', 'Denite autocmd -mode=normal'],
            \ ['History Command', 'Denite history:cmd -mode=normal'],
            \ ['History Search', 'Denite history:search -mode=normal'],
            \ ['Location list', 'Denite location_list -mode=normal'],
            \ ['QuickFix', 'Denite quickfix -mode=normal'],
            \ ['Register', 'Denite register -mode=normal'],
            \ ['Session', 'Denite session -mode=normal'],
            \ ]
let s:menus.Sessions = {
            \ 'description': 'Sessions commands'
            \ }


let s:menus.Arduino= {
            \ 'description': 'Arduino commands'
            \ }
let s:menus.Arduino.command_candidates = [
            \ ['Port ttyACM0', "let g:arduino_serial_port = '/dev/ttyACM0'"],
            \ ['Port USB', "let g:arduino_serial_port = '/dev/USB'"],
            \ ]

let s:menus.Windows= {
            \ 'description': 'Windows commands'
            \ }
let s:menus.Windows.command_candidates = [
            \ ['MarkWindowSwap', "test"],
            \ ['Equal Size', "test"],
            \ ]

let s:menus.Toggles= {
            \ 'description': 'Toggle commands'
            \ }
let s:menus.Toggles.command_candidates = [
            \ ['LineNr', "test"],
            \ ['Cursor Position', "test"],
            \ ['Indenting Color', "test"],
            \ ['Ale', "test"],
            \ ]

" let s:menus.Bookmarks= {
"             \ 'description': 'Bookmarks commands'
"             \ }
" let s:menus.Bookmarks.command_candidates = [
"             \ ['1 /home/fbraenns', ":e /home/fbraenns"],
"             \ ]

call denite#custom#var('menu', 'menus', s:menus)

"==================================================================================================
" Unite - only needed for vimfiler

"==================================================================================================
" Nerdcommenter
"
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'cde': { 'left': '/**','right': '*/' }, 'cpp': { 'left': '//'},'dakota': { 'left': '#'}, 'c': { 'left': '//'},'foam': { 'left': '//'}, 'openhab-things': { 'left': '//'} ,'openhab-items': { 'left': '//'} ,'openhab-rules': { 'left': '//'} ,'openhab-sitemap': { 'left': '//'} ,'openhab-persist': { 'left': '//'} }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" nnoremap ,c :call NERDComment(0,"toggle")<CR>
" vnoremap ,c :call NERDComment(0,"toggle")<CR>
nnoremap <leader>; :call NERDComment(0,"toggle")<CR>
vnoremap <leader>; :call NERDComment(0,"toggle")<CR>

let g:indentLine_color_term = 239

"==================================================================================================
" VimFiler

" nnoremap <leader>jf :<C-u>VimFilerExplorer -sort-type=Time -status -split -simple -parent -winwidth=35 -no-quit -find<CR>
" nnoremap <leader>ff :VimFilerExplorer -status -find -winwidth=80 -sort-type=Time <CR>

" map <F12> :Defx `expand('%:p:h')` -search=`expand('%:p')`<CR>
map <silent><leader>x :Defx -auto-cd<CR>
 map <silent><leader>X :Defx -auto-cd -split=vertical -winwidth=50<CR>
 map <silent><leader>Dc :Defx -sort=Time -columns=mark:filename:time:size -new -auto-cd `expand('%:p:h')` -search=`expand('%:p')` <CR>
 map <silent><leader>Dd :Defx -sort=Time -new -auto-cd `expand('%:p:h')` -search=`expand('%:p')` <CR>
 map <silent><leader>Dd :Defx -new -auto-cd `expand('%:p:h')` -search=`expand('%:p')` <CR>
map <silent><leader>Dr :Defx -sort=Time -resume -auto-cd `expand('%:p:h')` -search=`expand('%:p')` <CR>
 map <silent><leader>x :Defx -auto-cd `expand('%:p:h')` -search=`expand('%:p')` <CR>
map <silent><leader>x :Defx -new -sort=Time -split=vertical -winwidth=50 -direction=topleft -auto-cd `expand('%:p:h')` -search=`expand('%:p')` <CR>
 map <silent><leader>X :Defx -new -split=vertical -winwidth=50 -auto-cd `expand('%:p:h')` -search=`expand('%:p')` <CR>
map <silent><leader>X :Defx -auto-cd 'expand('%:p:h')' -search=`expand('%:p')` <CR>
map <silent><leader>Dv :VimFilerCreate -status -sort-type=Time<CR>
 map <silent><leader>d :VimFilerCreate -status -sort-type=Time<CR>
map <silent><leader>Dx :Defx -sort=Time -new -auto-cd `expand('%:p:h')` -search=`expand('%:p')` <CR>
map <silent><leader>d :Defx -sort=Time -new -auto-cd `expand('%:p:h')` -search=`expand('%:p')` <CR>
" map <silent><leader>d :VimFilerCreate -status -sort-type=Time<CR>

nnoremap <silent> <Leader>xf :Defx -split=vertical -winwidth=40
            \ -columns=git:icons:filename:type:size -show-ignored-files
            \ -direction=topleft `expand('%:p:h')` -search=`expand('%:p')`<CR>

nnoremap <silent> <Leader>xdf :Defx -split=vertical -winwidth=40
            \ -columns=git:icons:filename:type:size -show-ignored-files
            \ -direction=topleft `expand('%:p:h')` -search=`expand('%:p')`<CR>
            \ :Defx -new -split=horizontal
            \ -columns=git:icons:filename:type:size -show-ignored-files<CR>
            \ :wincmd p<CR>

" map <silent><leader>d :Defx -columns={mark}  <CR>
" map <silent><leader>d :Defx -columns={mark} -new -auto-cd `expand('%:p:h')` -search=`expand('%:p')` <CR>
" call defx#custom#column('mark', {
"                       \ 'directory_icon': '▸',
"                       \ 'readonly_icon': '✗',
"                       \ 'selected_icon': '✓',
"                       \ })

call denite#custom#action('buffer,directory,file,openable', 'defx',
      \ {context -> execute('Defx ' . context['targets'][0]['action__path'])})

call defx#custom#column('icon', {
\ 'directory_icon': '▸',
\ 'opened_icon': '▾',
\ 'root_icon': ' ',
\ })

call defx#custom#column('filename', {
\ 'min_width': 40,
\ 'max_width': 40,
\ })

call defx#custom#column('mark', {
\ 'readonly_icon': '✗',
\ 'selected_icon': '✓',
\ })

" call defx#custom#option('_', { 'columns': 'mark:indent:icons:filename:type:size:git', })
	call defx#custom#option('_', {
	      \ 'columns': 'mark:indent:icon:filename:type:size:time:git',
	      \ })


let g:defx_as_default_explorer = 1 "geht nicht"
"map <silent><leader>d :VimFilerBufferDir -status -sort-type=Time<CR>
" map <silent><leader>Dd :VimFilerBufferDir -status -sort-type=Time -split -simple -winwidth=29 -toggle -no-quit -explorer<CR>
" map <silent><leader>d :VimFilerBufferDir -status -sort-type=Time<CR>
" map <space>E :VimFilerBufferDir -status -split -simple -winwidth=30 -toggle -no-quit<CR><CR>
" nnoremap <F2> :VimFilerBufferDir -status -sort-type=Time -split -simple -winwidth=30 -toggle -no-quit<CR>



"..................................................................................................
let g:vimfiler_file_icon = '-'
let g:vimfiler_marked_file_icon = '*'
let g:vimfiler_as_default_explorer = 0
let g:vimfiler_safe_mode_by_default = 0
let g:vimfiler_tree_leaf_icon = ' '
let g:vimfiler_tree_opened_icon = '▾'
let g:vimfiler_tree_closed_icon = '▸'
let g:vimfiler_enable_auto_cd = 1
" let g:vimfiler_status = 1

" let g:vimfiler_force_overwrite_statusline = 0

let g:vimfiler_readonly_file_icon = '✗'
let g:vimfiler_time_format = '%m-%d-%y %H:%M:%S'
let g:vimfiler_expand_jump_to_first_child = 0
let g:vimfiler_data_directory = '~/.vimfiler'

let g:vimfiler_ignore_pattern = ['^\.', '*\.bf', '*.sf', '*.s3d', '*.iso', '^\.git$', '^\.DS_Store$', '^\.pyc']

let g:vimfiler_execute_file_list={
            \ 'txt': 'neovim',
            \ 'vim': 'neovim',
            \ 'png': 'display',
            \ 'jpg': 'display',
            \ 'jpeg': 'display',
            \ 'tiff': 'display',
            \ 'gif': 'display',
            \ 'pdf': 'evince',
            \ 'csv': 'libreoffice',
            \ 'doc': 'libreoffice',
            \ 'docx': 'libreoffice',
            \ 'xls': 'libreoffice',
            \ 'xlsx': 'libreoffice',
            \ 'xlsm': 'libreoffice',
            \ 'ppt': 'libreoffice',
            \ 'pptx': 'libreoffice',
            \ 'ods': 'libreoffice',
            \ 'odt': 'libreoffice',
            \ 'out': 'xterm -e',
            \ 'py': 'xterm -e python',
            \ 'smv': 'smokeview',
            \ 'mp4': 'vlc',
            \ 'mp3': 'vlc',
            \ 'html': 'chromium-browser'
            \ }



"==================================================================================================
" TERMINAL
"
"To map <Esc> to exit terminal-mode:
:tnoremap <Esc> <C-\><C-n>

"""To simulate |i_CTRL-R| in terminal-mode:
"":tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'
"DEOL
nnoremap <F3> :Deol -split -start-insert<CR><C-w><C-w>
inoremap <F3> :Deol -split -start-insert<CR><C-w><C-w>
tnoremap <F3> <C-\><C-n>:q<CR><C-w><C-w>
nnoremap <F4> :vs<CR>:Deol -start-insert<CR><C-w><C-w>
inoremap <F4> :vs<CR>:Deol -start-insert<CR><C-w><C-w>
tnoremap <F4> <C-\><C-n>:q<CR><C-w><C-w>




"==================================================================================================
" TABs
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>
let notabs = 0
nnoremap <silent> <F8> :let notabs=!notabs<Bar>:if notabs<Bar>:tabo<Bar>:else<Bar>:tab ball<Bar>:tabn<Bar>:endif<CR>
nnoremap gl  :tabnext<CR>
nnoremap gh  :tabprev<CR>
nnoremap gd  :tabclose<CR>
nnoremap gN :tabnew<CR>
nnoremap gn :tabnext<CR>


"==================================================================================================

" Get current highlight
map <F9> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
            \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
            \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>


"==================================================================================================
" Denite-Git + Easygit
"
call denite#custom#map('normal', '<leader><CR>', '<denite:do_action:defx>', 'noremap')
call denite#custom#map('normal', '<c-a>', '<denite:toggle_select_all><denite:do_action:vsplit>', 'noremap')
call denite#custom#map( 'normal', 'a', '<denite:do_action:add>', 'noremap')
call denite#custom#map( 'normal', 'd', '<denite:do_action:delete>', 'noremap')
call denite#custom#map( 'normal', 'r', '<denite:do_action:reset>', 'noremap')

nnoremap <leader>Gl :Denite -mode=normal gitlog<CR>
nnoremap <leader>GL :Denite -mode=normal gitlog:all<CR>
nnoremap <leader>GS :Denite -mode=normal gitstatus<CR>
nnoremap <leader>Gs :Gstatus -mode=normal<CR>
nnoremap <leader>Gc :Denite -mode=normal gitchanged<CR>
nnoremap <leader>Gb :Denite -mode=normal gitbranch<CR>

:let g:session_autosave = 'no'
:let g:session_autoload = 'no'


"==================================================================================================
" CSV
let g:csv_strict_columns = 1
"let g:csv_highlight_column = 'y'
" nmap <leader>vh :CSVHiColum<CR>
nmap <leader>ha ggVG:'<,'>CSVArrangeColumn<CR>
nmap <leader>h1 :let b:csv_headerline=1<CR>
nmap <leader>h2 :let b:csv_headerline=2<CR>
nmap <leader>hma :CSVMaxCol<CR>
nmap <leader>hmi :CSVMinCol<CR>
nmap <leader>ha :CSVAnalyze<CR>


"==================================================================================================
" GERMAN Umlaute
nnoremap <F12> :call German_postfix()<CR>
function German_postfix()
    imap ue ü
    " imap uee ue
    imap UE Ü
    imap OE Ö
    imap oe ö
    " imap oee oe
    imap ae ä
    " imap aee ae
    imap AE Ä
    imap sz ß
    imap mfg Mit freundlichen Grüßen
    imap fb Fabian Brännström
    " ;| ae  -> ä
    " ;| aee -> ae
    " ;| oe  -> ö
    " ;| oee -> oe
    " ;| ue  -> ü (not after a/e/q)
    " ;| uee -> ue
    " ;| sz  -> ß
endfunction



imap jq <ESC>:wq<CR>
imap jw <ESC>:w<CR>
imap jk <ESC>
nmap <leader>q :q!a<CR>
nmap <leader>Q :wqa<CR>


"==================================================================================================
" MARKing in files, Denite and vimfiler

"
let g:mwDefaultHighlightingPalette = 'maximum'
runtime plugin/mark.vim
silent MarkClear
"
"silent 56Mark /.*\.py/
silent 1Mark /.*\.py/
silent 12Mark /.*\.pyc/

silent 1Mark /.*\.ipynb/
" silent 58Mark /.*\.ipynb/
"
silent 4Mark /.*\.cmake/
silent 4Mark /.*akefile/
silent 5Mark /.*MakeCache.txt/
silent 5Mark /.*MakeLists.txt/
silent 2Mark /.*\.igs/
silent 2Mark /.*\.iges/
silent 2Mark /.*\.cpp/
silent 2Mark /.*\.c/
silent 3Mark /.*\.stp/
silent 3Mark /.*\.hpp/
silent 3Mark /.*\.h/
silent 3Mark /.*\.step/
silent 4Mark /.*\.stl/
silent 5Mark /.*\.mo/
silent 5Mark /.*\.java/
silent 5Mark /.*\.fmu/

silent 9Mark /.*\.sim/
silent 10Mark /.*\.csv/
silent 11Mark /.*\.dat/
silent 12Mark /.*\.out/
silent 13Mark /.*\.in/

silent 7Mark /.*\.fds/
silent 7Mark /.*\.cc/
silent 7Mark /.*\.f90/
silent 13Mark /.*\.smv/
silent 6Mark /.*\.pdf/
silent 8Mark /.*\.png/
silent 8Mark /.*\.jpg/
silent 8Mark /.*\.jpeg/
silent 14Mark /.*\.xls/
silent 14Mark /.*\.xlsx/
silent 14Mark /.*\.ods/
silent 15Mark /.*\.log/
silent 16Mark /.*\.txt/
silent 17Mark /.*\.sh/

nmap <leader>t :call mark#Toggle()<CR>

"
"==================================================================================================
" COLORSCHEME
" colorscheme base16-default-dark
" let base16colorspace=256  " Access colors present in 256 colorspace
:let g:gruvbox_bold = '0'
:let g:gruvbox_italic = '1'
colorscheme gruvbox
" " colorscheme onedark
set background=dark
"
" " colorscheme gruvbox
:let g:gruvbox_contrast_dark = 'hard'
:let g:gruvbox_hls_cursor = 'orange'

" Highlighting
function! MyTabname(n) abort
    let buflist = tabpagebuflist(a:n)
    let winnr = tabpagewinnr(a:n)
    let _ = expand('#'.buflist[winnr - 1].':t')
    " if &ft == 'vimfiler'
    if gettabwinvar(a:n, winnr, '&ft') == 'vimfiler'
        return 'VMFILE'
        " return getcwd()
    else
        return strlen(_) ? _ : '[No Name]' 
    endif
endfunction


if hostname() == "wolf"
    let g:lightline = {
                \ 'colorscheme': 'wombat',
                \ 'tab': {
                \ 'active': [ 'tabnum', 'mytabname', 'modified' ],
                \ 'inactive': [ 'tabnum', 'mytabname', 'modified' ]
                \ },
                \ 'tab_component_function': {
                \ 'mytabname': 'MyTabname',
                \ 'modified': 'lightline#tab#modified',
                \ 'readonly': 'lightline#tab#readonly',
                \ 'tabnum': 'lightline#tab#tabnum'
                \ },
                \ }
else
    let g:lightline = {
                \ 'colorscheme': 'landscape',
                \ 'tab': {
                \ 'active': [ 'tabnum', 'mytabname', 'modified' ],
                \ 'inactive': [ 'tabnum', 'mytabname', 'modified' ]
                \ },
                \ 'tab_component_function': {
                \ 'mytabname': 'MyTabname',
                \ 'modified': 'lightline#tab#modified',
                \ 'readonly': 'lightline#tab#readonly',
                \ 'tabnum': 'lightline#tab#tabnum'
                \ },
                \ }
endif

"
"..................................................................................................
"
""..................................................................................................
:highlight ParenMatch ctermbg=blue
" :hi comment ctermfg=242
:highlight LineNr ctermfg=darkgrey

:highlight Cursor ctermfg=red guifg=red
:highlight vimFilerMarkedFile ctermbg=12
:highlight vimFilerDirectory ctermbg=blue

:highlight TermCursor ctermfg=red guifg=red

:hi Search ctermbg=12
:hi Search ctermfg=226
"
":hi comment ctermfg=darkgreen
" :hi comment ctermfg=142
" :hi comment ctermfg=167
"
" Without Gruvbox - black background
" highlight MarkWord1 ctermfg=3 ctermbg=234
" highlight MarkWord2 ctermfg=154 ctermbg=234
" highlight MarkWord3 ctermfg=148 ctermbg=234
" highlight MarkWord4 ctermfg=142 ctermbg=234
" highlight MarkWord5 ctermfg=94 ctermbg=234
" highlight MarkWord6 ctermfg=9 ctermbg=234
" highlight MarkWord7 ctermfg=105 ctermbg=234
" highlight MarkWord8 ctermfg=13 ctermbg=234
" highlight MarkWord9 ctermfg=99 ctermbg=234
" highlight MarkWord10  ctermfg=6 ctermbg=234
" highlight MarkWord11  ctermfg=128 ctermbg=234
" highlight MarkWord12  ctermfg=7 ctermbg=234
" highlight MarkWord13  ctermfg=75 ctermbg=234
" highlight MarkWord14  ctermfg=2 ctermbg=234
" highlight MarkWord15  ctermfg=187 ctermbg=234
" highlight MarkWord16  ctermfg=186 ctermbg=234
" highlight MarkWord17  ctermfg=192 ctermbg=234

"With Gruvbox
highlight MarkWord1 ctermfg=3 ctermbg=bg
highlight MarkWord2 ctermfg=154 ctermbg=bg
highlight MarkWord3 ctermfg=148 ctermbg=bg
highlight MarkWord4 ctermfg=142 ctermbg=bg
highlight MarkWord5 ctermfg=94 ctermbg=bg
highlight MarkWord6 ctermfg=9 ctermbg=bg
highlight MarkWord7 ctermfg=105 ctermbg=bg
highlight MarkWord8 ctermfg=13 ctermbg=bg
highlight MarkWord9 ctermfg=99 ctermbg=bg
highlight MarkWord10  ctermfg=6 ctermbg=bg
highlight MarkWord11  ctermfg=128 ctermbg=bg
highlight MarkWord12  ctermfg=7 ctermbg=bg
highlight MarkWord13  ctermfg=75 ctermbg=bg
highlight MarkWord14  ctermfg=2 ctermbg=bg
highlight MarkWord15  ctermfg=187 ctermbg=bg
highlight MarkWord16  ctermfg=186 ctermbg=bg
highlight MarkWord17  ctermfg=192 ctermbg=bg

"==================================================================================================
" Delete white spaces
nnoremap <F5> :%s/\s\+$//e
nnoremap <F6> :MundoToggle<CR>
"==================================================================================================
"BC Calculator --> python too slow at start up
" Python calculator
"OO:command! -nargs=+ Calc :py3 print (<args>)
"OO":py3 from math import *
"OO:py3 import numpy as np
"OO" :py3 from cmath import *
"OOnnoremap <F2>  :Calc
" nnoremap <F2>  !!bc -l<CR>
" nnoremap <F2>  !!bc -l<CR>
" inoremap <F2>  <ESC>!!bc -l<CR>
" nnoremap <F2>
" nnoremap <F2>
inoremap <F2> <C-r>=
nnoremap <F2> i<C-r>=

"==================================================================================================
" Jump back in buffers (vimfiler!?)
function! GoBackToRecentBuffer()
    let startName = bufname('%')
    while 1
        exe "normal! \<c-o>"
        let nowName = bufname('%')
        if nowName != startName
            break
        endif
    endwhile
endfunction

nnoremap <silent> <C-U> :call GoBackToRecentBuffer()<Enter>

xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

:set inccommand=nosplit

"==================================================================================================
" Infos
"
" PATHs
" :echo expand("%:p")    " absolute path
" :echo expand("%:p:h")  " absolute path dirname
" :echo expand("%:p:h:h")" absolute path dirname dirname
" :echo expand("%:.")    " relative path
" :echo expand("%:.:h")  " relative path dirname
" :echo expand("%:.:h:h")" relative path dirname dirname
"
" Cx-Cl
" filter
" global g commands
" C-F in command mode or q:
"
" ino <C-A> <C-O>yiW<End>=<C-R>=<C-R>0<CR>
"
" Showmarks
" :hi ShowMarksHLl ctermfg=red "For marks a-z
" :hi ShowMarksHLu ctermfg=yellow "For marks A-Z
" :hi ShowMarksHLo ctermfg=magenta "For all other marks
" :hi ShowMarksHLm ctermfg=white "For multiple marks on the same line.
" :hi SignColumn ctermbg=black
:hi CursorLine ctermbg=darkgrey
"
set cursorline

"================================================================================================== 
" ALE Python
"let g:ale_sign_column_always = 1
"let g:ale_sign_error = '>>'
"let g:ale_sign_warning = '--'
"let g:ale_set_highlights = 0
"highlight ALEWarning ctermbg=DarkMagenta
"nmap <silent> <C-k> <Plug>(ale_previous_wrap)
"nmap <silent> <C-j> <Plug>(ale_next_wrap)

" nnoremap <silent> <leader>a :<C-u>Denite ale<CR>
nnoremap <silent> <leader>wd :windo diffthis
nnoremap <silent> <leader>wo :windo diffoff
" :windo diffoff
command! -nargs=+ -complete=command Z
  \ call denite#start([{'name': 'z', 'args': [<q-args>]}])

" :hi ALEWarning ctermbg=22

"================================================================================================== 
" Semshi Python
"" :hi semshiSelected ctermbg=blue
"" :Semshi disable
"nmap <silent> <leader>rr :Semshi rename<CR>
"
"nmap <silent> <Tab> :Semshi goto name next<CR>
"nmap <silent> <S-Tab> :Semshi goto name prev<CR>
"
"nmap <silent> <leader>sc :Semshi goto class next<CR>
"nmap <silent> <leader>sC :Semshi goto class prev<CR>
"
"nmap <silent> <leader>sf :Semshi goto function next<CR>
"nmap <silent> <leader>sF :Semshi goto function prev<CR>
"
"nmap <silent> <leader>se :Semshi error<CR>
"nmap <silent> <leader>sE :Semshi goto error<CR>
"let g:semshi#simplify_markup = 1
""#
"" if exists('+termguicolors')
""   let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
""   let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
""   set termguicolors
"" endif
"


"================================================================================================== 
"FZF

if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif
"vim-mundo
" Enable persistent undo so that undo history persists across vim sessions
" set undofile
" set undodir=~/.vim/undo

" hi mygroup
" call matchadd('mygroup', '.py')
set viminfo='10,\"100,:20,%,n~/.viminfo


set grepprg=ag\ --vimgrep\ $*
set grepformat=%f:%l:%c:%m

" function! FZFRawAg(the_tail, ...)
"     return call('fzf#vim#grep', extend(['ag ' . a:the_tail, 1], a:000))
" endfunction
" command! -nargs=+ -complete=file RAg call FZFRawAg(<q-args>)

"================================================================================================== 
"FZF
"
nnoremap <silent> <leader>fz :<C-u>FZF<CR>
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
" Consider using CTRL-X/V/T key bindings of the default :FZF command instead.
" Open files in horizontal split
nnoremap <silent> <Leader>s :call fzf#run({
\   'down': '40%',
\   'sink': 'botright split' })<CR>

" Open files in vertical horizontal split
nnoremap <silent> <Leader>v :call fzf#run({
\   'right': winwidth('.') / 2,
\   'sink':  'vertical botright split' })<CR>

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_layout = { 'window': '10new' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
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

"================================================================================================== 
" This is the default extra key bindings
" let g:fzf_action = {
"   \ 'ctrl-t': 'tab split',
"   \ 'ctrl-x': 'split',
"   \ 'ctrl-v': 'vsplit' }

"================================================================================================== 
" Default fzf layout
" - down / up / left / right
" let g:fzf_layout = { 'down': '~40%' }
"
" " In Neovim, you can set up fzf window using a Vim command
" let g:fzf_layout = { 'window': 'enew' }
" let g:fzf_layout = { 'window': '-tabnew' }
" let g:fzf_layout = { 'window': '10split' }

" Customize fzf colors to match your color scheme
" let g:fzf_colors =
" \ { 'fg':      ['fg', 'Normal'],
"   \ 'bg':      ['bg', 'Normal'],
"   \ 'hl':      ['fg', 'Comment'],
"   \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"   \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"   \ 'hl+':     ['fg', 'Statement'],
"   \ 'info':    ['fg', 'PreProc'],
"   \ 'border':  ['fg', 'Ignore'],
"   \ 'prompt':  ['fg', 'Conditional'],
"   \ 'pointer': ['fg', 'Exception'],
"   \ 'marker':  ['fg', 'Keyword'],
"   \ 'spinner': ['fg', 'Label'],
"   \ 'header':  ['fg', 'Comment'] }

"================================================================================================== 
" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'
" Command for git grep
" - fzf#vim#grep(command, with_column, [options], [fullscreen])
"- command! -bang -nargs=* GGrep
"-   \ call fzf#vim#grep(
"-   \   'git grep --line-number '.shellescape(<q-args>), 0,
"-   \   { 'dir': systemlist('git rev-parse --show-toplevel')[0] }, <bang>0)
"- 
"- "================================================================================================== 
"- " Override Colors command. You can safely do this in your .vimrc as fzf.vim
"- " will not override existing commands.
"- command! -bang Colors
"-   \ call fzf#vim#colors({'left': '15%', 'options': '--reverse --margin 30%,0'}, <bang>0)
"- 
"- "================================================================================================== 
"- " Augmenting Ag command using fzf#vim#with_preview function
"- "   * fzf#vim#with_preview([[options], [preview window], [toggle keys...]])
"- "     * For syntax-highlighting, Ruby and any of the following tools are required:
"- "       - Bat: https://github.com/sharkdp/bat
"- "       - Highlight: http://www.andre-simon.de/doku/highlight/en/highlight.php
"- "       - CodeRay: http://coderay.rubychan.de/
"- "       - Rouge: https://github.com/jneen/rouge
"- "
"- "   :Ag  - Start fzf with hidden preview window that can be enabled with "?" key
"- "   :Ag! - Start fzf in fullscreen and display the preview window above
"- command! -bang -nargs=* Ag
"-   \ call fzf#vim#ag(<q-args>,
"-   \                 <bang>0 ? fzf#vim#with_preview('up:60%')
"-   \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
"-   \                 <bang>0)
"- 
"- " Similarly, we can apply it to fzf#vim#grep. To use ripgrep instead of ag:
"- command! -bang -nargs=* Rg
"-   \ call fzf#vim#grep(
"-   \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
"-   \   <bang>0 ? fzf#vim#with_preview('up:60%')
"-   \           : fzf#vim#with_preview('right:50%:hidden', '?'),
"-   \   <bang>0)
"- 
"- " Likewise, Files command with preview window
"- command! -bang -nargs=? -complete=dir Files
"-   \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
"- "
"- "================================================================================================== 
"- " Mapping selecting mappings
"- nmap <leader><tab> <plug>(fzf-maps-n)
"- xmap <leader><tab> <plug>(fzf-maps-x)
"- omap <leader><tab> <plug>(fzf-maps-o)
"- 
"- " Insert mode completion
"- imap <c-x><c-k> <plug>(fzf-complete-word)
"- imap <c-x><c-f> <plug>(fzf-complete-path)
"- imap <c-x><c-j> <plug>(fzf-complete-file-ag)
"- imap <c-x><c-l> <plug>(fzf-complete-line)
"- 
"- " Advanced customization using autoload functions
"- inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})
"- 
"- " Custom Statusline
"- function! s:fzf_statusline()
"-   " Override statusline as you like
"-   highlight fzf1 ctermfg=161 ctermbg=251
"-   highlight fzf2 ctermfg=23 ctermbg=251
"-   highlight fzf3 ctermfg=237 ctermbg=251
"-   setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
"- endfunction
"- 
"- autocmd! User FzfStatusLine call <SID>fzf_statusline()
"- 
"- "-------------------------------------------------------------------------------------------------- 
"- command! -nargs=* -complete=dir Cd call fzf#run(fzf#wrap(
"-   \ {'source': 'find '.(empty(<f-args>) ? '.' : <f-args>).' -type d',
"-   \  'sink': 'cd'}))
"- 
"- ""-------------------------------------------------------------------------------------------------- 
"- " Open files in horizontal split
"- "
"- nnoremap <silent> <Leader>s :call fzf#run({
"- \   'down': '40%',
"- \   'sink': 'botright split' })<CR>
"- 
"- " Open files in vertical horizontal split
"- nnoremap <silent> <Leader>v :call fzf#run({
"- \   'right': winwidth('.') / 2,
"- \   'sink':  'vertical botright split' })<CR>
"- "
"- ""--------------------------------------------------------------------------------------------------
"- " Select buffers
"- function! s:buflist()
"-  redir => ls
"-  silent ls
"-  redir END
"-  return split(ls, '\n')
"- endfunction
"- 
"- function! s:bufopen(e)
"-  execute 'buffer' matchstr(a:e, '^[ 0-9]*')
"- endfunction
"- 
"- nnoremap <silent> <Leader><Enter> :call fzf#run({
"- \   'source':  reverse(<sid>buflist()),
"- \   'sink':    function('<sid>bufopen'),
"- \   'options': '+m',
"- \   'down':    len(<sid>buflist()) + 2
"- \ })<CR>
"- 
"- autocmd! VimEnter * command! -nargs=* -complete=file Ag :call fzf#vim#ag_raw(<q-args>, fzf#wrap('ag-raw',
"- \ {'options': "--preview 'coderay $(cut -d: -f1 <<< {}) 2> /dev/null | sed -n $(cut -d: -f2 <<< {}),\\$p | head -".&lines."'"}))
"- 
"- "--------------------------------------------------------------------------------------------------
"- command! FZFMru call fzf#run({
"- \  'source':  v:oldfiles,
"- \  'sink':    'e',
"- \  'options': '-m -x +s',
"- \  'down':    '40%'})
"- 
"- command! FZFMruBuffers call fzf#run({
"- \ 'source':  reverse(s:all_files()),
"- \ 'sink':    'edit',
"- \ 'options': '-m -x +s',
"- \ 'down':    '40%' })
"- 
"- function! s:all_files()
"-  return extend(
"-  \ filter(copy(v:oldfiles),
"-  \        "v:val !~ 'fugitive:\\|NERD_tree\\|^/tmp/\\|.git/'"),
"-  \ map(filter(range(1, bufnr('$')), 'buflisted(v:val)'), 'bufname(v:val)'))
"- endfunction
"- 
"- 
"- "--------------------------------------------------------------------------------------------------
"- "Jump to tags
"- 
"- function! s:tags_sink(line)
"-  let parts = split(a:line, '\t\zs')
"-  let excmd = matchstr(parts[2:], '^.*\ze;"\t')
"-  execute 'silent e' parts[1][:-2]
"-  let [magic, &magic] = [&magic, 0]
"-  execute excmd
"-  let &magic = magic
"- endfunction
"- 
"- function! s:tags()
"-  if empty(tagfiles())
"-    echohl WarningMsg
"-    echom 'Preparing tags'
"-    echohl None
"-    call system('ctags -R')
"-  endif
"- 
"-  call fzf#run({
"-  \ 'source':  'cat '.join(map(tagfiles(), 'fnamemodify(v:val, ":S")')).
"-  \            '| grep -v -a ^!',
"-  \ 'options': '+m -d "\t" --with-nth 1,4.. -n 1 --tiebreak=index',
"-  \ 'down':    '40%',
"-  \ 'sink':    function('s:tags_sink')})
"- endfunction
"- 
"- command! Tags call s:tags()
"- 
"- 
"- "--------------------------------------------------------------------------------------------------
"- "Jump to tags in the current buffer
"- function! s:align_lists(lists)
"-  let maxes = {}
"-  for list in a:lists
"-    let i = 0
"-    while i < len(list)
"-      let maxes[i] = max([get(maxes, i, 0), len(list[i])])
"-      let i += 1
"-    endwhile
"-  endfor
"-  for list in a:lists
"-    call map(list, "printf('%-'.maxes[v:key].'s', v:val)")
"-  endfor
"-  return a:lists
"- endfunction
"- 
"- function! s:btags_source()
"-  let lines = map(split(system(printf(
"-    \ 'ctags -f - --sort=no --excmd=number --language-force=%s %s',
"-    \ &filetype, expand('%:S'))), "\n"), 'split(v:val, "\t")')
"-  if v:shell_error
"-    throw 'failed to extract tags'
"-  endif
"-  return map(s:align_lists(lines), 'join(v:val, "\t")')
"- endfunction
"- 
"- function! s:btags_sink(line)
"-  execute split(a:line, "\t")[2]
"- endfunction
"- 
"- function! s:btags()
"-  try
"-    call fzf#run({
"-    \ 'source':  s:btags_source(),
"-    \ 'options': '+m -d "\t" --with-nth 1,4.. -n 1 --tiebreak=index',
"-    \ 'down':    '40%',
"-    \ 'sink':    function('s:btags_sink')})
"-  catch
"-    echohl WarningMsg
"-    echom v:exception
"-    echohl None
"-  endtry
"- endfunction
"- 
"- command! BTags call s:btags()
:set tags=./tags/etags,./../tags,./*/tags
"- "
"- "--------------------------------------------------------------------------------------------------
"- "Search lines in all open vim buffers
"- function! s:line_handler(l)
"-  let keys = split(a:l, ':\t')
"-  exec 'buf' keys[0]
"-  exec keys[1]
"-  normal! ^zz
"- endfunction
"- 
"- function! s:buffer_lines()
"-  let res = []
"-  for b in filter(range(1, bufnr('$')), 'buflisted(v:val)')
"-    call extend(res, map(getbufline(b,0,"$"), 'b . ":\t" . (v:key + 1) . ":\t" . v:val '))
"-  endfor
"-  return res
"- endfunction
"- 
"- command! FZFLines call fzf#run({
"- \   'source':  <sid>buffer_lines(),
"- \   'sink':    function('<sid>line_handler'),
"- \   'options': '--extended --nth=3..',
"- \   'down':    '60%'
"- \})
"- 
"- "--------------------------------------------------------------------------------------------------
"- "Narrow ag results within vim
"- function! s:ag_to_qf(line)
"-  let parts = split(a:line, ':')
"-  return {'filename': parts[0], 'lnum': parts[1], 'col': parts[2],
"-        \ 'text': join(parts[3:], ':')}
"- endfunction
"- 
"- function! s:ag_handler(lines)
"-  if len(a:lines) < 2 | return | endif
"- 
"-  let cmd = get({'ctrl-x': 'split',
"-               \ 'ctrl-v': 'vertical split',
"-               \ 'ctrl-t': 'tabe'}, a:lines[0], 'e')
"-  let list = map(a:lines[1:], 's:ag_to_qf(v:val)')
"- 
"-  let first = list[0]
"-  execute cmd escape(first.filename, ' %#\')
"-  execute first.lnum
"-  execute 'normal!' first.col.'|zz'
"- 
"-  if len(list) > 1
"-    call setqflist(list)
"-    copen
"-    wincmd p
"-  endif
"- endfunction
"- 
"- command! -nargs=* Ag call fzf#run({
"- \ 'source':  printf('ag --nogroup --column --color "%s"',
"- \                   escape(empty(<q-args>) ? '^(?=.)' : <q-args>, '"\')),
"- \ 'sink*':    function('<sid>ag_handler'),
"- \ 'options': '--ansi --expect=ctrl-t,ctrl-v,ctrl-x --delimiter : --nth 4.. '.
"- \            '--multi --bind=ctrl-a:select-all,ctrl-d:deselect-all '.
"- \            '--color hl:68,hl+:110',
"- \ 'down':    '50%'
"- \ })
"- 
"- "--------------------------------------------------------------------------------------------------
"- "fuzzy search files in parent directory of current file
"- function! s:fzf_neighbouring_files()
"-  let current_file =expand("%")
"-  let cwd = fnamemodify(current_file, ':p:h')
"-  let command = 'ag -g "" -f ' . cwd . ' --depth 0'
"- 
"-  call fzf#run({
"-        \ 'source': command,
"-        \ 'sink':   'e',
"-        \ 'options': '-m -x +s',
"-        \ 'window':  'enew' })
"- endfunction
"- 
"- command! FZFNeigh call s:fzf_neighbouring_files()
"- 
"- "-------------------------------------------------------------------------------------------------- 
"- set tags=tags 
"- set path=.
"
"
"augroup defx-extensions
"         autocmd!
"         " Close defx if it's the only buffer left in the window
"         autocmd WinEnter * if &ft == 'defx' && winnr('$') == 1 | q | endif
"
"         " Move focus to the next window if current buffer is defx
"         autocmd TabLeave * if &ft == 'defx' | wincmd w | endif
"
"         autocmd FileType defx do WinEnter | call s:defx_my_settings()
" augroup END

"================================================================================================== 
"DEFX / DNEITE"
" " Define mappings
" function! s:defx_my_settings() abort
"         nnoremap <silent><buffer><expr>gl  defx#do_action('call', 'DefxTmuxExplorer')
"         nnoremap <silent><buffer><expr>gr  defx#do_action('call', 'DefxDeniteGrep')
"         nnoremap <silent><buffer><expr>gf  defx#do_action('call', 'DefxDeniteFile')
"         nnoremap <silent><buffer><expr>gw   defx#do_action('call', 'DefxToggleWidth')
" endfunction

" Find files in parent directory with Denite
" function! g:DefxDeniteFile(context) abort
"         let l:target = a:context['targets'][0]
"         let l:parent = fnamemodify(l:target, ':h')
"         silent execute 'wincmd w'
"         silent execute 'Denite file/rec:'.l:parent
" endfunction
"
" " Grep in parent directory with Denite
" function! g:DefxDeniteGrep(context) abort
"         let l:target = a:context['targets'][0]
"         let l:parent = fnamemodify(l:target, ':h')
"         silent execute 'wincmd w'
"         silent execute 'Denite grep:'.l:parent
" endfunction
"
" " Toggle between defx window width and longest line
" function! g:DefxToggleWidth(context) abort
"         let l:max = 0
"         let l:original = a:context['winwidth']
"         for l:line in range(1, line('$'))
"                 let l:len = len(getline(l:line))
"                 if l:len > l:max
"                         let l:max = l:len
"                 endif
"         endfor
"         execute 'vertical resize '.(l:max == winwidth('.') ? l:original : l:max)
" endfunction
"
" " Detect file-explorer (lf or ranger)
" let s:explorer = ''
" if executable('lf')
"         let s:explorer = 'lf'
" elseif executable('ranger')
"         let s:explorer = 'ranger'
" endif
"
" " Open file-explorer split with tmux
" function! g:DefxTmuxExplorer(context) abort
"         if empty('$TMUX') || empty(s:explorer)
"                 return
"         endif
"         let l:target = a:context['targets'][0]
"         let l:parent = fnamemodify(l:target, ':h')
"         silent execute '!tmux split-window -p 30 -c '.l:parent.' '.s:explorer
" endfunction
