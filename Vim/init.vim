"==================================================================================================
" TODO
" Vim:
"  - client/server
" Sessions:
"  - how can I use sessions --> For each topic a splitted vimfiler!?
"  - what should be my default session
" Denite:
"  - syntax highlighting e.g. for 'line'
" Git:
"  - easier git handling
" Vimfiler:
"  -
" Terminal:
"  -
" Python:
"  - get to know ale
" Complete:
"  - deoplete does this work for the terminal as well?
" Snippets:
" - modelica
" - Arduino
" - Octave
" - Python --> scikit-learn, H2O, Keras, DataAnalysis
" - OpenFOAM
"
"
"==================================================================================================
set runtimepath+=/home/fbraenns/.nvim/
"--------------------------------------------------------------------------------------------------
" Specify a directory for plugins
call plug#begin('/home/fbraenns/.nvim/vimplug')
Plug 'junegunn/vim-easy-align'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/deol.nvim', { 'rev': 'a1b5108fd' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/tabpagebuffer.vim'
Plug 'Shougo/vinarise'
Plug 'Shougo/vimfiler.vim' "needs unite -> new development for denite Plug 'Shougo/defx.nvim'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/vimproc.vim', { 'do' : 'make', }
Plug 'Shougo/unite.vim'
Plug 'Shougo/unite-outline'
" Plug 'vim-scripts/vimchant'
" Plug 'rhysd/unite-oldfiles.vim'
" Plug 'chemzqm/unite-location'
" Plug 'tsukkee/unite-tag'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/denite.nvim'
Plug 'chemzqm/vim-easygit'
Plug 'chemzqm/denite-git'
Plug 'chemzqm/denite-extra'
Plug 'rafi/vim-denite-session'
Plug 'notomo/denite-autocmd'
Plug 'yyotti/denite-marks'
Plug 'notomo/denite-keymap'
Plug 'yuntan/denite-cheatsheet'
Plug 'zchee/deoplete-jedi'
" Plug 'davidhalter/jedi-vim' Autocomplete for python
Plug 'thirtythreeforty/lessspace.vim'
Plug 'chrisbra/csv.vim'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdcommenter'
Plug 'itchyny/vim-parenmatch'
Plug 'itchyny/vim-cursorword'
Plug 'pboettch/vim-cmake-syntax'
Plug 'itchyny/lightline.vim'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'jiangmiao/auto-pairs'
Plug 'mattboehm/vim-accordion'
Plug 'osyo-manga/vim-anzu'
" Plug 'rafi/awesome-vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'brettanomyces/nvim-terminus'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'rhysd/vim-gfm-syntax'
Plug 'dhruvasagar/vim-table-mode'
Plug 'iamcco/file-manager.vim'
" Programming:
" python
Plug 'python-mode/python-mode' , { 'for': 'python' }
Plug 'fisadev/vim-isort'
Plug 'w0rp/ale'
"Plug 'bps/vim-textobj-python'
Plug 'ludovicchabant/vim-gutentags'
Plug 'jvirtanen/vim-octave', { 'for': 'octave' }
Plug 'stevearc/vim-arduino', { 'for': 'arduino' }
Plug 'nvie/vim-flake8', { 'for': 'python' }
Plug 'sudar/vim-arduino-syntax', { 'for': 'arduino' }
Plug 'iyuuya/denite-ale'
Plug 'wesQ3/vim-windowswap'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'rudes/vim-java', { 'for': 'java' }
Plug 'plasticboy/vim-markdown'
" Plug 'chrisbra/NrrwRgn'
" Terminal:
Plug 'mklabs/split-term.vim'
Plug 'kassio/neoterm'
"--------------------------------------------------------------------------------------------------
"ClientServer:
" Plug 'AndrewRadev/vimrunner'
" Plug 'reedes/vim-one'
"--------------------------------------------------------------------------------------------------
" Misc:
" Neomake build tool (mapped below to <c-b>) Plug 'benekastah/neomake' xterm does not stay open
" Plug 'skywind3000/asyncrun.vim' "xterm does not stay open
"Plug 'vim-scripts/indentpython.vim'
" Plug 'tpope/vim-fugitive'
" Plug 'jreybert/vimagit'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
" Plug 'wellle/tmux-complete.vim'
" Plug 'vim-scripts/mailbrowser.vim'
" Plug 'lambdalisue/gina.vim'
" Plug 'skywind3000/asyncrun.vim>'
" Plug 'Shougo/vimshell.vim'
" Plug 'vhdirk/vim-cmake'
" Plug 'jreybert/vimagit'
" Plug 'asymotion/vim-easymotion'
" Plug 'mzlogin/vim-markdown-toc'
" Plug 'BurningEther/nvimux'
" Plug 'vifm/neovim-vifm'
" Plug 'easymotion/vim-easymotion'
" Plug 'kien/ctrlp.vim' Ctrl-P - Fuzzy file search
" Plug 'ervandew/supertab' Tab completion
" Plug 'vimscripts/modelica'
" Plug 'vim-syntastic/syntastic'
"
" defx.nvim — Dark powered file explorer
" deoppet.nvim — Dark powered snippet plugin

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
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal g`\"" |
            \ endif
augroup filetype
    autocmd BufNewFile,BufRead *Dict set filetype=c
    autocmd BufNewFile,BufRead *.mo set filetype=modelica
    autocmd BufNewFile,BufRead .spacemacs set filetype=lisp
    autocmd BufNewFile,BufRead *.in set syntax=fortran
    autocmd BufNewFile,BufRead *.data set syntax=gpyro
    "autocmd BufNewFile,BufRead *.in set syntax=dakota
    autocmd BufNewFile,BufRead *.py set filetype=python tabstop=4  softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix
    autocmd BufNewFile,BufRead *.csv set filetype=csv
    autocmd BufNewFile,BufRead *.CSV set filetype=csv
    autocmd BufNewFile,BufRead *.dat set filetype=csv
    autocmd! BufRead,BufNewFile *.m       setf octave
    autocmd! BufRead,BufNewFile *.m       set filetype=octave
    autocmd! BufRead,BufNewFile *.pvs       set filetype=tcl
    autocmd! BufRead,BufNewFile *.pvb       set filetype=tcl
    autocmd! BufRead,BufNewFile *.pvsm       set filetype=xml
    autocmd! BufRead,BufNewFile *.gnu     set filetype=gnu
    autocmd! BufRead,BufNewFile *.pde set filetype=arduino
    autocmd! BufRead,BufNewFile *.ino set filetype=arduino
    autocmd! BufRead,BufNewFile *.snip set syntax=vim
    autocmd BufRead,BufNew,BufNewFile README.md setlocal ft=markdown.gfm
    " autocmd BufEnter * if &buftype == 'terminal' | :startinsert | endif
augroup END
"deoplete? autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"deoplete? autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"deoplete? autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"deoplete? autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"deoplete? autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" in human-language files, automatically format everything at 72 chars:
" autocmd FileType mail,human set formatoptions+=t textwidth=72

" for C-like programming, have automatic indentation:
autocmd FileType c,cpp,slang set cindent

" for actual C (not C++) programming where comments have explicit end
" characters, if starting a new line in the middle of a comment automatically
" insert the comment leader characters:
autocmd FileType c set formatoptions+=ro

" for Perl programming, have things in braces indenting themselves:
autocmd FileType perl set smartindent

" for CSS, also have things in braces indented:
autocmd FileType css set smartindent


" for HTML, generally format text, but if a long line has been created leave it
" alone when editing:
autocmd FileType html set formatoptions+=tl

" for both CSS and HTML, use genuine tab characters for indentation, to make
" files a few bytes smaller:
autocmd FileType html,css set noexpandtab tabstop=2

" in makefiles, don't expand tabs to spaces, since actual tab characters are
" needed, and have indentation at 8 chars to be sure that all indents are tabs
" (despite the mappings later):
autocmd FileType make set noexpandtab shiftwidth=8
"
"
"--------------------------------------------------------------------------------------------------
" Search & Replace
"
"
"" make searches case-insensitive, unless they contain upper-case letters:
set ignorecase
set smartcase
"
"" show the `best match so far' as search strings are typed:
" set incsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
" map n  <Plug>(incsearch-nohl-n)
" map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n <Plug>(incsearch-nohl)<Plug>(anzu-n-with-echo)
map N <Plug>(incsearch-nohl)<Plug>(anzu-N-with-echo)
map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)

