"==================================================================================================
" TODO
" Vim:
"  - client/server
" Sessions:
"  - how can I use sessions --> For each topic a splitted vimfiler!?
"  - what should be my default session
" Denite:
"  - get to know other features
" Git:
"  - easier git handling
" Vimfiler:
" Terminal:
"  - how can I access the history withouth the cursor keys
" Python:
"  - get to know ale
" Complete:
"  - deoplete does this work for the terminal as well?
" Snippets:
" - modelica
" - Arduino
" - Octave?
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
Plug 'rhysd/unite-oldfiles.vim'
Plug 'chemzqm/unite-location'
Plug 'tsukkee/unite-tag'
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
Plug 'rafi/awesome-vim-colorschemes'
Plug 'brettanomyces/nvim-terminus'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'rhysd/vim-gfm-syntax'
Plug 'dhruvasagar/vim-table-mode'
Plug 'iamcco/file-manager.vim'
" Programming:
Plug 'python-mode/python-mode' , { 'for': 'python' }
Plug 'jvirtanen/vim-octave', { 'for': 'octave' }
Plug 'stevearc/vim-arduino', { 'for': 'arduino' }
Plug 'nvie/vim-flake8', { 'for': 'python' }
Plug 'sudar/vim-arduino-syntax', { 'for': 'arduino' }
Plug 'w0rp/ale'
Plug 'iyuuya/denite-ale'
Plug 'wesQ3/vim-windowswap'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'rudes/vim-java', { 'for': 'java' }
Plug 'plasticboy/vim-markdown'
Plug 'chrisbra/NrrwRgn'
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
" Plug 'davidhalter/jedi-vim' Autocomplete for python
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
:highlight ParenMatch ctermbg=blue

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
    autocmd BufNewFile,BufRead *.in set syntax=fortran
    autocmd BufNewFile,BufRead *.data set syntax=gpyro
    autocmd BufNewFile,BufRead *.in set syntax=dakota
    autocmd BufNewFile,BufRead *.fds set syntax=fds
    autocmd BufNewFile,BufRead *.fds5 set syntax=fds
    autocmd BufNewFile,BufRead *.smv set syntax=fds
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
" Highlighting
"..................................................................................................
set background=light
:hi comment ctermfg=242
:highlight LineNr ctermfg=darkgrey
:highlight VertSplit ctermfg=darkgray ctermfg=black

"..................................................................................................
" Showmarks
:hi ShowMarksHLl ctermfg=red "For marks a-z
:hi ShowMarksHLu ctermfg=yellow "For marks A-Z
:hi ShowMarksHLo ctermfg=magenta "For all other marks
:hi ShowMarksHLm ctermfg=white "For multiple marks on the same line.
:hi SignColumn ctermbg=black

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
:nnoremap <leader>ed :e ~/.config/nvim/init.vim<CR>
:nnoremap <leader>er :source ~/.config/nvim/init.vim<CR>
:nnoremap <leader>ef :e ~/.nvim/ftplugin/<CR>

"" Paste Mode On/Off
" map <F11> :call Paste_on_off()<CR>
" set pastetoggle=<F11>
" "
" let paste_mode = 0 " 0 = normal, 1 = paste
"
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

"highlight Pmenu ctermbg=8 guibg=#606060
highlight PmenuSel ctermbg=1 guifg=#dddd00 guibg=#1f82cd
"highlight PmenuSbar ctermbg=0 guibg=#d6d6d6

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
nnoremap <silent> <leader>dc :<C-u>Denite colorscheme -mode=normal -auto-preview<CR>

nnoremap <silent> <leader>o :<C-u>Denite -buffer-name=outline -winwidth=35 unite:outline -mode=normal<cr>
nnoremap <silent> <leader>O :<C-u>Denite -mode=normal -winwidth=35 outline<cr>
" nnorema<silent> p <leader>k :<C-u>Denite -mode=normal -winwidth=35 unite:outline<cr>
nnoremap <silent> <leader>gr :<C-u>Denite -mode=normal -winwidth=35 grep<cr>
nnoremap <silent> <leader>y :<C-u>Denite -mode=normal -winwidth=35 register<cr>

