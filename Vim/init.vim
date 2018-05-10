let g:python_host_skip_check=1
let g:loaded_python2_provider=1
set title
"let g:loaded_python3_provider=1
"==================================================================================================
" TODO
" Vim:
"  - Vim-Plug --> faster start-time
"  - client/server
" SessionsWindows:
"  - how can I use sessions --> For each topic a splitted vimfiler!?
"  - what should be my default session
" Denite:
"  - syntax highlighting e.g. for 'line'
" Git:
"  - easier git handling
" Vimfiler:
" - get current filename under cursor
" Terminal:
" Python:
"  - deoplete does not work as expected right now
" Complete:
"  - deoplete does this work for the terminal as well?
" Snippets:
" - modelica
" - Arduino
" - Octave
" - Python --> scikit-learn, H2O, Keras, DataAnalysis, bokeh
" - OpenFOAM
" Vimplug:
" -On-demand loading
"   # Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"   # Plug 'tpope/vim-fireplace', { 'for': 'clojure' }<Paste>
"
"==================================================================================================
set title
set runtimepath+=/home/fbraenns/.nvim/
"--------------------------------------------------------------------------------------------------
" Specify a directory for plugins
call plug#begin('/home/fbraenns/.nvim/vimplug')
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/deol.nvim'
", 
    "{ 'rev': 'a1b5108fd' }
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'zchee/deoplete-jedi'
    " Plug 'Shougo/tabpagebuffer.vim'
    "
    " Plug 'Shougo/vinarise'
    Plug 'Shougo/vimfiler.vim' "needs unite -> new development for denite Plug 'Shougo/defx.nvim'
    Plug 'Shougo/neomru.vim'
    Plug 'Shougo/vimproc.vim', { 'do' : 'make', }
    " Unite is needed due to vimfiler
    Plug 'Shougo/unite.vim'
    " Plug 'Shougo/unite-outline'
    " Plug 'vim-scripts/vimchant'
    " Plug 'rhysd/unite-oldfiles.vim'
    " Plug 'chemzqm/unite-location'
    " Plug 'tsukkee/unite-tag'
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
    Plug 'notomo/denite-autocmd'
    Plug 'notomo/denite-keymap'
    " Plug 'yuntan/denite-cheatsheet'
    " Plug 'davidhalter/jedi-vim' Autocomplete for python
    " Plug 'thirtythreeforty/lessspace.vim'
    Plug 'chrisbra/csv.vim'
    Plug 'Yggdroot/indentLine'
    Plug 'scrooloose/nerdcommenter'
    Plug 'itchyny/vim-parenmatch'
    Plug 'jiangmiao/auto-pairs'
    Plug 'itchyny/vim-cursorword'
    " Plug 'pboettch/vim-cmake-syntax'
    Plug 'itchyny/lightline.vim'
    "Plug 'rafi/vim-tinyline'
    Plug 'xolox/vim-misc'
    Plug 'xolox/vim-session'
    " Plug 'vim-scripts/ShowMarks'
    " Window manager for handling multiple splits
    " Plug 'mattboehm/vim-accordion'
    " Plug 'osyo-manga/vim-anzu'
    " Plug 'rafi/awesome-vim-colorschemes'
    Plug 'morhetz/gruvbox'
    " Plug 'haya14busa/incsearch.vim'
    Plug 'haya14busa/incsearch-fuzzy.vim'
    " Plug 'dhruvasagar/vim-table-mode'
    " Plug 'iamcco/file-manager.vim'
    " .....................................................................
    " Programming:
    " Markdown Syntax Highlighting
    Plug 'rhysd/vim-gfm-syntax'
    Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
    Plug 'rudes/vim-java', { 'for': 'java' }
    Plug 'plasticboy/vim-markdown'
    " python
    " Plug 'python-mode/python-mode' , { 'for': 'python' }
    Plug 'vyzyv/vimpyter'
    "Plug 'fisadev/vim-isort'
    " Plug 'w0rp/ale'
    "Plug 'bps/vim-textobj-python'
    " Plug 'ludovicchabant/vim-gutentags'
    Plug 'jvirtanen/vim-octave', { 'for': 'octave' }
    Plug 'stevearc/vim-arduino', { 'for': 'arduino' }
    "Plug 'nvie/vim-flake8', { 'for': 'python' }
    Plug 'sudar/vim-arduino-syntax', { 'for': 'arduino' }
    " Plug 'iyuuya/denite-ale'
    " .....................................................................
    " WindowSwapping
    " Plug 'wesQ3/vim-windowswap'
    " Plug 'chrisbra/NrrwRgn'
    " .....................................................................
    " Terminal:
    " Plug 'brettanomyces/nvim-terminus'
    " Plug 'mklabs/split-term.vim'
    " Plug 'kassio/neoterm' --> deol
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
    "Plug 'gcmt/taboo.vim'
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
    " set cursorline
    " :hi CursorLine ctermbg=gray
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
        "autocmd BufEnter set filetype=c
        autocmd BufNewFile,BufRead *Dict set filetype=c
        autocmd BufNewFile,BufRead *.mo set filetype=modelica
        autocmd BufNewFile,BufRead .spacemacs set filetype=lisp
        autocmd BufNewFile,BufRead *.in set syntax=fortran
        autocmd BufNewFile,BufRead *.data set syntax=gpyro
        "autocmd BufNewFile,BufRead *.in set syntax=dakota
        autocmd BufNewFile,BufRead *.py set filetype=python tabstop=4  softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix
        autocmd Filetype ipynb nmap <silent><Leader>b :VimpyterInsertPythonBlock<CR>
        autocmd Filetype ipynb nmap <silent><Leader>j :VimpyterStartJupyter<CR>
        autocmd Filetype ipynb nmap <silent><Leader>n :VimpyterStartNteract<CR>
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
        " autocmd BufNewFile,BufRead *.csv set filetype=csv
        " autocmd BufNewFile,BufRead *.CSV set filetype=csv
        " autocmd BufNewFile,BufRead *.dat set filetype=csv
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
    "let g:incsearch#auto_nohlsearch = 1
    "" map n  <Plug>(incsearch-nohl-n)
    "" map N  <Plug>(incsearch-nohl-N)
    "map *  <Plug>(incsearch-nohl-*)
    "map #  <Plug>(incsearch-nohl-#)
    "map g* <Plug>(incsearch-nohl-g*)
    "map g# <Plug>(incsearch-nohl-g#)
    " map /  <Plug>(incsearch-forward)
    " map ?  <Plug>(incsearch-backward)
    "map g/ <Plug>(incsearch-stay)
    "" map n <Plug>(incsearch-nohl)<Plug>(anzu-n-with-echo)
    "" map n <Plug>(incsearch-nohl)
    "" map n <Plug>(incsearch-nohl)
    "" map N <Plug>(incsearch-nohl)<Plug>(anzu-N-with-echo)
    "" map N <Plug>(incsearch-nohl)
    "map z/ <Plug>(incsearch-fuzzy-/)
    "map z? <Plug>(incsearch-fuzzy-?)
    "map zg/ <Plug>(incsearch-fuzzy-stay)

    "--------------------------------------------------------------------------------------------------
    " Statusline / Faces
    "
    set laststatus=2 "black status line at bottom of window


    let s:mode = ''
    let s:ColorizeModeActive = 0

    function! ColorizeMode()
    let l:mode = mode()


    if l:mode != s:mode
        if mode == 'R'
        "highlight Normal ctermbg=darkred
        highlight StatusLine ctermfg=red guifg=yellow
        elseif mode == 'i'
        "highlight Normal ctermbg=white
        highlight StatusLine ctermfg=green guifg=red
        elseif mode == 'v'
        "highlight Normal ctermbg=white
        highlight StatusLine ctermfg=yellow guifg=red
        elseif mode == 'n'
        "highlight Normal ctermbg=gray
        highlight StatusLine ctermfg=30 guifg=white
        endif

        let s:mode = l:mode
    endif

    return ',' . l:mode
    return ''
    endfunction



    if s:ColorizeModeActive == 0
    if &statusline == ''
        set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
    endif
    let &statusline = &statusline . '%{ColorizeMode()}'
    let s:ColorizeModeActive = 1
    endif


    "status2 "set statusline=Vim-%{Version()}\ %{getcwd()}\ \ %1*[%02n]%*\ %(%M%R%H%)\ %2*%F%*\ %=%{Options()}\ %3*<%l,%c%V>%*
    "status2 " " Text between "%{" and "%}" is being evaluated and thus suited for
    "status2 " functions.
    "status2 " " Here I will use the function "Options()" as defined below to show the
    "status2 " " values of some (local) options..
    "status2 " " The strings "%N*" unto "%*" correspond to the highlight group "UserN":
    "status2 " "       User1: color for buffer number
    "status2 hi    User1 cterm=NONE    ctermfg=red    ctermbg=white  guifg=red guibg=white
    "status2 "   "       User2: color for filename
    "status2 hi    User2 cterm=NONE    ctermfg=black  ctermbg=green  guifg=black guibg=green
    "status2 "     "       User3: color for position
    "status2 hi    User3 cterm=NONE    ctermfg=blue   ctermbg=white  guifg=blue guibg=white
    "status2 "
    "status2 fu! Version()
    "status2   return version
    "status2 endf
    "status2
    "status2 " Aussehen der Statuszeile (Sollte wohl besser bei den Farben sein)
    "status2 "set   statusline=%1*[%02n]%*\ %(%M%R%H%)\ *\ %2*%t%*\ %3*<%l,%c%V,%p%%>%*
    "status2 fu! Options()
    "status2   let opt=""
    "status2   if &ai|   let opt=opt." ai"   |endif
    "status2   if &et|   let opt=opt." et"   |endif
    "status2   if &hls|  let opt=opt." hls"  |endif
    "status2   if &nu|   let opt=opt." nu"   |endif
    "status2   if &ek|   let opt=opt." ek"   |endif
    "status2   if &list| let opt=opt." list" |endif
    "status2   if &paste|let opt=opt." paste"|endif
    "status2   if &shiftwidth!=8|let opt=opt." sw=".&shiftwidth|endif
    "status2   let opt=opt." tw=".&tw
    "status2   "let opt=opt."\[".&lines.",".&columns."\]"
    "status2   return opt
    "status2 endf
    "status2 " hi User1 cterm=bold ctermfg=cyan  ctermbg=white guifg=cyan guibg=white
    "status2 hi User1 cterm=NONE ctermfg=red   ctermbg=white guifg=red   guibg=white
    "status2 hi User2 cterm=NONE ctermfg=green ctermbg=white guifg=green guibg=white
    "status2 hi User3 cterm=NONE ctermfg=blue  ctermbg=white guifg=blue  guibg=white
    "
    "3 set statusline=
    "3 set statusline+=%7*\[%n]                                  "buffernr
    "3 set statusline+=%1*\ %<%F\                                "File+path
    "3 set statusline+=%2*\ %y\                                  "FileType
    "3 set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
    "3 set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
    "3 set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..) 
    "3 set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "Spellanguage & Highlight on?
    "3 set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
    "3 set statusline+=%9*\ col:%03c\                            "Colnr
    "3 set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.
    "3 function! HighlightSearch()
    "3   if &hls
    "3     return 'H'
    "3   else
    "3     return ''
    "3   endif
    "3 endfunction
    "3 "":hi StatusLineNC   term=reverse cterm=reverse ctermfg=9 gui=bold guifg=black guibg=green 
    "3 :hi StatusLineNC   term=reverse cterm=reverse 
    "3 "hi User1 ctermfg=#ffdad8  ctermbg=#880c0e
    "3 "hi User2 ctermfg=#000000  ctermbg=#F4905C
    "3 "hi User3 ctermfg=#292b00  ctermbg=#f4f597
    "3 "hi User4 ctermfg=#112605  ctermbg=#aefe7B
    "3 "hi User5 ctermfg=#051d00  ctermbg=#7dcc7d
    "3 "hi User7 ctermfg=#ffffff  ctermbg=#880c0e cterm=bold
    "3 "hi User8 ctermfg=#ffffff  ctermbg=#5b7fbb
    "3 "hi User9 ctermfg=#ffffff  ctermbg=#810085
    "3 "hi User0 ctermfg=#ffffff  ctermbg=#094afe
    "3 hi User1 ctermbg=17
    "3 hi User2 ctermbg=28
    "3 hi User3 ctermbg=38
    "3 hi User4 ctermbg=48
    "3 hi User5 ctermbg=118
    "3 hi User7 ctermbg=128
    "3 hi User8 ctermbg=138
    "3 hi User9 ctermbg=147
    "3 hi User9 ctermbg=150


    "x let g:lightline = {
    "x             \ 'colorscheme': 'powerline',
    "x             \ 'active': {'left': [['mode','paste'],['readonly','filename','modified']]},
    "x             \ 'component_function': { 'filename': 'LightLineFilename' }
    "x             \ }
    "x function! LightLineFilename()
    "x     return expand('%')
    "x endfunction
    "
    "  Showmarks
    ":hi ShowMarksHLl ctermfg=red "For marks a-z
    ":hi ShowMarksHLu ctermfg=yellow "For marks A-Z
    ":hi ShowMarksHLo ctermfg=magenta "For all other marks
    ":hi ShowMarksHLm ctermfg=white "For multiple marks on the same line.
    ":hi SignColumn ctermbg=black

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
    :nnoremap <leader>fes :e ~/.nvim/snippets/python.snip<CR>

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

    vmap <F6> :!xclip -f -sel clip<CR>
    imap <F7> :-1r !xclip -o -sel clip

    :map <C-x>0 <C-w>c
    :map <C-x>1 <C-w>o

    :nmap ,x :call jobstart('xterm',{'detach':1}) <CR>

    "..................................................................................................
    " " Copy to clipboard
    set clipboard+=unnamedplus
    vnoremap  <leader>y  "+y
    " nnoremap  <leader>Y  "+yg_
    " nnoremap  <leader>y  "+y
    " nnoremap  <leader>yy  "+yy

    " " Paste from clipboard
    nnoremap <leader>p ""p
    " nnoremap <leader>P "+P
    " nnoremap <leader>O "*P
    " vnoremap <leader>p "+p
    " vnoremap <leader>P "+P
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

    " nnoremap <silent> <leader>o :<C-u>Denite -buffer-name=outline -winwidth=35 unite:outline -mode=normal<cr>
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
nnoremap <silent> <leader>o :<C-u>Denite -mode=normal -winwidth=35 outline<cr>
nnoremap <silent> <leader>Dq :<C-u>Denite -mode=normal -auto-resize quickfix<CR>
nnoremap <silent> <leader>Ds :<C-u>Denite -mode=normal -winwidth=35 session<cr>
nnoremap <silent> <leader>Dr :<C-u>Denite -resume<CR>
nnoremap <silent> <leader>Dy :<C-u>Denite -mode=normal -winwidth=35 register<cr>


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
" autocmd FileType unite call s:unite_settings()
" function! s:unite_settings()
"     " Play nice with supertab
"     let b:SuperTabDisabled=1
"     " Enable navigation with control-j and control-k in insert mode
"     imap <buffer> <C-j>   <Plug>(unite_select_next_line)
"     imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
" endfunction

