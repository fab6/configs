"==================================================================================================
":let g:vimsyn_embed='0'
"let g:python_host_skip_check=1
"let g:loaded_python2_provider=1
"let g:loaded_python3_provider=1
"
"==================================================================================================
set runtimepath+=/home/fbraenns/.nvim/
"--------------------------------------------------------------------------------------------------
" Specify a directory for plugins
call plug#begin('/home/fbraenns/.nvim/vimplug')
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/deol.nvim'
" Plug 'cyberkov/openhab-vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
" Plug 'ncm2/ncm2'

Plug 'Shougo/vimfiler.vim' "needs unite -> new development for denite Plug 'Shougo/defx.nvim'
Plug 'Shougo/neomru.vim'
" Wird fuer grep und find benoetigt
Plug 'Shougo/vimproc.vim', { 'do' : 'make', }  
" Unite is needed due to vimfiler
Plug 'Shougo/unite.vim'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/denite.nvim'
Plug 'chemzqm/denite-extra'
Plug 'rafi/vim-denite-session'
Plug 'yyotti/denite-marks'
Plug 'inkarkat/vim-ingo-library'
Plug 'inkarkat/vim-mark'

Plug 'junegunn/vim-easy-align'
Plug 'chemzqm/vim-easygit'
Plug 'chemzqm/denite-git'
" Plug 'notomo/denite-autocmd'
Plug 'notomo/denite-keymap'
Plug 'chrisbra/csv.vim'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdcommenter'
Plug 'itchyny/vim-parenmatch'
" Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/vim-cursorword'
Plug 'itchyny/lightline.vim'
" Plug 'xolox/vim-misc'
" Plug 'xolox/vim-session'
Plug 'morhetz/gruvbox'
" Plug 'jpo/vim-railscasts-theme'
" Plug 'jacoborus/tender.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
" .....................................................................
" Programming:
" Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
" Plug 'rudes/vim-java', { 'for': 'java' }
Plug 'plasticboy/vim-markdown'
" Plug 'vyzyv/vimpyter'
Plug 'jvirtanen/vim-octave', { 'for': 'octave' }
"Plug '4Evergreen4/vim-hardy' "Arduino
"--------------------------------------------------------------------------------------------------

call plug#end()

"==================================================================================================
" General Settings
"
set encoding=utf-8
set number
set ut=100
set novisualbell
"" Shut down the visual bell of terminal
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
"
augroup filetype
    autocmd!
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
augroup END
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
map <F11> :call Paste_on_off()<CR>
set pastetoggle=<F11>
"
let paste_mode = 0 " 0 = normal, 1 = paste
"
"..................................................................................................
func! Paste_on_off()
    if g:paste_mode == 0
        set paste
        let g:paste_mode = 1
    else
        set nopaste

        let g:paste_mode = 0
    endif
    return
endfunc

"..................................................................................................
vmap <F6> :!xclip -f -sel clip<CR>
imap <F7> :-1r !xclip -o -sel clip

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
cnoremap <C-e> <End>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-j> <Left>
cnoremap <C-l> <Right>
"
:nnoremap <leader>fed :e ~/.config/nvim/init.vim<CR>
:nnoremap <leader>fer :source ~/.config/nvim/init.vim<CR>
:nnoremap <leader>fef :e ~/.nvim/ftplugin/<CR>
:nnoremap <leader>fes :e ~/.nvim/snippets/python.snip<CR>

"-------------------------------------------------------------------------------------------------- 
" PASTINg
func! Paste_on_off()
    if g:paste_mode == 0
        set paste
        let g:paste_mode = 1
    else
        set nopaste

        let g:paste_mode = 0
    endif
    return
endfunc

vmap <F6> :!xclip -f -sel clip<CR>
imap <F7> :-1r !xclip -o -sel clip

:map <C-x>0 <C-w>c
:map <C-x>1 <C-w>o