nnoremap <silent> <leader>f :<C-u>DeniteBufferDir -mode=normal -no-split -buffer-name=files   file<cr>
nnoremap <silent> <leader>r :<C-u>Denite -mode=normal -no-split -buffer-name=mru     file_mru<cr>
" nnoremap <silent><leader>m :<C-u>Denite buffer<CR>
nnoremap <silent> <leader>b :<C-u>Denite -mode=normal -no-split -buffer-name=buffers buffer<cr>
nnoremap <silent> <leader>L :<C-u>Denite location_list -mode=normal -no-empty -auto-preview<CR>
nnoremap <silent> <leader>n :<C-u>Denite line -mode=insert -no-split -buffer-name=line<cr>
nnoremap <silent> <leader>N :<C-u>DeniteCursorWord line -mode=insert -no-split -buffer-name=line<cr>

nnoremap <silent> <leader>j  :call execute('Denite -resume -select=+'.v:count1.' -immediately')<CR>
nnoremap <silent> <leader>k  :call execute('Denite -resume -select=-'.v:count1.' -immediately')<CR>

nnoremap <silent> <leader>hs :<C-u>Denite history:search -mode=normal<CR>
nnoremap <silent> <leader>hc :<C-u>Denite history:cmd -mode=normal<CR>
nnoremap <silent> <leader>ss :<C-u>Denite -mode=normal -winwidth=35 session<cr>
nnoremap <silent> <leader>dq  :<C-u>Denite -mode=normal -auto-resize quickfix<CR>
nnoremap <silent> <leader>dr  :<C-u>Denite -resume<CR>
nnoremap <silent> <leader>da :<C-u>Denite autocmd -mode=normal -auto-preview<CR>
nnoremap <silent> <leader>dm :<C-u>Denite marks -mode=normal<CR>
nnoremap <silent> <leader>dk :<C-u>Denite keymap -mode=normal<CR>
nnoremap <silent> <leader>df :<C-u>Denite file_manager -mode=normal <CR>
nnoremap <silent> <leader>da :<C-u>Denite ale -mode=normal -auto-preview<CR>
" nnoremap <silent> <space>l  :<C-u>Denite -mode=normal -auto-resize location_list<CR>

" Ag command on grep source
call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'default_opts',
            \ ['-i', '--vimgrep'])
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

let s:menus.zsh = {
            \ 'description': 'Edit your import zsh configuration'
            \ }
let s:menus.zsh.file_candidates = [
            \ ['zshrc', '~/.config/zsh/.zshrc'],
            \ ['zshenv', '~/.zshenv'],
            \ ]

let s:menus.my_commands = {
            \ 'description': 'Example commands'
            \ }
let s:menus.my_commands.command_candidates = [
            \ ['Split the window', 'vnew'],
            \ ['Open zsh menu', 'Denite menu:zsh'],
            \ ]

call denite#custom#var('menu', 'menus', s:menus)

"==================================================================================================
" Unite
"
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <silent><Leader>m :Unite -silent -auto-resize -buffer-name=my-directories -default-action=vimfiler bookmark<CR>

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
" let g:pymode_lint_todo_symbol = 'WW'
" let g:pymode_lint_comment_symbol = 'CC'
" let g:pymode_lint_visual_symbol = 'RR'
" let g:pymode_lint_error_symbol = 'EE'
" let g:pymode_lint_info_symbol = 'II'
" let g:pymode_lint_pyflakes_symbol = 'FF'
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

nnoremap <Leader>jf :<C-u>VimFilerExplorer -sort-type=Time -status -split -simple -parent -winwidth=35 -no-quit -find<CR>
nnoremap <Leader>ff :VimFilerExplorer -status -find -winwidth=80 -sort-type=Time <CR>

map <space>d :VimFilerBufferDir -status -sort-type=Time<CR>
map <space>D :VimFilerBufferDir -status -sort-type=Time -split -simple -winwidth=30 -toggle -no-quit -explorer<CR><CR>
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

highlight TermCursor ctermfg=red guifg=red


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
:highlight ALEWarning ctermbg=65
:highlight ALEWarningSign ctermbg=65
:highlight ALEError ctermbg=92
:highlight ALEErrorSign ctermbg=92
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