" Use fuzzy matcher for filtering elements.
call unite#filters#matcher_default#use(['matcher_fuzzy'])

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
" VimFiler

nnoremap <leader>jf :<C-u>VimFilerExplorer -sort-type=Time -status -split -simple -parent -winwidth=35 -no-quit -find<CR>
" nnoremap <leader>ff :VimFilerExplorer -status -find -winwidth=80 -sort-type=Time <CR>

map <silent><leader>d :VimFilerCreate -status -sort-type=Time<CR>
"map <silent><leader>d :VimFilerBufferDir -status -sort-type=Time<CR>
map <silent><leader>D :VimFilerBufferDir -status -sort-type=Time -split -simple -winwidth=29 -toggle -no-quit -explorer<CR><CR>
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
" autocmd FileType vimfiler call s:vimfiler_buffer_au()
"autocmd FileType vimfiler call mark#ToggleOn()
"autocmd FileType python :call mark#ToggleOff()
"x autocmd BufEnter * if &ft == 'python' | :call mark#ToggleOff()<CR>| endif
"x autocmd BufEnter * if &ft == 'bash' | :call mark#ToggleOff()<CR>| endif
"x autocmd BufEnter * if &ft == 'dakota' | :call mark#ToggleOff()<CR>| endif
"x autocmd BufEnter * if &ft == 'fds' | :call mark#ToggleOff()<CR>| endif
"x autocmd BufEnter * if &ft == 'c' | :call mark#ToggleOff()<CR>| endif
"x autocmd BufEnter * if &ft == 'modelica' | :call mark#ToggleOff()<CR>| endif
"x autocmd BufEnter * if &ft == 'arduino' | :call mark#ToggleOff()<CR>| endif
"x autocmd BufEnter * if &ft == 'lisp' | :call mark#ToggleOff()<CR>| endif
"x autocmd BufEnter * if &ft == 'octave' | :call mark#ToggleOff()<CR>| endif
" autocmd BufEnter * if &ft ==# 'python' | :call mark#ToggleOff()<CR> | endif



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
""
""" Quickly create a new terminal in a vertical split
""tnoremap <Leader>% <C-\><C-n>:vsp<CR><C-w><C-w>:term<CR>
""noremap <Leader>% :vsp<CR><C-w><C-w>:term<CR>
""noremap <Leader>^ :tabnew<CR>:term<CR>
""" nmap <leader>T :vs<CR>:terminal<CR>
""
"""kassio/neoterm
""nnoremap <F3> :Ttoggle<cr><C-w><C-w>A
nnoremap <F3> :Deol -split -start-insert<CR><C-w><C-w>
inoremap <F3> :Deol -split -start-insert<CR><C-w><C-w>
tnoremap <F3> <C-\><C-n>:q<CR><C-w><C-w>
""inoremap <F3> <esc>:Ttoggle<cr><C-w><C-w>A
""tnoremap <F3> <C-\><C-n>:Ttoggle<cr>
""" tnoremap <esc> <C-\><C-n>
""tnoremap <C-w><C-w> <C-\><C-n><C-w><C-w>




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
nnoremap gN :tabnew<CR>
nnoremap gn :tabnext<CR>