:nmap ,x :call jobstart('xterm',{'detach':1}) <CR>

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
"
" nnoremap <C-p> :<C-u>Denite file_rec<CR>
" nnorema<silent>p <leader><Space>b :<C-u>DeniteBufferDir buffer<CR>
nnoremap <silent><leader>8 :<C-u>DeniteCursorWord grep:. -mode=normal<CR>
" nnoremap <leader>/ :<C-u>Denite grep:. -mode=normal<CR>
" nnoremap <leader><Space>/ :<C-u>DeniteBufferDir grep:. -mode=normal<CR>
" nnoremap <leader>d :<C-u>DeniteBufferDir file_rec<CR>

" nnoremap <silent> <leader>o :<C-u>Denite -buffer-name=outline -winwidth=35 unite:outline -mode=normal<cr>
" nnorema<silent> p <leader>k :<C-u>Denite -mode=normal -winwidth=35 unite:outline<cr>

nnoremap <silent> <leader>v :<C-u>Denite location_list -mode=normal -no-empty -auto-preview<CR>
nnoremap <silent> <leader>ff :<C-u>DeniteBufferDir -mode=normal -no-split -buffer-name=files   file_rec<cr>
nnoremap <silent> <leader>fd :<C-u>DeniteBufferDir -mode=normal -no-split -buffer-name=dir directory_rec<cr>
nnoremap <silent> <leader>r :<C-u>Denite -mode=normal -no-split -buffer-name=mru     file_mru<cr>

" nnoremap <silent><leader>m :<C-u>Denite buffer<CR>
nnoremap <silent> <leader>b :<C-u>Denite -mode=normal -no-split -buffer-name=buffers buffer<cr>
nnoremap <silent> <leader>l :<C-u>Denite line -mode=insert -no-split -buffer-name=line<cr>

nnoremap <silent> <leader>m :<C-u>Denite marks -mode=normal<CR>
nnoremap <silent> <leader>M :<C-u>Denite menu -mode=normal<CR>
" nnoremap <silent> <leader>g :<C-u>Denite -mode=normal -winwidth=35 grep<cr>

" nnoremap <silent> <leader>da :<C-u>Denite autocmd -mode=normal -auto-preview<CR>
" nnoremap <silent> <leader>dk :<C-u>Denite keymap -mode=normal<CR>
" nnoremap <silent> <leader>Df :<C-u>Denite file_manager -mode=normal <CR>
" nnoremap <silent> <leader>Dc :<C-u>Denite colorscheme -mode=normal -auto-preview<CR>
nnoremap <silent> <leader>Dj :call execute('Denite -resume -select=+'.v:count1.' -immediately')<CR>
nnoremap <silent> <leader>Dk :call execute('Denite -resume -select=-'.v:count1.' -immediately')<CR>
" nnoremap <silent> <leader>Dl :<C-u>Denite -mode=normal -auto-resize location_list<CR>
nnoremap <silent> <leader>Dn :<C-u>DeniteCursorWord line -mode=insert -no-split -buffer-name=line<cr>
nnoremap <silent> <leader>o :<C-u>Denite -mode=normal -winwidth=35 outline<cr>
" nnoremap <silent> <leader>Dq :<C-u>Denite -mode=normal -auto-resize quickfix<CR>
nnoremap <silent> <leader>Ds :<C-u>Denite -mode=normal -winwidth=35 session<cr>
nnoremap <silent> <leader>Dr :<C-u>Denite -resume<CR>
" nnoremap <silent> <leader>Dy :<C-u>Denite -mode=normal -winwidth=35 register<cr>


" :DeniteBufferDir [{options}] {sources}			*:DeniteBufferDir*
" :DeniteCursorWord [{options}] {sources}			*:DeniteCursorWord*
" :DeniteProjectDir [{options}] {sources}			*:DeniteProjectDir*


nnoremap <silent> <leader>hs :<C-u>Denite history:search -mode=normal<CR>
nnoremap <silent> <leader>hc :<C-u>Denite history:cmd -mode=normal<CR>

" call denite#custom#var('outline', 'command', ['ctags'])
" Ag command on grep source
call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

" Change ignore_globs
call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
            \ [ '.git/', '.ropeproject/', '__pycache__/',
            \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])
"
call denite#custom#map(
            \ 'normal',
            \ 'h',
            \ '<denite:move_up_path>',
            \ 'noremap'
            \)

call denite#custom#map(
            \ 'normal',
            \ 'f',
            \ '<denite:scroll_page_forwards>',
            \ 'noremap'
            \)