highlight Cursor ctermfg=red guifg=red

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
hi x016_Grey0 ctermfg=16 guifg=#000000 "rgb=0,0,0
hi x017_NavyBlue ctermfg=17 guifg=#00005f "rgb=0,0,95
hi x018_DarkBlue ctermfg=18 guifg=#000087 "rgb=0,0,135
hi x019_Blue3 ctermfg=19 guifg=#0000af "rgb=0,0,175
hi x020_Blue3 ctermfg=20 guifg=#0000d7 "rgb=0,0,215
hi x021_Blue1 ctermfg=21 guifg=#0000ff "rgb=0,0,255
hi x022_DarkGreen ctermfg=22 guifg=#005f00 "rgb=0,95,0
hi x023_DeepSkyBlue4 ctermfg=23 guifg=#005f5f "rgb=0,95,95
hi x024_DeepSkyBlue4 ctermfg=24 guifg=#005f87 "rgb=0,95,135
hi x025_DeepSkyBlue4 ctermfg=25 guifg=#005faf "rgb=0,95,175
hi x026_DodgerBlue3 ctermfg=26 guifg=#005fd7 "rgb=0,95,215
hi x027_DodgerBlue2 ctermfg=27 guifg=#005fff "rgb=0,95,255
hi x028_Green4 ctermfg=28 guifg=#008700 "rgb=0,135,0
hi x029_SpringGreen4 ctermfg=29 guifg=#00875f "rgb=0,135,95
hi x030_Turquoise4 ctermfg=30 guifg=#008787 "rgb=0,135,135
hi x031_DeepSkyBlue3 ctermfg=31 guifg=#0087af "rgb=0,135,175
hi x032_DeepSkyBlue3 ctermfg=32 guifg=#0087d7 "rgb=0,135,215
hi x033_DodgerBlue1 ctermfg=33 guifg=#0087ff "rgb=0,135,255
hi x034_Green3 ctermfg=34 guifg=#00af00 "rgb=0,175,0
hi x035_SpringGreen3 ctermfg=35 guifg=#00af5f "rgb=0,175,95
hi x036_DarkCyan ctermfg=36 guifg=#00af87 "rgb=0,175,135
hi x037_LightSeaGreen ctermfg=37 guifg=#00afaf "rgb=0,175,175
hi x038_DeepSkyBlue2 ctermfg=38 guifg=#00afd7 "rgb=0,175,215
hi x039_DeepSkyBlue1 ctermfg=39 guifg=#00afff "rgb=0,175,255
hi x040_Green3 ctermfg=40 guifg=#00d700 "rgb=0,215,0
hi x041_SpringGreen3 ctermfg=41 guifg=#00d75f "rgb=0,215,95
hi x042_SpringGreen2 ctermfg=42 guifg=#00d787 "rgb=0,215,135
hi x043_Cyan3 ctermfg=43 guifg=#00d7af "rgb=0,215,175
hi x044_DarkTurquoise ctermfg=44 guifg=#00d7d7 "rgb=0,215,215
hi x045_Turquoise2 ctermfg=45 guifg=#00d7ff "rgb=0,215,255
hi x046_Green1 ctermfg=46 guifg=#00ff00 "rgb=0,255,0
hi x047_SpringGreen2 ctermfg=47 guifg=#00ff5f "rgb=0,255,95
hi x048_SpringGreen1 ctermfg=48 guifg=#00ff87 "rgb=0,255,135
hi x049_MediumSpringGreen ctermfg=49 guifg=#00ffaf "rgb=0,255,175
hi x050_Cyan2 ctermfg=50 guifg=#00ffd7 "rgb=0,255,215
hi x051_Cyan1 ctermfg=51 guifg=#00ffff "rgb=0,255,255
hi x052_DarkRed ctermfg=52 guifg=#5f0000 "rgb=95,0,0
hi x053_DeepPink4 ctermfg=53 guifg=#5f005f "rgb=95,0,95
hi x054_Purple4 ctermfg=54 guifg=#5f0087 "rgb=95,0,135
hi x055_Purple4 ctermfg=55 guifg=#5f00af "rgb=95,0,175
hi x056_Purple3 ctermfg=56 guifg=#5f00d7 "rgb=95,0,215
hi x057_BlueViolet ctermfg=57 guifg=#5f00ff "rgb=95,0,255
hi x058_Orange4 ctermfg=58 guifg=#5f5f00 "rgb=95,95,0
hi x059_Grey37 ctermfg=59 guifg=#5f5f5f "rgb=95,95,95
hi x060_MediumPurple4 ctermfg=60 guifg=#5f5f87 "rgb=95,95,135
hi x061_SlateBlue3 ctermfg=61 guifg=#5f5faf "rgb=95,95,175
hi x062_SlateBlue3 ctermfg=62 guifg=#5f5fd7 "rgb=95,95,215
hi x063_RoyalBlue1 ctermfg=63 guifg=#5f5fff "rgb=95,95,255
hi x064_Chartreuse4 ctermfg=64 guifg=#5f8700 "rgb=95,135,0
hi x065_DarkSeaGreen4 ctermfg=65 guifg=#5f875f "rgb=95,135,95
hi x066_PaleTurquoise4 ctermfg=66 guifg=#5f8787 "rgb=95,135,135
hi x067_SteelBlue ctermfg=67 guifg=#5f87af "rgb=95,135,175
hi x068_SteelBlue3 ctermfg=68 guifg=#5f87d7 "rgb=95,135,215
hi x069_CornflowerBlue ctermfg=69 guifg=#5f87ff "rgb=95,135,255
hi x070_Chartreuse3 ctermfg=70 guifg=#5faf00 "rgb=95,175,0
hi x071_DarkSeaGreen4 ctermfg=71 guifg=#5faf5f "rgb=95,175,95
hi x072_CadetBlue ctermfg=72 guifg=#5faf87 "rgb=95,175,135
hi x073_CadetBlue ctermfg=73 guifg=#5fafaf "rgb=95,175,175
hi x074_SkyBlue3 ctermfg=74 guifg=#5fafd7 "rgb=95,175,215
hi x075_SteelBlue1 ctermfg=75 guifg=#5fafff "rgb=95,175,255
hi x076_Chartreuse3 ctermfg=76 guifg=#5fd700 "rgb=95,215,0
hi x077_PaleGreen3 ctermfg=77 guifg=#5fd75f "rgb=95,215,95
hi x078_SeaGreen3 ctermfg=78 guifg=#5fd787 "rgb=95,215,135
hi x079_Aquamarine3 ctermfg=79 guifg=#5fd7af "rgb=95,215,175
hi x080_MediumTurquoise ctermfg=80 guifg=#5fd7d7 "rgb=95,215,215
hi x081_SteelBlue1 ctermfg=81 guifg=#5fd7ff "rgb=95,215,255
hi x082_Chartreuse2 ctermfg=82 guifg=#5fff00 "rgb=95,255,0
hi x083_SeaGreen2 ctermfg=83 guifg=#5fff5f "rgb=95,255,95
hi x084_SeaGreen1 ctermfg=84 guifg=#5fff87 "rgb=95,255,135
hi x085_SeaGreen1 ctermfg=85 guifg=#5fffaf "rgb=95,255,175
hi x086_Aquamarine1 ctermfg=86 guifg=#5fffd7 "rgb=95,255,215
hi x087_DarkSlateGray2 ctermfg=87 guifg=#5fffff "rgb=95,255,255
hi x088_DarkRed ctermfg=88 guifg=#870000 "rgb=135,0,0
hi x089_DeepPink4 ctermfg=89 guifg=#87005f "rgb=135,0,95
hi x090_DarkMagenta ctermfg=90 guifg=#870087 "rgb=135,0,135
hi x091_DarkMagenta ctermfg=91 guifg=#8700af "rgb=135,0,175
hi x092_DarkViolet ctermfg=92 guifg=#8700d7 "rgb=135,0,215
hi x093_Purple ctermfg=93 guifg=#8700ff "rgb=135,0,255
hi x094_Orange4 ctermfg=94 guifg=#875f00 "rgb=135,95,0
hi x095_LightPink4 ctermfg=95 guifg=#875f5f "rgb=135,95,95
hi x096_Plum4 ctermfg=96 guifg=#875f87 "rgb=135,95,135
hi x097_MediumPurple3 ctermfg=97 guifg=#875faf "rgb=135,95,175
hi x098_MediumPurple3 ctermfg=98 guifg=#875fd7 "rgb=135,95,215
hi x099_SlateBlue1 ctermfg=99 guifg=#875fff "rgb=135,95,255
hi x100_Yellow4 ctermfg=100 guifg=#878700 "rgb=135,135,0
hi x101_Wheat4 ctermfg=101 guifg=#87875f "rgb=135,135,95
hi x102_Grey53 ctermfg=102 guifg=#878787 "rgb=135,135,135
hi x103_LightSlateGrey ctermfg=103 guifg=#8787af "rgb=135,135,175
hi x104_MediumPurple ctermfg=104 guifg=#8787d7 "rgb=135,135,215
hi x105_LightSlateBlue ctermfg=105 guifg=#8787ff "rgb=135,135,255
hi x106_Yellow4 ctermfg=106 guifg=#87af00 "rgb=135,175,0
hi x107_DarkOliveGreen3 ctermfg=107 guifg=#87af5f "rgb=135,175,95
hi x108_DarkSeaGreen ctermfg=108 guifg=#87af87 "rgb=135,175,135
hi x109_LightSkyBlue3 ctermfg=109 guifg=#87afaf "rgb=135,175,175
hi x110_LightSkyBlue3 ctermfg=110 guifg=#87afd7 "rgb=135,175,215
hi x111_SkyBlue2 ctermfg=111 guifg=#87afff "rgb=135,175,255
hi x112_Chartreuse2 ctermfg=112 guifg=#87d700 "rgb=135,215,0
hi x113_DarkOliveGreen3 ctermfg=113 guifg=#87d75f "rgb=135,215,95
hi x114_PaleGreen3 ctermfg=114 guifg=#87d787 "rgb=135,215,135
hi x115_DarkSeaGreen3 ctermfg=115 guifg=#87d7af "rgb=135,215,175
hi x116_DarkSlateGray3 ctermfg=116 guifg=#87d7d7 "rgb=135,215,215
hi x117_SkyBlue1 ctermfg=117 guifg=#87d7ff "rgb=135,215,255
hi x118_Chartreuse1 ctermfg=118 guifg=#87ff00 "rgb=135,255,0
hi x119_LightGreen ctermfg=119 guifg=#87ff5f "rgb=135,255,95
hi x120_LightGreen ctermfg=120 guifg=#87ff87 "rgb=135,255,135
hi x121_PaleGreen1 ctermfg=121 guifg=#87ffaf "rgb=135,255,175
hi x122_Aquamarine1 ctermfg=122 guifg=#87ffd7 "rgb=135,255,215
hi x123_DarkSlateGray1 ctermfg=123 guifg=#87ffff "rgb=135,255,255
hi x124_Red3 ctermfg=124 guifg=#af0000 "rgb=175,0,0
hi x125_DeepPink4 ctermfg=125 guifg=#af005f "rgb=175,0,95
hi x126_MediumVioletRed ctermfg=126 guifg=#af0087 "rgb=175,0,135
hi x127_Magenta3 ctermfg=127 guifg=#af00af "rgb=175,0,175
hi x128_DarkViolet ctermfg=128 guifg=#af00d7 "rgb=175,0,215
hi x129_Purple ctermfg=129 guifg=#af00ff "rgb=175,0,255
hi x130_DarkOrange3 ctermfg=130 guifg=#af5f00 "rgb=175,95,0
hi x131_IndianRed ctermfg=131 guifg=#af5f5f "rgb=175,95,95
hi x132_HotPink3 ctermfg=132 guifg=#af5f87 "rgb=175,95,135
hi x133_MediumOrchid3 ctermfg=133 guifg=#af5faf "rgb=175,95,175
hi x134_MediumOrchid ctermfg=134 guifg=#af5fd7 "rgb=175,95,215
hi x135_MediumPurple2 ctermfg=135 guifg=#af5fff "rgb=175,95,255
hi x136_DarkGoldenrod ctermfg=136 guifg=#af8700 "rgb=175,135,0
hi x137_LightSalmon3 ctermfg=137 guifg=#af875f "rgb=175,135,95
hi x138_RosyBrown ctermfg=138 guifg=#af8787 "rgb=175,135,135
hi x139_Grey63 ctermfg=139 guifg=#af87af "rgb=175,135,175
hi x140_MediumPurple2 ctermfg=140 guifg=#af87d7 "rgb=175,135,215
hi x141_MediumPurple1 ctermfg=141 guifg=#af87ff "rgb=175,135,255
hi x142_Gold3 ctermfg=142 guifg=#afaf00 "rgb=175,175,0
hi x143_DarkKhaki ctermfg=143 guifg=#afaf5f "rgb=175,175,95
hi x144_NavajoWhite3 ctermfg=144 guifg=#afaf87 "rgb=175,175,135
hi x145_Grey69 ctermfg=145 guifg=#afafaf "rgb=175,175,175
hi x146_LightSteelBlue3 ctermfg=146 guifg=#afafd7 "rgb=175,175,215
hi x147_LightSteelBlue ctermfg=147 guifg=#afafff "rgb=175,175,255
hi x148_Yellow3 ctermfg=148 guifg=#afd700 "rgb=175,215,0
hi x149_DarkOliveGreen3 ctermfg=149 guifg=#afd75f "rgb=175,215,95
hi x150_DarkSeaGreen3 ctermfg=150 guifg=#afd787 "rgb=175,215,135
hi x151_DarkSeaGreen2 ctermfg=151 guifg=#afd7af "rgb=175,215,175
hi x152_LightCyan3 ctermfg=152 guifg=#afd7d7 "rgb=175,215,215
hi x153_LightSkyBlue1 ctermfg=153 guifg=#afd7ff "rgb=175,215,255
hi x154_GreenYellow ctermfg=154 guifg=#afff00 "rgb=175,255,0
hi x155_DarkOliveGreen2 ctermfg=155 guifg=#afff5f "rgb=175,255,95
hi x156_PaleGreen1 ctermfg=156 guifg=#afff87 "rgb=175,255,135
hi x157_DarkSeaGreen2 ctermfg=157 guifg=#afffaf "rgb=175,255,175
hi x158_DarkSeaGreen1 ctermfg=158 guifg=#afffd7 "rgb=175,255,215
hi x159_PaleTurquoise1 ctermfg=159 guifg=#afffff "rgb=175,255,255
hi x160_Red3 ctermfg=160 guifg=#d70000 "rgb=215,0,0
hi x161_DeepPink3 ctermfg=161 guifg=#d7005f "rgb=215,0,95
hi x162_DeepPink3 ctermfg=162 guifg=#d70087 "rgb=215,0,135
hi x163_Magenta3 ctermfg=163 guifg=#d700af "rgb=215,0,175
hi x164_Magenta3 ctermfg=164 guifg=#d700d7 "rgb=215,0,215
hi x165_Magenta2 ctermfg=165 guifg=#d700ff "rgb=215,0,255
hi x166_DarkOrange3 ctermfg=166 guifg=#d75f00 "rgb=215,95,0
hi x167_IndianRed ctermfg=167 guifg=#d75f5f "rgb=215,95,95
hi x168_HotPink3 ctermfg=168 guifg=#d75f87 "rgb=215,95,135
hi x169_HotPink2 ctermfg=169 guifg=#d75faf "rgb=215,95,175
hi x170_Orchid ctermfg=170 guifg=#d75fd7 "rgb=215,95,215
hi x171_MediumOrchid1 ctermfg=171 guifg=#d75fff "rgb=215,95,255
hi x172_Orange3 ctermfg=172 guifg=#d78700 "rgb=215,135,0
hi x173_LightSalmon3 ctermfg=173 guifg=#d7875f "rgb=215,135,95
hi x174_LightPink3 ctermfg=174 guifg=#d78787 "rgb=215,135,135
hi x175_Pink3 ctermfg=175 guifg=#d787af "rgb=215,135,175
hi x176_Plum3 ctermfg=176 guifg=#d787d7 "rgb=215,135,215
hi x177_Violet ctermfg=177 guifg=#d787ff "rgb=215,135,255
hi x178_Gold3 ctermfg=178 guifg=#d7af00 "rgb=215,175,0
hi x179_LightGoldenrod3 ctermfg=179 guifg=#d7af5f "rgb=215,175,95
hi x180_Tan ctermfg=180 guifg=#d7af87 "rgb=215,175,135
hi x181_MistyRose3 ctermfg=181 guifg=#d7afaf "rgb=215,175,175
hi x182_Thistle3 ctermfg=182 guifg=#d7afd7 "rgb=215,175,215
hi x183_Plum2 ctermfg=183 guifg=#d7afff "rgb=215,175,255
hi x184_Yellow3 ctermfg=184 guifg=#d7d700 "rgb=215,215,0
hi x185_Khaki3 ctermfg=185 guifg=#d7d75f "rgb=215,215,95
hi x186_LightGoldenrod2 ctermfg=186 guifg=#d7d787 "rgb=215,215,135
hi x187_LightYellow3 ctermfg=187 guifg=#d7d7af "rgb=215,215,175
hi x188_Grey84 ctermfg=188 guifg=#d7d7d7 "rgb=215,215,215
hi x189_LightSteelBlue1 ctermfg=189 guifg=#d7d7ff "rgb=215,215,255
hi x190_Yellow2 ctermfg=190 guifg=#d7ff00 "rgb=215,255,0
hi x191_DarkOliveGreen1 ctermfg=191 guifg=#d7ff5f "rgb=215,255,95
hi x192_DarkOliveGreen1 ctermfg=192 guifg=#d7ff87 "rgb=215,255,135
hi x193_DarkSeaGreen1 ctermfg=193 guifg=#d7ffaf "rgb=215,255,175
hi x194_Honeydew2 ctermfg=194 guifg=#d7ffd7 "rgb=215,255,215
hi x195_LightCyan1 ctermfg=195 guifg=#d7ffff "rgb=215,255,255
hi x196_Red1 ctermfg=196 guifg=#ff0000 "rgb=255,0,0
hi x197_DeepPink2 ctermfg=197 guifg=#ff005f "rgb=255,0,95
hi x198_DeepPink1 ctermfg=198 guifg=#ff0087 "rgb=255,0,135
hi x199_DeepPink1 ctermfg=199 guifg=#ff00af "rgb=255,0,175
hi x200_Magenta2 ctermfg=200 guifg=#ff00d7 "rgb=255,0,215
hi x201_Magenta1 ctermfg=201 guifg=#ff00ff "rgb=255,0,255
hi x202_OrangeRed1 ctermfg=202 guifg=#ff5f00 "rgb=255,95,0
hi x203_IndianRed1 ctermfg=203 guifg=#ff5f5f "rgb=255,95,95
hi x204_IndianRed1 ctermfg=204 guifg=#ff5f87 "rgb=255,95,135
hi x205_HotPink ctermfg=205 guifg=#ff5faf "rgb=255,95,175
hi x206_HotPink ctermfg=206 guifg=#ff5fd7 "rgb=255,95,215
hi x207_MediumOrchid1 ctermfg=207 guifg=#ff5fff "rgb=255,95,255
hi x208_DarkOrange ctermfg=208 guifg=#ff8700 "rgb=255,135,0
hi x209_Salmon1 ctermfg=209 guifg=#ff875f "rgb=255,135,95
hi x210_LightCoral ctermfg=210 guifg=#ff8787 "rgb=255,135,135
hi x211_PaleVioletRed1 ctermfg=211 guifg=#ff87af "rgb=255,135,175
hi x212_Orchid2 ctermfg=212 guifg=#ff87d7 "rgb=255,135,215
hi x213_Orchid1 ctermfg=213 guifg=#ff87ff "rgb=255,135,255
hi x214_Orange1 ctermfg=214 guifg=#ffaf00 "rgb=255,175,0
hi x215_SandyBrown ctermfg=215 guifg=#ffaf5f "rgb=255,175,95
hi x216_LightSalmon1 ctermfg=216 guifg=#ffaf87 "rgb=255,175,135
hi x217_LightPink1 ctermfg=217 guifg=#ffafaf "rgb=255,175,175
hi x218_Pink1 ctermfg=218 guifg=#ffafd7 "rgb=255,175,215
hi x219_Plum1 ctermfg=219 guifg=#ffafff "rgb=255,175,255
hi x220_Gold1 ctermfg=220 guifg=#ffd700 "rgb=255,215,0
hi x221_LightGoldenrod2 ctermfg=221 guifg=#ffd75f "rgb=255,215,95
hi x222_LightGoldenrod2 ctermfg=222 guifg=#ffd787 "rgb=255,215,135
hi x223_NavajoWhite1 ctermfg=223 guifg=#ffd7af "rgb=255,215,175
hi x224_MistyRose1 ctermfg=224 guifg=#ffd7d7 "rgb=255,215,215
hi x225_Thistle1 ctermfg=225 guifg=#ffd7ff "rgb=255,215,255
hi x226_Yellow1 ctermfg=226 guifg=#ffff00 "rgb=255,255,0
hi x227_LightGoldenrod1 ctermfg=227 guifg=#ffff5f "rgb=255,255,95
hi x228_Khaki1 ctermfg=228 guifg=#ffff87 "rgb=255,255,135
hi x229_Wheat1 ctermfg=229 guifg=#ffffaf "rgb=255,255,175
hi x230_Cornsilk1 ctermfg=230 guifg=#ffffd7 "rgb=255,255,215
hi x231_Grey100 ctermfg=231 guifg=#ffffff "rgb=255,255,255
hi x232_Grey3 ctermfg=232 guifg=#080808 "rgb=8,8,8
hi x233_Grey7 ctermfg=233 guifg=#121212 "rgb=18,18,18
hi x234_Grey11 ctermfg=234 guifg=#1c1c1c "rgb=28,28,28
hi x235_Grey15 ctermfg=235 guifg=#262626 "rgb=38,38,38
hi x236_Grey19 ctermfg=236 guifg=#303030 "rgb=48,48,48
hi x237_Grey23 ctermfg=237 guifg=#3a3a3a "rgb=58,58,58
hi x238_Grey27 ctermfg=238 guifg=#444444 "rgb=68,68,68
hi x239_Grey30 ctermfg=239 guifg=#4e4e4e "rgb=78,78,78
hi x240_Grey35 ctermfg=240 guifg=#585858 "rgb=88,88,88
hi x241_Grey39 ctermfg=241 guifg=#626262 "rgb=98,98,98
hi x242_Grey42 ctermfg=242 guifg=#6c6c6c "rgb=108,108,108
hi x243_Grey46 ctermfg=243 guifg=#767676 "rgb=118,118,118
hi x244_Grey50 ctermfg=244 guifg=#808080 "rgb=128,128,128
hi x245_Grey54 ctermfg=245 guifg=#8a8a8a "rgb=138,138,138
hi x246_Grey58 ctermfg=246 guifg=#949494 "rgb=148,148,148
hi x247_Grey62 ctermfg=247 guifg=#9e9e9e "rgb=158,158,158
hi x248_Grey66 ctermfg=248 guifg=#a8a8a8 "rgb=168,168,168
hi x249_Grey70 ctermfg=249 guifg=#b2b2b2 "rgb=178,178,178
hi x250_Grey74 ctermfg=250 guifg=#bcbcbc "rgb=188,188,188
hi x251_Grey78 ctermfg=251 guifg=#c6c6c6 "rgb=198,198,198
hi x252_Grey82 ctermfg=252 guifg=#d0d0d0 "rgb=208,208,208
hi x253_Grey85 ctermfg=253 guifg=#dadada "rgb=218,218,218
hi x254_Grey89 ctermfg=254 guifg=#e4e4e4 "rgb=228,228,228
hi x255_Grey93 ctermfg=255 guifg=#eeeeee "rgb=238,238,238