"==================================================================================================
let g:gfm_syntax_enable_always = 0
let g:gfm_syntax_enable_filetypes = ['markdown.gfm']
let g:markdown_fenced_languages = ['cpp', 'json','python']


map <F9> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
            \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
            \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" let g:windowswap_map_keys = 0 "prevent default bindings
" nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
" nnoremap <silent> <leader>pw :call WindowSwap#DoWindowSwap()<CR>
" nnoremap <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<CR>

"==================================================================================================
" ale
"
"" let g:ale_sign_error = 'E'
"" " let g:ale_sign_warning = '⚠'
"" let g:ale_sign_warning = 'W'
"" " let g:ale_statusline_format = ['E %d', '⚠ %d', '']
"" let g:ale_statusline_format = ['E %d', 'W %d', '']
"" let g:ale_lint_on_text_changed = 0
"" let g:ale_lint_on_save = 1
"" let g:ale_lint_on_enter = 1
"" " cycle through location list
"" " nmap <silent> <leader>an <Plug>(ale_next_wrap)
"" nmap <silent> <leader>A :ALEToggle<CR>
""
"" let g:ale_linters = {
""             \   'elixir': [],
""             \}
""
"" let g:ale_rust_cargo_use_check = 1
" }
"
"
" :hi x187_LightYellow3 ctermfg=187 guifg=#d7d7af ctermfg=/usr/bin/env: ‘php’: No such file or directory "rgb=215,215,175
" let s:ale_running = 0
" let l:stl .= '%{s:ale_running ? "[linting]" : ""}'
" augroup ALEProgress
"     autocmd!
"     autocmd User ALELintPre  let s:ale_running = 1 | redrawstatus
"     autocmd User ALELintPost let s:ale_running = 0 | redrawstatus
" augroup end

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
autocmd BufNewFile,BufRead *.fds set filetype=fds
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
"let g:csv_highlight_column = 'y'
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