"--------------------------------------------------------------------------------------------------
" Statusline / Faces
"
set laststatus=2 "black status line at bottom of window

let g:lightline = {
            \ 'component_function': {
            \   'filename': 'LightLineFilename'
            \ }
            \ }
function! LightLineFilename()
    return expand('%')
endfunction

"--------------------------------------------------------------------------------------------------
" BACKUP
"
set backup
set backupdir=$HOME/.vim.backupdir/
set backupext=~
set wildmenu "menu has tab completion
set wildignore=.aux,.bak,.dvi,.gz,.idx,.log,.ps,.swp,.tar,.pdf,.rpm,.deb,.o,.e,*~

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

"" Paste Mode On/Off
map <F11> :call Paste_on_off()<CR>
set pastetoggle=<F11>
"
let paste_mode = 0 " 0 = normal, 1 = paste
"
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

:map <C-x>0 <C-w>c
:map <C-x>1 <C-w>o

:nmap ,x :call jobstart('xterm',{'detach':1}) <CR>

"..................................................................................................
" " Copy to clipboard
set clipboard+=unnamedplus
" vnoremap  <leader>y  "+y
" vnoremap  <leader>y  "*y
" "nnoremap  <leader>Y  "+yg_
" " nnoremap  <leader>Y  "*yy
" " nnoremap  <leader>yy  "+yy
"
" " " Paste from clipboard
" nnoremap <leader>p "+p
" nnoremap <leader>P "*p
" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "*p
nnoremap <leader>P "+P
nnoremap <leader>O "*P
vnoremap <leader>p "+p
vnoremap <leader>P "+P
" vnoremap <leader>p "+p
" vnoremap <leader>P "+P
"
" :inoremap <C-v> <ESC>"+pa
" :vnoremap <C-c> "+y
" :vnoremap <C-d> "+d
"
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

" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function() abort
"   return deoplete#close_popup() . "\<CR>"
" endfunction


imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
imap <C-k>     <Plug>(neosnippet_expand_or_jump)


imap <expr><TAB> pumvisible() ? "\<C-n>" : (neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>")
imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
"imap <expr><CR> pumvisible() ? deoplete#mappings#close_popup() : "\<CR>\<Plug>AutoPairsReturn"

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

nnoremap <silent> <leader>o :<C-u>Denite -buffer-name=outline -winwidth=35 unite:outline -mode=normal<cr>
" nnorema<silent> p <leader>k :<C-u>Denite -mode=normal -winwidth=35 unite:outline<cr>

nnoremap <silent> <leader>v :<C-u>Denite location_list -mode=normal -no-empty -auto-preview<CR>
nnoremap <silent> <leader>ff :<C-u>DeniteBufferDir -mode=normal -no-split -buffer-name=files   file<cr>
nnoremap <silent> <leader>fd :<C-u>DeniteBufferDir -mode=normal -no-split -buffer-name=dir directory_rec<cr>
nnoremap <silent> <leader>r :<C-u>Denite -mode=normal -no-split -buffer-name=mru     file_mru<cr>

" nnoremap <silent><leader>m :<C-u>Denite buffer<CR>
nnoremap <silent> <leader>b :<C-u>Denite -mode=normal -no-split -buffer-name=buffers buffer<cr>
nnoremap <silent> <leader>l :<C-u>Denite line -mode=insert -no-split -buffer-name=line<cr>

nnoremap <silent> <leader>a :<C-u>Denite ale -mode=normal -auto-preview<CR>
nnoremap <silent> <leader>m :<C-u>Denite marks -mode=normal<CR>
nnoremap <silent> <leader>M :<C-u>Denite menu -mode=normal<CR>
nnoremap <silent> <leader>g :<C-u>Denite -mode=normal -winwidth=35 grep<cr>

" nnoremap <silent> <leader>da :<C-u>Denite autocmd -mode=normal -auto-preview<CR>
" nnoremap <silent> <leader>dk :<C-u>Denite keymap -mode=normal<CR>
nnoremap <silent> <leader>Df :<C-u>Denite file_manager -mode=normal <CR>
" nnoremap <silent> <leader>Dc :<C-u>Denite colorscheme -mode=normal -auto-preview<CR>
nnoremap <silent> <leader>Dj :call execute('Denite -resume -select=+'.v:count1.' -immediately')<CR>
nnoremap <silent> <leader>Dk :call execute('Denite -resume -select=-'.v:count1.' -immediately')<CR>
nnoremap <silent> <leader>Dl :<C-u>Denite -mode=normal -auto-resize location_list<CR>
nnoremap <silent> <leader>Dn :<C-u>DeniteCursorWord line -mode=insert -no-split -buffer-name=line<cr>
nnoremap <silent> <leader>Do :<C-u>Denite -mode=normal -winwidth=35 outline<cr>
nnoremap <silent> <leader>Dq :<C-u>Denite -mode=normal -auto-resize quickfix<CR>
nnoremap <silent> <leader>Ds :<C-u>Denite -mode=normal -winwidth=35 session<cr>
nnoremap <silent> <leader>Dr :<C-u>Denite -resume<CR>
nnoremap <silent> <leader>Dy :<C-u>Denite -mode=normal -winwidth=35 register<cr>

nnoremap <silent> <leader>hs :<C-u>Denite history:search -mode=normal<CR>
nnoremap <silent> <leader>hc :<C-u>Denite history:cmd -mode=normal<CR>

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

" Add custom menus
let s:menus = {}

" let s:menus.zsh = {
"             \ 'description': 'Edit your import zsh configuration'
"             \ }
" let s:menus.zsh.file_candidates = [
"             \ ['zshrc', '~/.config/zsh/.zshrc'],
"             \ ['zshenv', '~/.zshenv'],
"             \ ]
"
" let s:menus.my_commands = {
"             \ 'description': 'Example commands'
"             \ }
" let s:menus.my_commands.command_candidates = [
"             \ ['Split the window', 'vnew'],
"             \ ['Open zsh menu', 'Denite menu:zsh'],
"             \ ]
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

" nnoremap <leader>gl :Denite gitlog<CR>
" nnoremap <leader>gL :Denite gitlog:all<CR>
" nnoremap <leader>gS :Denite gitstatus<CR>
" nnoremap <leader>gs :Gstatus<CR>
" nnoremap <leader>gc :Denite gitchanged<CR>
" nnoremap <leader>gb :Denite gitbranch<CR>
" nnoremap <leader>gp :Gpull
" nnoremap <leader>gP :Gpush
" nnoremap <leader>ga :Gadd
" nnoremap <leader>gc :Gcommit

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
let s:menus.VimFiler= {
            \ 'description': 'VimFiler commands'
            \ }
let s:menus.VimFiler.command_candidates = [
            \ ['Explorer 1', ':<C-u>VimFilerExplorer -sort-type=Time -status -split -simple -parent -winwidth=35 -no-quit -find'],
            \ ['Explorer 2', ':VimFilerExplorer -status -find -winwidth=80 -sort-type=Time'],
            \ ]

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

let s:menus.Bookmarks= {
            \ 'description': 'Bookmarks commands'
            \ }
let s:menus.Bookmarks.command_candidates = [
            \ ['1 /home/fbraenns', ":e /home/fbraenns"],
            \ ]

call denite#custom#var('menu', 'menus', s:menus)

"==================================================================================================
" Unite
"
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <silent><Leader>ub :Unite -silent -auto-resize -buffer-name=my-directories -default-action=vimfiler bookmark<CR>

" Use ag in unite grep source.
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts =
            \ '-i --vimgrep --hidden --ignore ' .
            \ '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
let g:unite_source_grep_recursive_opt = ''

" nmap <silent> <S-f> :Unite -no-quit grep<CR>

autocmd FileType denite call s:denite_settings()
function! s:denite_settings()
    " Play nice with supertab
    let b:SuperTabDisabled=1
    " Enable navigation with control-j and control-k in insert mode
    imap <buffer> <C-j>   <Plug>(denite_move_next_line)
    imap <buffer> <C-k>   <Plug>(denite_move_previous_line)
endfunction

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
    " Play nice with supertab
    let b:SuperTabDisabled=1
    " Enable navigation with control-j and control-k in insert mode
    imap <buffer> <C-j>   <Plug>(unite_select_next_line)
    imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction

" Use fuzzy matcher for filtering elements.
call unite#filters#matcher_default#use(['matcher_fuzzy'])

"==================================================================================================
" PYTHON
"
let python_highlight_all=1

let g:pymode_trim_whitespaces = 1
let g:pymode = 1
let g:pymode_options = 1
" setlocal complete+=t
" setlocal formatoptions-=t
" if v:version > 702 && !&relativenumber
"     setlocal number
" endif
" setlocal nowrap
" setlocal textwidth=79
" setlocal commentstring=#%s
" setlocal define=^\s*\\(def\\\\|class\\)
let g:pymode_warnings = 1
let g:pymode_options_max_line_length = 79
let g:pymode_options_colorcolumn = 1
let g:pymode_quickfix_minheight = 3
let g:pymode_quickfix_maxheight = 6
let g:pymode_indent = 1
let g:pymode_folding = 0
let g:pymode_motion = 1
let g:pymode_run_bind = '<leader>R'
let g:pymode_breakpoint_bind = '<leader>G'
let g:pymode_lint = 0
let g:pymode_lint_on_write = 0
let g:pymode_lint_unmodified = 0
let g:pymode_lint_message = 0
let g:pymode_rope_completion = 0
" let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe']
let g:pymode_lint_todo_symbol = 'WW'
let g:pymode_lint_comment_symbol = 'CC'
let g:pymode_lint_visual_symbol = 'RR'
let g:pymode_lint_error_symbol = 'EE'
let g:pymode_lint_info_symbol = 'II'
let g:pymode_lint_pyflakes_symbol = 'FF'
" let g:pymode_lint_options_pep8 =
"     \ {'max_line_length': g:pymode_options_max_line_length})
let g:pymode_rope = 0
" ================  ============================
" Key               Command
" ================  ============================
" [[                Jump to previous class or function (normal, visual, operator modes)
" ]]                Jump to next class or function  (normal, visual, operator modes)
" [M                Jump to previous class or method (normal, visual, operator modes)
" ]M                Jump to next class or method (normal, visual, operator modes)
" aC                Select a class. Ex: vaC, daC, yaC, caC (normal, operator modes)
" iC                Select inner class. Ex: viC, diC, yiC, ciC (normal, operator modes)
" aM                Select a function or method. Ex: vaM, daM, yaM, caM (normal, operator modes)
" iM                Select inner function or method. Ex: viM, diM, yiM, ciM (normal, operator modes)

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
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

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
" Anzu-Statusline
"
set statusline+=%{anzu#search_status()}
set statusline+=%F
"" Update the search status results while moving through the file
augroup anzu-update-search-status
    autocmd!
    autocmd CursorMoved *
                \ :AnzuUpdateSearchStatus|echo anzu#search_status()
augroup END
"
"

"==================================================================================================
" VimFiler

nnoremap <leader>jf :<C-u>VimFilerExplorer -sort-type=Time -status -split -simple -parent -winwidth=35 -no-quit -find<CR>
" nnoremap <leader>ff :VimFilerExplorer -status -find -winwidth=80 -sort-type=Time <CR>

map <leader>d :VimFilerBufferDir -status -sort-type=Time<CR>
map <leader>D :VimFilerBufferDir -status -sort-type=Time -split -simple -winwidth=29 -toggle -no-quit -explorer<CR><CR>
" map <space>E :VimFilerBufferDir -status -split -simple -winwidth=30 -toggle -no-quit<CR><CR>
nnoremap <F2> :VimFilerBufferDir -status -sort-type=Time -split -simple -winwidth=30 -toggle -no-quit<CR>

augroup filetype
    " open at start up: autocmd VimEnter * if !argc() | VimFiler -status | endif
    autocmd Filetype vimfiler setlocal cursorline
    autocmd FileType vimfiler nunmap <buffer> x
augroup END
"
" make vimfiler buffer behave
function! s:vimfiler_buffer_au()
    setlocal nobuflisted
    setlocal colorcolumn=
    :highlight CursorLine ctermbg=65
endfunction
autocmd FileType vimfiler call s:vimfiler_buffer_au()


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
" let g:vimfiler_ignore_pattern = '\.DS_Store\|\.pyc|\^\.*'
" let g:vimfiler_ignore_pattern = '\%(.ini\|.sys\|.bat\|.BAK\|.DAT\)$\|^\%(.git\)$'
" let g:vimfiler_ignore_pattern = '^\%(.vimrc\|\.a\*\)$'
" let g:vimfiler_ignore_pattern = '\.git\|\.DS_Store\|\.pyc'
" Default value is '^\.' (dot files pattern).

"let g:vimfiler_data_directory = $DOTVIM.'/.vimfiler'
let g:vimfiler_data_directory = '~/.vimfiler'

let g:vimfiler_execute_file_list={
            \ 'txt': 'neovim',
            \ 'vim': 'neovim',
            \ 'png': 'display',
            \ 'jpg': 'display',
            \ 'jpeg': 'display',
            \ 'tiff': 'display',
            \ 'gif': 'display',
            \ 'pdf': 'evince',
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

"To simulate |i_CTRL-R| in terminal-mode:
:tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'

" Quickly create a new terminal in a vertical split
tnoremap <Leader>% <C-\><C-n>:vsp<CR><C-w><C-w>:term<CR>
noremap <Leader>% :vsp<CR><C-w><C-w>:term<CR>
" nmap <leader>T :vs<CR>:terminal<CR>


nnoremap <F3> :Ttoggle<cr><C-w><C-w>A
inoremap <F3> <esc>:Ttoggle<cr><C-w><C-w>A
tnoremap <F3> <C-\><C-n>:Ttoggle<cr>
" tnoremap <esc> <C-\><C-n>
tnoremap <C-w><C-w> <C-\><C-n><C-w><C-w>



"==================================================================================================
" Arduino
"
let g:arduino_cmd = '/home/fbraenns/03_GA/TOOLs/Arduino/arduino-1.8.5/arduino'
let g:arduino_dir = '/home/fbraenns/03_GA/TOOLs/Arduino/arduino-1.8.5'
" Run the arduino command inside a Xvfb. Requires Xvfb to be installed and in the
" PATH. >
let g:arduino_run_headless = 1
"                                                              *'g:arduino_args'*
" Additional arguments that will be passed to the 'arduino' command during build
" and upload. See
" https://github.com/arduino/Arduino/blob/master/build/shared/manpage.adoc for
" more detail. >
let g:arduino_args = '--verbose-upload'

" The board type to use when compiling and uploading. See also
" |:ArduinoChooseBoard|. >
let g:arduino_board = 'arduino:avr:uno'

" The programmer type to use when compiling and uploading. See also
" |:ArduinoChooseProgrammer|. >
let g:arduino_programmer = 'arduino:usbtinyisp'
<
" Command used to connect to the serial port for debugging. The strings '{port}'
" and '{baud}' will be replace with the port and baud values. >
"   let g:arduino_serial_cmd = 'screen {port} {baud}'
"   let g:arduino_serial_cmd = 'picocom {port} -b {baud} -l'

" The baud rate to use for the debugging serial connection. >
"   let g:arduino_serial_baud = 9600
" Automatically set the baud rate by searching for 'Serial.begin()' >
"   let g:arduino_auto_baud = 1

" If inside a tmux session, run the serial connection command inside of this
" tmux command.  Set to '' to disable. The default will create a horizontal
" split. >
"   let g:arduino_serial_tmux = 'split-window -d'

" Connect to this serial port when uploading & debugging. This is not set by
" default. If not set, vim-arduino will attempt to guess which port to use. See
" also |:ArduinoChoosePort| >
let g:arduino_serial_port = '/dev/ttyACM0'
" let g:arduino_serial_port = '/dev/USB'
" Search these patterns to find a likely serial port to upload to. >
"   let g:arduino_serial_port_globs = ['/dev/ttyACM*',
"                                     \'/dev/ttyUSB*',
"                                     \'/dev/tty.usbmodem*',
"                                     \'/dev/tty.usbserial*']




"==================================================================================================
" TABs
" nnoremap <C-Left> :tabprevious<CR>
" nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>
let notabs = 0
nnoremap <silent> <F8> :let notabs=!notabs<Bar>:if notabs<Bar>:tabo<Bar>:else<Bar>:tab ball<Bar>:tabn<Bar>:endif<CR>
" nnoremap th  :tabfirst<CR>
" nnoremap tj  :tabnext<CR>
nnoremap gl  :tabnext<CR>
" nnoremap tk  :tabprev<CR>
nnoremap gh  :tabprev<CR>
" nnoremap tl  :tablast<CR>
" nnoremap tt  :tabedit<Space>
" nnoremap tn  :tabnext<Space>
" nnoremap tm  :tabm<Space>
" nnoremap td  :tabclose<CR>
nnoremap gd  :tabclose<CR>
" Alternatively use
"nnoremap th :tabnext<CR>
"nnoremap tl :tabprev<CR>
" nnoremap tn :tabnew<CR>
nnoremap gn :tabnew<CR>

"==================================================================================================
let g:gfm_syntax_enable_always = 0
let g:gfm_syntax_enable_filetypes = ['markdown.gfm']
let g:markdown_fenced_languages = ['cpp', 'json','python']


map <F9> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
            \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
            \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

let g:windowswap_map_keys = 0 "prevent default bindings
nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
nnoremap <silent> <leader>pw :call WindowSwap#DoWindowSwap()<CR>
nnoremap <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<CR>

"==================================================================================================
" ale
"
let g:ale_sign_error = 'E'
" let g:ale_sign_warning = '⚠'
let g:ale_sign_warning = 'W'
" let g:ale_statusline_format = ['E %d', '⚠ %d', '']
let g:ale_statusline_format = ['E %d', 'W %d', '']
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_enter = 1
" cycle through location list
" nmap <silent> <leader>an <Plug>(ale_next_wrap)
nmap <silent> <leader>at :ALEToggle<CR>

let g:ale_linters = {
            \   'elixir': [],
            \}

let g:ale_rust_cargo_use_check = 1
" }
"
"
" :hi x187_LightYellow3 ctermfg=187 guifg=#d7d7af "rgb=215,215,175
" let s:ale_running = 0
" let l:stl .= '%{s:ale_running ? "[linting]" : ""}'
" augroup ALEProgress
"     autocmd!
"     autocmd User ALELintPre  let s:ale_running = 1 | redrawstatus
"     autocmd User ALELintPost let s:ale_running = 0 | redrawstatus
" augroup end

"==================================================================================================
" TABLE
function! s:isAtStartOfLine(mapping)
    let text_before_cursor = getline('.')[0 : col('.')-1]
    let mapping_pattern = '\V' . escape(a:mapping, '\')
    let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
    return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction

inoreabbrev <expr> <bar><bar>
            \ <SID>isAtStartOfLine('\|\|') ?
            \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
            \ <SID>isAtStartOfLine('__') ?
            \ '<c-o>:silent! TableModeDisable<cr>' : '__'
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


" imap <buffer> <C-a> (denite:do_action:add)
nnoremap <leader>gl :Denite gitlog<CR>
nnoremap <leader>gL :Denite gitlog:all<CR>
nnoremap <leader>gS :Denite gitstatus<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Denite gitchanged<CR>
nnoremap <leader>gb :Denite gitbranch<CR>

" Actions of gitlog:
"
" open default action for open seleted commit.
" preview preview seleted commit.
" delete run git diff with current commit for current buffer. (just named delete)
" reset run git reset with current commit.

" Actions of git status:
"
" open open seleted file, default action
" add run git add for seleted file(s).
" delete run git diff for seleted file. (just named delete)
" reset run git reset/checkout or remove for seleted file(s).
" commit run git commit for seleted file(s).
" push

let g:easygit_enable_command = 1
" Gcd make vim cd to git root directory.
" Glcd make vim lcd to git root directory.
" Gblame Git blame current file, you can use p to preview commit and d to diff with current file.
" GcommitCurrent Git commit current file with message as command args.
" GdiffThis Side by side diff of current file with head or any ref.
" Gcommit Git commit with command line argument.
nnoremap <leader>gc :Gcommit
" Gedit Edit git reference from git show.
" Gdiff Git diff with command line argument.
" Gremove Git remove with command line argument, remove current file when arguments empty.
" Grename Rename current by git mv, file in buffer list would react the changes.
" Gmove Git mv with command line argument.
" Gcheckout Git checkout with command line argument.
nnoremap <leader>gp :Gpull
nnoremap <leader>gP :Gpush
nnoremap <leader>ga :Gadd
" Gpush Git push with arguments, dispatch when possible.
" Gpull Git pull with arguments, dispatch when possible.
" Gfetch Git fetch with arguments, dispatch when possible.
" Gadd Git add with arguments.
" Gstatus Show git status in a temporary buffer.
" Ggrep Git grep repo of current file, and show result in quickfix
" Gmerge Git merge with branch complete

:let g:session_autosave = 'no'
:let g:session_autoload = 'no'


"==================================================================================================
" FDS
"
" autocmd BufNewFile,BufRead *.fds set filetype=fds
autocmd BufNewFile,BufRead *.fds5 set syntax=fds
autocmd BufNewFile,BufRead *.fds set syntax=fds
autocmd BufNewFile,BufRead *.smv set syntax=fds
" autocmd BufNewFile,BufRead *.fds highlight FDSNumber ctermfg=119
" autocmd BufNewFile,BufRead *.fds highlight FDSInterger ctermfg=105
" " autocmd BufNewFile,BufRead *.fds highlight FDSFloat ctermfg=119
" "126
" autocmd BufNewFile,BufRead *.fds highlight String ctermfg=185
" autocmd BufNewFile,BufRead *.fds highlight instructions ctermfg=90
" autocmd BufNewFile,BufRead *.fds highlight FDS5PA ctermfg=126
" autocmd BufNewFile,BufRead *.fds highlight NAMELIST ctermfg=cyan

"==================================================================================================
" Dakota
autocmd BufNewFile,BufRead *.in set filetype=dakota
" autocmd BufNewFile,BufRead *.in highlight DAKOTAFloat ctermfg=119
" " autocmd BufNewFile,BufRead *.in highlight FDSInterger ctermfg=105
" autocmd BufNewFile,BufRead *.in highlight DAKOTANumber ctermfg=105
" autocmd BufNewFile,BufRead *.in highlight DAKOTAAlgo ctermfg=126
" autocmd BufNewFile,BufRead *.in highlight DAKOTAString ctermfg=185
" autocmd BufNewFile,BufRead *.in highlight DAKOTAImplicit ctermfg=cyan
  " HiLink DAKOTAString	   String
  " HiLink DAKOTANumber	   Constant
  " HiLink DAKOTAFloat	   Constant
  " HiLink DAKOTAComment	   Comment
  " HiLink DAKOTAImplicit	   Identifier
  " HiLink DAKOTALogical	   Statement
  " HiLink DAKOTAAlgo        PreProc
"==================================================================================================
" CSV
let g:csv_strict_columns = 1
let g:csv_highlight_column = 'y'
" nmap <leader>vh :CSVHiColum<CR>
nmap <leader>va ggVG:'<,'>CSVArrangeColumn<CR>
" nmap <leader>vma :CSVMaxCol<CR>
" nmap <leader>vmi :CSVMinCol<CR>

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

"==================================================================================================
" COLORSCHEME

set background=dark
colorscheme gruvbox
" highlight Normal ctermbg=black ctermfg=white
" set background=dark

" Plug 'morhetz/gruvbox'
" colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
"..................................................................................................
:highlight ParenMatch ctermbg=blue
:hi comment ctermfg=242
:highlight LineNr ctermfg=darkgrey
:highlight VertSplit ctermfg=darkgray ctermfg=black
:highlight Search ctermbg=gray ctermfg=black

"..................................................................................................
" Showmarks
:hi ShowMarksHLl ctermfg=red "For marks a-z
:hi ShowMarksHLu ctermfg=yellow "For marks A-Z
:hi ShowMarksHLo ctermfg=magenta "For all other marks
:hi ShowMarksHLm ctermfg=white "For multiple marks on the same line.
:hi SignColumn ctermbg=black

"..................................................................................................
" Completion
"highlight Pmenu ctermbg=8 guibg=#606060
:highlight PmenuSel ctermbg=1 guifg=#dddd00 guibg=#1f82cd
"highlight PmenuSbar ctermbg=0 guibg=#d6d6d6
"
:highlight Cursor ctermfg=red guifg=red

:highlight TermCursor ctermfg=red guifg=red

:highlight ALEWarning ctermbg=65
:highlight ALEWarningSign ctermbg=65
:highlight ALEError ctermbg=92
:highlight ALEErrorSign ctermbg=92
