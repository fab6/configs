"==================================================================================================
" TODO
" Vim:
"  - asyncrun of xterm
"  - switch global directory
"  - client/server
" Vimfiler:
"  - multiple vimfiler at once for quick comparison; not only two
"  - bookmarks
" Terminal:
"  - wie kann ich ohne Cursor Pfeile in History navigieren
" Python:
"  - ale ansehen
" Complete:
"  - deoplete auch fuers Terminal!?
" Snippets:
" - modelica
" - Arduino
" - Octave?
" - Python --> H2O, Keras, DataAnalysis
"
" Fzf:
" - hangs with neovim (appimage)
"
" Git:
" - which plugin? --> push!?
"
"==================================================================================================
set runtimepath+=/home/fbraenns/.nvim/
"--------------------------------------------------------------------------------------------------
" Specify a directory for plugins
"
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
Plug 'zchee/deoplete-jedi'
Plug 'thirtythreeforty/lessspace.vim'
Plug 'chrisbra/csv.vim'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdcommenter'
Plug 'itchyny/vim-parenmatch'
Plug 'itchyny/vim-cursorword'
Plug 'pboettch/vim-cmake-syntax'
Plug 'itchyny/lightline.vim'
" Neomake build tool (mapped below to <c-b>) Plug 'benekastah/neomake' xterm does not stay open
" Plug 'skywind3000/asyncrun.vim' "xterm does not stay open
"Plug 'vim-scripts/indentpython.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'mattboehm/vim-accordion'
Plug 'osyo-manga/vim-anzu'
Plug 'jreybert/vimagit'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'brettanomyces/nvim-terminus'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'rhysd/vim-gfm-syntax'
" Programming:
Plug 'python-mode/python-mode'
Plug 'jvirtanen/vim-octave'
Plug 'stevearc/vim-arduino'
Plug 'nvie/vim-flake8'
Plug 'sudar/vim-arduino-syntax'
Plug 'w0rp/ale'
Plug 'wesQ3/vim-windowswap'
Plug 'chrisbra/NrrwRgn'
Plug 'pangloss/vim-javascript'
Plug 'rudes/vim-java'
" Terminal:
Plug 'mklabs/split-term.vim'
Plug 'kassio/neoterm'
"--------------------------------------------------------------------------------------------------
"ClientServer:
" Plug 'AndrewRadev/vimrunner'
" Plug 'reedes/vim-one'
"--------------------------------------------------------------------------------------------------
" Misc:
" Plug 'wellle/tmux-complete.vim'
" Plug 'vim-scripts/mailbrowser.vim'
" Plug 'lambdalisue/gina.vim'
" Plug 'skywind3000/asyncrun.vim>'
" Plug 'Shougo/vimshell.vim'
" Plug 'vhdirk/vim-cmake'
Plug 'Shougo/denite.nvim'
Plug 'chemzqm/vim-easygit'
Plug 'chemzqm/denite-git'
Plug 'chemzqm/denite-extra'
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
"--------------------------------------------------------------------------------------------------
" General
set encoding=utf-8


"
"" this makes the mouse paste a block of text without formatting it
:map <MouseMiddle> <esc>"*p
"
"
set number
"" .vimrc
set ut=100

"--------------------------------------------------------------------------------------------------
" Terminal Settings
"
"" `XTerm', `RXVT', `Gnome Terminal', and `Konsole' all claim to be "xterm";
"" `KVT' claims to be "xterm-color":
if &term =~ 'xterm'
endif
"
"
"--------------------------------------------------------------------------------------------------
" User Interface
"

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
"
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
"
"" Which values are written into viminfo
"" :help viminfo«
"set viminfo='20,"\50
"
"" Error ...
set novisualbell
"
"" Shut down the visual bell of terminal
set t_vb=
"" when using list, keep tabs at their full width and display `arrows': execute 'set listchars+=tab:' . nr2char(187) . nr2char(183)
"" (Character 187 is a right double-chevron, and 183 a mid-dot.)
"
"
"" mouse settings
"":set mouse=a " mouse support in all modes
:set mousehide " hide the mouse when typing text
"
"
"
"" don't have files trying to override this .vimrc:
set nomodeline
"
"
"--------------------------------------------------------------------------------------------------
" Text Formatting -- General
"
"" don't make it look like there are line breaks where there aren't:
set nowrap
"
"" use indents of 2 spaces, and have them copied down lines:
set shiftwidth=4
set shiftround
set expandtab
set autoindent
"
"
"" normally don't automatically format `text' as it is typed, IE only do this
"" with comments, at 79 characters:
""set formatoptions-=t
set textwidth=72