imap jq <ESC>:wq<CR>
imap jw <ESC>:w<CR>
imap jk <ESC>
nmap <leader>q :q!a<CR>
nmap <leader>Q :wqa<CR>


"..................................................................................................
" Marking in files, Denite and vimfiler

" augroup filetype
"     autocmd FileType vimfiler call Marking()
"     autocmd FileType python :MarkClear
"     autocmd FileType modelica :MarkClear
" augroup END
"
let g:mwDefaultHighlightingPalette = 'maximum'
" function! Marking()
runtime plugin/mark.vim
silent MarkClear
"
"silent 56Mark /.*\.py/
silent 1Mark /.*\.py/

silent 1Mark /.*\.ipynb/
" silent 58Mark /.*\.ipynb/
"
silent 2Mark /.*\.igs/
silent 2Mark /.*\.iges/
silent 3Mark /.*\.stp/
silent 3Mark /.*\.step/
silent 4Mark /.*\.stl/
silent 5Mark /.*\.mo/
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


" nnoremap th  :tabfirst<CR>
" nnoremap tj  :tabnext<CR>
" nnoremap tk  :tabprev<CR>
" nnoremap tl  :tablast<CR>
" nnoremap tt  :tabedit<Space>
" nnoremap tn  :tabnew<CR>
" nnoremap tm  :tabm<Space>
" nnoremap td  :tabclose<CR>
" Alternatively use
"nnoremap th :tabnext<CR>
"nnoremap tl :tabprev<CR>
"nnoremap tn :tabnew<CR>
" :highlight col1 ctermbg=Red ctermfg=White
" :syntax match col1 /Apple/
" :highlight col2 ctermbg=Green ctermfg=Black
" :syntax match col2 /Mango/
" /\%81v.*/
"
"==================================================================================================
" COLORSCHEME
"x set termguicolors
" set background=dark
:let g:gruvbox_bold = '0'
:let g:gruvbox_italic = '1'
colorscheme gruvbox
set background=dark

 " colorscheme gruvbox