call denite#custom#map(
            \ 'normal',
            \ 'b',
            \ '<denite:scroll_page_backwards>',
            \ 'noremap'
            \)
" call denite#custom#map(
"       \ 'normal',
"       \ 'l',
"       \ '<denite:enter_mode:normal>',
"       \ 'noremap'
"       \)

call denite#custom#map(
            \ 'insert',
            \ '<C-j>',
            \ '<denite:move_to_next_line>',
            \ 'noremap'
            \)
call denite#custom#map(
            \ 'insert',
            \ '<C-n>',
            \ '<denite:move_to_next_line>',
            \ 'noremap'
            \)

call denite#custom#map(
            \ 'insert',
            \ '<C-k>',
            \ '<denite:move_to_previous_line>',
            \ 'noremap'
            \)
call denite#custom#map(
            \ 'insert',
            \ '<C-p>',
            \ '<denite:move_to_previous_line>',
            \ 'noremap'
            \)

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

" let s:menus.Unite= {
"             \ 'description': 'Unite commands'
"             \ }
" let s:menus.VimFiler= {
"             \ 'description': 'VimFiler commands'
"             \ }
" let s:menus.VimFiler.command_candidates = [
"             \ ['Explorer 1', ':<C-u>VimFilerExplorer -sort-type=Time -status -split -simple -parent -winwidth=35 -no-quit -find'],
"             \ ['Explorer 2', ':VimFilerExplorer -status -find -winwidth=80 -sort-type=Time'],
"             \ ]

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
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' }, 'openhab-things': { 'left': '//'} ,'openhab-items': { 'left': '//'} ,'openhab-rules': { 'left': '//'} ,'openhab-sitemap': { 'left': '//'} ,'openhab-persist': { 'left': '//'} }

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

map <silent><leader>x :Defx -auto-cd<CR>
map <silent><leader>D :VimFilerCreate -status -sort-type=Time<CR>
"map <silent><leader>d :VimFilerBufferDir -status -sort-type=Time<CR>
" map <silent><leader>Dd :VimFilerBufferDir -status -sort-type=Time -split -simple -winwidth=29 -toggle -no-quit -explorer<CR>
map <silent><leader>d :VimFilerBufferDir -status -sort-type=Time<CR>
" map <space>E :VimFilerBufferDir -status -split -simple -winwidth=30 -toggle -no-quit<CR><CR>
" nnoremap <F2> :VimFilerBufferDir -status -sort-type=Time -split -simple -winwidth=30 -toggle -no-quit<CR>



"..................................................................................................
let g:vimfiler_file_icon = '-'
let g:vimfiler_marked_file_icon = '*'
let g:vimfiler_as_default_explorer = 1
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
call denite#custom#map(
            \ 'normal',
            \ 'a',
            \ '<denite:do_action:add>',
            \ 'noremap'
            \)

call denite#custom#map(
            \ 'normal',
            \ 'd',
            \ '<denite:do_action:delete>',
            \ 'noremap'
            \)

call denite#custom#map(
            \ 'normal',
            \ 'r',
            \ '<denite:do_action:reset>',
            \ 'noremap'
            \)

nnoremap <leader>gl :Denite gitlog<CR>
nnoremap <leader>gL :Denite gitlog:all<CR>
nnoremap <leader>gS :Denite gitstatus<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Denite gitchanged<CR>
nnoremap <leader>gb :Denite gitbranch<CR>

:let g:session_autosave = 'no'
:let g:session_autoload = 'no'


"==================================================================================================
" CSV
let g:csv_strict_columns = 1
"let g:csv_highlight_column = 'y'
" nmap <leader>vh :CSVHiColum<CR>
nmap <leader>va ggVG:'<,'>CSVArrangeColumn<CR>
" nmap <leader>vma :CSVMaxCol<CR>
" nmap <leader>vmi :CSVMinCol<CR>


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
silent 2Mark /.*\.igs/
silent 2Mark /.*\.iges/
silent 3Mark /.*\.stp/
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
:let g:gruvbox_bold = '0'
:let g:gruvbox_italic = '1'
colorscheme gruvbox
set background=dark

" colorscheme gruvbox
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