"--------------------------------------------------------------------------------------------------
" File detection
"
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal g`\"" |
            \ endif
augroup filetype
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
:hi comment ctermfg=darkgreen
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

let mapleader="\<SPACE>"

"" have the h and l cursor keys wrap between lines (like <Space> and <BkSpc> do
"" by default), and ~ covert case over line breaks; also have the cursor keys
"" wrap in insert mode:
set whichwrap=h,l,~,[,]
"
"
"" use <Ctrl>+N/<Ctrl>+P to cycle through files:
""nnoremap <C-N> :next<CR>
""nnoremap <C-P> :prev<CR>
"" [<Ctrl>+N by default is like j, and <Ctrl>+P like k.]
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
" cnoremap <M-b> <S-Left>
" cnoremap <M-f> <S-Right>
"
:nnoremap <leader>ed :e ~/.config/nvim/init.vim<CR>
:nnoremap <leader>er :source ~/.config/nvim/init.vim<CR>
:nnoremap <leader>ef :e ~/.nvim/ftplugin/<CR>
":nnoremap <leader>p :source ~/.config/nvim/init.vim<CR>

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
" set autochdir "does not work with vimfiler
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
nnoremap <leader>m :<C-u>Denite buffer<CR>
nnoremap <leader><Space>b :<C-u>DeniteBufferDir buffer<CR>
nnoremap <leader>8 :<C-u>DeniteCursorWord grep:. -mode=normal<CR>
" nnoremap <leader>/ :<C-u>Denite grep:. -mode=normal<CR>
" nnoremap <leader><Space>/ :<C-u>DeniteBufferDir grep:. -mode=normal<CR>
" nnoremap <leader>d :<C-u>DeniteBufferDir file_rec<CR>
nnoremap <leader>o :<C-u>Denite location_list -mode=normal -no-empty<CR>
nnoremap <leader>hs :<C-u>Denite history:search -mode=normal<CR>
nnoremap <leader>hc :<C-u>Denite history:cmd -mode=normal<CR>

" nnoremap <leader>o :<C-u>Denite -buffer-name=outline -winwidth=35 unite:outline<cr>
nnoremap <leader>o :<C-u>Denite -winwidth=35 unite:outline<cr>

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
"==================================================================================================
" Unite
"
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>f :<C-u>Denite -no-split -buffer-name=files   file<cr>
" nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
" nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
" nnoremap <leader>o :<C-u>Unite -buffer-name=outline -start-insert -winwidth=35 outline<cr>
" :Unite -vertical -winwidth=35 outline

" nnoremap <leader>tt :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
" nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <leader>r :<C-u>Denite -no-split -buffer-name=mru     file_mru<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
" nnoremap <leader>b :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>
" nnoremap <leader>B :Unite -quick-match buffer<cr>
" nnoremap <leader>b :Unite -quick-match buffer<cr>
nnoremap <silent><Leader>m :Unite -silent -auto-resize -buffer-name=my-directories -default-action=vimfiler bookmark<CR>
" nnoremap <silent><buffer>b <C-u>:Unite -silent -default-action=cd -no-start-insert bookmark<CR>
" nnoremap <C-p> :Unite file_rec/async<cr>
" nnoremap <leader>/ :Unite grep:.<cr>

" set nocompatible
" set runtimepath+=~/.vim/bundle/vimproc.vim
" set runtimepath+=~/.vim/bundle/unite.vim

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

" Set the grep command used by unite.
" let g:unite_source_grep_command = 'ag'
" let g:unite_source_grep_default_opts =
"     \ '--line-numbers --nogroup --nocolor --follow --hidden --ignore-case --ignore ".git" --ignore ".bzr" --ignore ".svn"'

" {{{ Hotkeys.

" <Leader>s: Perform file search, like control-p.
" nnoremap <Leader>uns :<C-u>Unite -buffer-name=files -start-insert file_rec/async:!<CR>

" <Leader>g: Start a grep search from the current directory.
" nnoremap <Leader>ung :<C-u>Unite -buffer-name=grep grep:.<CR>

" <Leader>y: Open yank history.
" let g:unite_source_history_yank_enable = 1
" nnoremap <Leader>uny :<C-u>Unite -buffer-name=yank_history history/yank<CR>

" <Leader>b: Buffer switching.
" nnoremap <Leader>unb :<C-u>Unite -quick-match -buffer-name=buffers buffer<CR>

"  Custom mappings for the unite buffer.
"autocmd FileType unite call s:unite_settings()
"function! s:unite_settings()
"  " <C->movement: navigate in the unite buffer
"  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
"  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
"endfunction

" }}}

" File Searchin
" nnoremap <C-p> :Unite file_rec/async<cr>
"
" Content searching like ack.vim (or ag.vim)
" nnoremap <space>/ :Unite grep:.<cr>

" Yank history
" let g:unite_source_history_yank_enable = 1
" nnoremap <space>y :Unite history/yank<cr>

" "Buffer Switching
" nnoremap <space>s :Unite -quick-match buffer<cr>
"
"==================================================================================================
" FZF
"
"..................................................................................................
" nnoremap <silent> <Leader>C :call fzf#run({
" \   'source':
" \     map(split(globpath(&rtp, "colors/*.vim"), "\n"),
" \         "substitute(fnamemodify(v:val, ':t'), '\\..\\{-}$', '', '')"),
" \   'sink':    'colo',
" \   'options': '+m',
" \   'left':    30
" \ })<CR>
"..................................................................................................
function! s:buflist()
  redir => ls
  silent ls
  redir END
  return split(ls, '\n')
endfunction

function! s:bufopen(e)
  execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction

nnoremap <silent> <Leader><Enter> :call fzf#run({
\   'source':  reverse(<sid>buflist()),
\   'sink':    function('<sid>bufopen'),
\   'options': '+m',
\   'down':    len(<sid>buflist()) + 2
\ })<CR>
"
"..................................................................................................
function! s:line_handler(l)
  let keys = split(a:l, ':\t')
  exec 'buf' keys[0]
  exec keys[1]
  normal! ^zz
endfunction

function! s:buffer_lines()
  let res = []
  for b in filter(range(1, bufnr('$')), 'buflisted(v:val)')
    call extend(res, map(getbufline(b,0,"$"), 'b . ":\t" . (v:key + 1) . ":\t" . v:val '))
  endfor
  return res
endfunction

command! FZFLines call fzf#run({
\   'source':  <sid>buffer_lines(),
\   'sink':    function('<sid>line_handler'),
\   'options': '--extended --nth=3..',
\   'down':    '60%'
\})

"..................................................................................................
function! s:ag_to_qf(line)
  let parts = split(a:line, ':')
  return {'filename': parts[0], 'lnum': parts[1], 'col': parts[2],
        \ 'text': join(parts[3:], ':')}
endfunction

function! s:ag_handler(lines)
  if len(a:lines) < 2 | return | endif

  let cmd = get({'ctrl-x': 'split',
               \ 'ctrl-v': 'vertical split',
               \ 'ctrl-t': 'tabe'}, a:lines[0], 'e')
  let list = map(a:lines[1:], 's:ag_to_qf(v:val)')

  let first = list[0]
  execute cmd escape(first.filename, ' %#\')
  execute first.lnum
  execute 'normal!' first.col.'|zz'

  if len(list) > 1
    call setqflist(list)
    copen
    wincmd p
  endif
endfunction

command! -nargs=* Ag call fzf#run({
\ 'source':  printf('ag --nogroup --column --color "%s"',
\                   escape(empty(<q-args>) ? '^(?=.)' : <q-args>, '"\')),
\ 'sink*':    function('<sid>ag_handler'),
\ 'options': '--ansi --expect=ctrl-t,ctrl-v,ctrl-x --delimiter : --nth 4.. '.
\            '--multi --bind=ctrl-a:select-all,ctrl-d:deselect-all '.
\            '--color hl:68,hl+:110',
\ 'down':    '50%'
\ })

"..................................................................................................
function! s:fzf_neighbouring_files()
  let current_file =expand("%")
  let cwd = fnamemodify(current_file, ':p:h')
  let command = 'ag -g "" -f ' . cwd . ' --depth 0'

  call fzf#run({
        \ 'source': command,
        \ 'sink':   'e',
        \ 'options': '-m -x +s',
        \ 'window':  'enew' })
endfunction

command! FZFNeigh call s:fzf_neighbouring_files()

"..................................................................................................
nnoremap <leader>h :History<CR>
nnoremap <leader>B :Buffers<CR>
nnoremap <leader>F :Files<CR>

"..................................................................................................
imap <c-x><c-l> <plug>(fzf-complete-line)

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
    let g:pymode_run_bind = '<leader>r'
    let g:pymode_breakpoint_bind = '<leader>g'
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
" Easymotion
"
"" <Leader>f{char} to move to {char}
"map  <Leader>f <Plug>(easymotion-bd-f)
"nmap <Leader>f <Plug>(easymotion-overwin-f)
"
"" s{char}{char} to move to {char}{char}
"nmap s <Plug>(easymotion-overwin-f2)
"
"" Move to line
"map <Leader>L <Plug>(easymotion-bd-jk)
"nmap <Leader>L <Plug>(easymotion-overwin-line)
"
"" Move to word
"map  <Leader>w <Plug>(easymotion-bd-w)
"nmap <Leader>w <Plug>(easymotion-overwin-w)

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
"
" if dein#tap('vimfiler') == 1
"     function! VimfilerHookOpts() abort
"         call vimfiler#custom#profile('default', 'context', {
"                     \ 'direction' : 'topleft',
"                     \ 'split': 1,
"                     \ 'winwidth' : 40,
"                     \ 'force_quit': 1,
"                     \ 'status' : 1,
"                     \ 'columns' : 'devicons:size',
"                     \ 'safe': 0
"                     \ })
"
"         " Open certain filetypes with external programs
"         let g:vimfiler_execute_file_list = {}
"         if s:is_win
"             call vimfiler#set_execute_file('pdf,PDF', 'SumatraPDF')
"             call vimfiler#set_execute_file('xlsx,xls,xlsm',
"                 \ 'C:\Program Files\Microsoft Office\root\Office16\EXCEL.exe')
"             call vimfiler#set_execute_file('docx,doc',
"                 \ 'C:\Program Files\Microsoft Office\root\Office16\WINWORD.exe')
"         elseif s:is_mac
"             call vimfiler#set_execute_file('pdf,PDF,doc,docx,xls,xlsx,xlsm,png',
"                 \ 'open')
"         endif
"     endfunction
"     call dein#set_hook('vimfiler', 'hook_source', function('VimfilerHookOpts'))
" endif
"
" Filetype settings
"augroup ps_vimfiler
"    au!
"    au FileType vimfiler call s:vimfiler_settings()
"augroup END

function! s:vimfiler_settings()
    " Exit with escape key and q, Q; hide with <C-c>
    nmap <buffer> <ESC> <Plug>(vimfiler_exit)
    nmap <buffer> q <Plug>(vimfiler_exit)
    nmap <buffer> Q <Plug>(vimfiler_exit)
    nmap <buffer> <C-c> <Plug>(vimfiler_hide)
    " Expand tree and edit files with e
    nmap  <buffer><expr> e vimfiler#smart_cursor_map(
        \ "\<Plug>(vimfiler_expand_tree)", "\<Plug>(vimfiler_edit_file)")
    " Open files with external programs (such as a PDF viewer)
    nmap <buffer> o <Plug>(vimfiler_execute_vimfiler_associated)
    " Open and close tree with fold commands
    nmap <buffer> zo <Plug>(vimfiler_expand_tree)
    nmap <buffer> zc <Plug>(vimfiler_expand_tree)
    nmap <buffer> zm <Plug>(vimfiler_expand_tree_recursive)
    nmap <buffer> zr <Plug>(vimfiler_expand_tree_recursive)
    " Open files in splits
    nnoremap <buffer><expr><silent> s vimfiler#do_switch_action('split')
    nnoremap <buffer><expr><silent> v vimfiler#do_switch_action('vsplit')
    " Copy, move, paste and delete mappings (paste executes move or copy
    " operations i.e first move and then paste to move)
    nmap <buffer> c
    \ <Plug>(vimfiler_mark_current_line)<Plug>(vimfiler_clipboard_copy_file)
    nmap <buffer> m
    \ <Plug>(vimfiler_mark_current_line)<Plug>(vimfiler_clipboard_move_file)
    nmap <buffer> p <Plug>(vimfiler_clipboard_paste)
    nmap <buffer> d
    \ <Plug>(vimfiler_mark_current_line)<Plug>(vimfiler_delete_file)
    " New file and directory
    nmap <buffer> F <Plug>(vimfiler_new_file)
    nmap <buffer> D <Plug>(vimfiler_make_directory)
    " Move up a directory
    nmap <buffer> u <Plug>(vimfiler_switch_to_parent_directory)
    " Home directory
    nmap <buffer> h <Plug>(vimfiler_switch_to_home_directory)
    " Change window and redraw screen
    nmap <buffer> <C-j> <C-w>j
    nmap <buffer> <C-h> <C-w>h
    nmap <buffer> <C-k> <C-w>k
    nmap <buffer> <C-l> <C-w>l
    nmap <buffer> <C-r> <Plug>(vimfiler_redraw_screen)
    " Open external filer at current direction
    nmap <buffer> ge
    \ <Plug>(vimfiler_cd_vim_current_dir)<Plug>(vimfiler_execute_external_filer)
    " Bookmarks (reuses vimfiler buffer)
    nmap <buffer>b <Plug>(vimfiler_cd_input_directory)<C-u>bookmark:/<CR>
endfunction
"
"

nnoremap <Leader>jf :<C-u>VimFilerExplorer -sort-type=Time -status -split -simple -parent -winwidth=35 -no-quit -find<CR>
nnoremap <Leader>ff :VimFilerExplorer -status -find -winwidth=80 -sort-type=Time <CR>

" noremap <Leader>d :<C-u>VimFilerExplorer -status -split -simple -parent -winwidth=35 -toggle -no-quit<CR>
map <space>d :VimFilerBufferDir -status -sort-type=Time<CR>
map <space>D :VimFilerBufferDir -status -sort-type=Time -split -simple -winwidth=30 -toggle -no-quit -explorer<CR><CR>
" map <space>E :VimFilerBufferDir -status -split -simple -winwidth=30 -toggle -no-quit<CR><CR>
nnoremap <F2> :VimFilerBufferDir -status -sort-type=Time -split -simple -winwidth=30 -toggle -no-quit<CR>
" nnoremap <F3> :VimFiler status -tab<CR>

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


"---------------------------------------------------------------------------
" vimfiler:"{{{
"
" nnoremap    [vimfiler]   <Nop>
" nmap    <Space>v [vimfiler]
"
" nnoremap <silent> [vimfiler]b  :<C-u>VimFilerBufferDir<CR>
" nnoremap <silent> [vimfiler]c  :<C-u>VimFilerCurrentDir<CR>
" nnoremap <silent> [vimfiler]d  :<C-u>VimFilerDouble<CR>
" nnoremap <silent> [vimfiler]f  :<C-u>VimFilerSimple -no-quit -winwidth=32<CR>
" nnoremap <silent> [vimfiler]s  :<C-u>VimShell<CR>

" Edit file by tabedit.
" let g:vimfiler_edit_action = 'open'
" let g:vimfiler_split_action = 'tabopen'
"
" let g:vimfiler_as_default_explorer = 1

" if s:MSWindows
"     let g:unite_kind_file_use_trashbox = 1
" endif

" Enable file operation commands.
" let g:vimfiler_safe_mode_by_default = 0

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

":nnoremap <M-k> <C-w>k
"
" Quickly create a new terminal in a new tab
" tnoremap <Leader>C <C-\><C-n>:tab new<CR>:term<CR>
" noremap <Leader>C :tab new<CR>:term<CR>
"inoremap <Leader>c <Esc>:tab new<CR>:term<CR>

" Quickly create a new terminal in a vertical split
tnoremap <Leader>% <C-\><C-n>:vsp<CR><C-w><C-w>:term<CR>
noremap <Leader>% :vsp<CR><C-w><C-w>:term<CR>
" nmap <leader>T :vs<CR>:terminal<CR>


nnoremap <F3> :Ttoggle<cr><C-w><C-w>A
inoremap <F3> <esc>:Ttoggle<cr><C-w><C-w>A
tnoremap <F3> <C-\><C-n>:Ttoggle<cr>
tnoremap <esc> <C-\><C-n>
tnoremap <C-w><C-w> <C-\><C-n><C-w><C-w>


" Quickly create a new terminal in a horizontal split
" tnoremap <Leader>" <C-\><C-n>:sp<CR><C-w><C-w>:term<CR>
" noremap <Leader>" :sp<CR><C-w><C-w>:term<CR>
" inoremap <Leader>" <Esc>:sp<CR><C-w><C-w>:term<CR>
"
" Window split settings
highlight TermCursor ctermfg=red guifg=red
" set splitbelow
" set splitright

" Terminal settings
" tnoremap <Leader><ESC> <C-\><C-n>

" Window navigation function
" Make ctrl-h/j/k/l move between windows and auto-insert in terminals
" func! s:mapMoveToWindowInDirection(direction)
"     func! s:maybeInsertMode(direction)
"         stopinsert
"         execute "wincmd" a:direction
"
"         if &buftype == 'terminal'
"             startinsert!
"         endif
"     endfunc
"
"     execute "tnoremap" "<silent>" "<C-" . a:direction . ">"
"                 \ "<C-\\><C-n>"
"                 \ ":call <SID>maybeInsertMode(\"" . a:direction . "\")<CR>"
"     execute "nnoremap" "<silent>" "<C-" . a:direction . ">"
"                 \ ":call <SID>maybeInsertMode(\"" . a:direction . "\")<CR>"
" endfunc
" for dir in ["h", "j", "l", "k"]
"     call s:mapMoveToWindowInDirection(dir)
" endfor

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
" neoterm
" - did not use it
"
" let g:neoterm_position = 'horizontal'
" let g:neoterm_automap_keys = ',tt'
"
" nnoremap <silent> <f10> :TREPLSendFile<cr>
" nnoremap <silent> <f9> :TREPLSendLine<cr>
" vnoremap <silent> <f9> :TREPLSendSelection<cr>
"
" " Useful maps
" " hide/close terminal
" nnoremap <silent>,th :call neoterm#close()<cr>
" " clear terminal
" nnoremap <silent>,tl :call neoterm#clear()<cr>
" " kills the current job (send a <c-c>)
" nnoremap <silent>,tc :call neoterm#kill()<cr>
"
" " Rails commands
" command! Troutes :T rake routes
" command! -nargs=+ Troute :T rake routes | grep <args>
" command! Tmigrate :T rake db:migrate
"
" " Git commands
" command! -nargs=+ Tg :T git <args>


"==================================================================================================
" TABs
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>
let notabs = 0
nnoremap <silent> <F8> :let notabs=!notabs<Bar>:if notabs<Bar>:tabo<Bar>:else<Bar>:tab ball<Bar>:tabn<Bar>:endif<CR>

"==================================================================================================
let g:gfm_syntax_enable_always = 0
let g:gfm_syntax_enable_filetypes = ['markdown.gfm']
let g:markdown_fenced_languages = ['cpp', 'json','python']


"
"
"
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

" function! FzyCommand(choice_command, vim_command)
"   try
"     let output = system(a:choice_command . " | fzy ")
"   catch /Vim:Interrupt/
"     " Swallow errors from ^C, allow redraw! below
"   endtry
"   redraw!
"   if v:shell_error == 0 && !empty(output)
"     exec a:vim_command . ' ' . output
"   endif
" endfunction
"
" nnoremap <leader>e :call FzyCommand("find -type f", ":e")<cr>
" nnoremap <leader>v :call FzyCommand("find -type f", ":vs")<cr>
" nnoremap <leader>s :call FzyCommand("find -type f", ":sp")<cr>

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
nmap <silent> <leader>n <Plug>(ale_next_wrap)

let g:ale_linters = {
\   'elixir': [],
\}

let g:ale_rust_cargo_use_check = 1
" }
"