:let g:gruvbox_contrast_dark = 'hard'
:let g:gruvbox_hls_cursor = 'orange'
"
"..................................................................................................
" Highlighting
"highlight Normal ctermbg=234
"ctermfg=white
" :hi comment ctermfg=darkgreen
" :highlight LineNr ctermfg=darkgrey
":highlight VertSplit ctermfg=darkgray ctermfg=black
""..................................................................................................
:highlight ParenMatch ctermbg=blue
" :hi comment ctermfg=242
" :highlight LineNr ctermfg=darkgrey
" :highlight VertSplit ctermfg=darkgray ctermfg=black

"..................................................................................................
" Showmarks
:hi ShowMarksHLl ctermfg=red "For marks a-z
:hi ShowMarksHLu ctermfg=yellow "For marks A-Z
:hi ShowMarksHLo ctermfg=magenta "For all other marks
:hi ShowMarksHLm ctermfg=white "For multiple marks on the same line.
:hi SignColumn ctermbg=black

"highlight Pmenu ctermbg=8 guibg=#606060 ctermbg=/usr/bin/env: ‘php’: No such file or directory
":highlight PmenuSel ctermbg=1 guifg=#dddd00 ctermfg=/usr/bin/env: ‘php’: No such file or directory guibg=#1f82cd
"highlight PmenuSbar ctermbg=0 guibg=#d6d6d6 ctermbg=/usr/bin/env: ‘php’: No such file or directory
"
:highlight Cursor ctermfg=red guifg=red
:highlight vimFilerMarkedFile ctermbg=12

:highlight TermCursor ctermfg=red guifg=red

"x :hi LightLineMiddle_active ctermbg=98
":highlight Search ctermbg=gray ctermfg=black
:hi Search ctermbg=12
:hi Search ctermfg=226
" :highlight ALEWarning ctermbg=65
" :highlight ALEWarningSign ctermbg=65
" :highlight ALEError ctermbg=92
" :highlight ALEErrorSign ctermbg=92
"
"
"
"
" Without Gruvbox
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

" :hi Comment ctermfg=darkgrey
" :hi Comment ctermfg=darkgreen
"x :hi Comment ctermfg=28
":hi LineNr ctermfg=darkgrey

" highlight extensionPDF ctermbg=red ctermfg=white guibg=#592929 ctermbg=/usr/bin/env: ‘php’: No such file or directory
" syn match extensionPDF /txet/
" :hi TabLineFill ctermfg=LightGreen ctermbg=DarkGreen
"x :hi TabLine ctermfg=grey ctermbg=darkgrey
"x :hi TabLineSel ctermfg=Blue ctermbg=120
"x :hi Title ctermfg=LightBlue ctermbg=Magenta

"set sessionoptions+=tabpages,globals
"x hi Identifier ctermfg=magenta
"hi String ctermfg=215
"hi String ctermfg=230
"x hi String ctermfg=229
"x hi Comment ctermfg=34
"x hi PreProc ctermfg=cyan

