" TODO
" Vimfiler:
"  - ssh / scp
"  - colors depending on extension
"  Terminal:
"  -
"  Python:
"  -
"  Complete:
"  - colors in deoplete
""======================== ======================== ======================== ========================
set runtimepath+=/home/fbraenns/.nvim/
""======================== ======================== ======================== ========================
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('/home/fbraenns/.nvim/vimplug')
" Make sure you use single quotes
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
"Plug 'Shougo/deol.nvim', { 'rev': 'a1b5108fd' }
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-jedi'
Plug 'chrisbra/csv.vim'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdcommenter'
"Plug 'chemzqm/vim-easygit'
Plug 'itchyny/vim-parenmatch'
Plug 'itchyny/vim-cursorword'
Plug 'pboettch/vim-cmake-syntax'
"Plug 'jreybert/vimagit'
"Plug 'asymotion/vim-easymotion'
"Plug 'mzlogin/vim-markdown-toc'
Plug 'Shougo/tabpagebuffer.vim'
Plug 'wellle/tmux-complete.vim'
Plug 'chemzqm/unite-location'
Plug 'itchyny/lightline.vim'
Plug 'skywind3000/asyncrun.vim'

"Plug 'python-mode/python-mode'
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'


Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim' "needs unite -> new development for denite Plug 'Shougo/defx.nvim'
Plug 'Shougo/neomru.vim'
"Plug 'Shougo/denite.nvim'
"Plug 'chemzqm/denite-git'
"Plug 'chemzqm/denite-extra'
"defx.nvim — Dark powered file explorer
"deoppet.nvim — Dark powered snippet plugin

Plug 'Shougo/vimproc.vim', { 'do' : 'make', }

"Plug 'Shougo/vimshell.vim'
"Plug 'vhdirk/vim-cmake'
Plug 'sudar/vim-arduino-syntax'
Plug 'stevearc/vim-arduino'
Plug 'jiangmiao/auto-pairs'
Plug 'mattboehm/vim-accordion'
Plug 'tsukkee/unite-tag'
Plug 'Shougo/unite-outline'
Plug 'Shougo/vinarise'
Plug 'osyo-manga/vim-anzu'
Plug 'jvirtanen/vim-octave'
Plug 'jreybert/vimagit'
"Plug 'lambdalisue/gina.vim'
" Plug 'skywind3000/asyncrun.vim>'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'brettanomyces/nvim-terminus'
Plug 'kassio/neoterm'
" Plug 'vim-scripts/mailbrowser.vim'

" Initialize plugin system
call plug#end()


"
""======================== ======================== ======================== ========================
"

"======================== ======================== ======================== ========================
"" keybindings
""======================== ======================== ======================== ========================
let mapleader="\<SPACE>"

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
:nnoremap <leader>ef :e ~/.nvim/ftplugin/<CR>
":nnoremap <leader>p :source ~/.config/nvim/init.vim<CR>

"" Paste Mode On/Off
map <F11> :call Paste_on_off()<CR>
set pastetoggle=<F11>
"
let paste_mode = 0 " 0 = normal, 1 = paste

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

"" tab navigation like firefox
":nmap <C-S-tab> :tabprevious<cr>
":nmap <C-tab> :tabnext<cr>
":map <C-S-tab> :tabprevious<cr>
":map <C-tab> :tabnext<cr>
":map 1 :tabprevious<cr>
":map 2 :tabnext<cr>
":imap <C-S-tab> <ESC>:tabprevious<cr>i
":imap <C-tab> <ESC>:tabnext<cr>i
":nmap <C-t> :tabnew<cr>
":imap <C-t> <ESC>:tabnew<cr>
"" have Q reformat the current paragraph (or selected text if there is any):
"nnoremap Q gqap
"vnoremap Q gq
"
"" have the usual indentation keystrokes still work in visual mode:
"vnoremap <C-T> >
"vnoremap <C-D> <LT>
"vmap <Tab> <C-T>
"vmap <S-Tab> <C-D>
":map <F7> "+y
"vmap <C-c> "+y
":map <F8> "+p
"
"" this makes the mouse paste a block of text without formatting it
:map <MouseMiddle> <esc>"*p
"
"
set number
"" .vimrc
set ut=100
""=========================================================
"" first clear any existing autocommands:
"
"
"" * Terminal Settings
"" `XTerm', `RXVT', `Gnome Terminal', and `Konsole' all claim to be "xterm";
"" `KVT' claims to be "xterm-color":
if &term =~ 'xterm'
endif
"
"
""======================== ======================== ======================== ========================
"" * User Interface
""======================== ======================== ======================== ========================
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
"" * Text Formatting -- General
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
"
"" get rid of the default style of C comments, and define a style with two stars
"" at the start of `middle' rows which (looks nicer and) avoids asterisks used
"" for bullet lists being treated like C comments; then define a bullet list
"" style for single stars (like already is for hyphens):
"set comments-=s1:/*,mb:*,ex:*/
"set comments+=s:/*,mb:**,ex:*/
"set comments+=fb:*
"
"" treat lines starting with a quote mark as comments (for `Vim' files, such as
"" this very one!), and colons as well so that reformatting usenet messages from
"" `Tin' users works OK:
"set comments+=b:\"
""set comments+=n::
"
"
""======================== ======================== ======================== ========================
"" * Text Formatting -- Specific File Formats
""======================== ======================== ======================== ========================
"
"" enable filetype detection: #
"autocmd!
"filetype on

" if has("autocmd")
"     "autocmd BufNewFile,Bufread *.html,*.htm,*.shtml,*.epl,*.php3,*.sgml,*.de,*.en source ~/.vim/.vimrchtml.vim
"     "if has("autocmd")
"     "    autocmd BufNewFile,Bufread *.tex source ~/.vim/ftplugin/vimispell.vim
"     "endif
"     autocmd BufRead,BufNewFile *.cmake,CMakeLists.TXT,*.CMake.in runtime! indent/cmake-indent.vim
"     autocmd BufRead,BufNewFile *.cmake,CMakeLists.txt,*.cmake.in setf syntax/cmake-syntax.vim
" endif

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
""======================== ======================== ======================== ========================
"" * Search & Replace
""======================== ======================== ======================== ========================
"
"" make searches case-insensitive, unless they contain upper-case letters:
set ignorecase
set smartcase
"
"" show the `best match so far' as search strings are typed:
set incsearch
set hlsearch
"
"" assume the /g flag on :s substitutions to replace all matches in a line:
"set gdefault
"
"
"
"
""======================== ======================== ======================== ========================
"" * Keystrokes -- Moving Around
""======================== ======================== ======================== ========================
"
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
"
"
"" * Keystrokes -- Formatting
"
"
"" have Y behave analogously to D and C rather than to dd and cc (which is
"" already done by yy):
noremap Y y$
"
"
"" * Keystrokes -- Insert Mode
""
"" allow <BkSpc> to delete line breaks, beyond the start of the current
"" insertion, and over indentations:
"set backspace=eol,start,indent"
"
"
"""" navigation
""map <C-o> :split . <CR>
"
"""" make it easy to grab HTML tags
map ] f>
map [ F<
"
"" general settings
"set tabstop=4
"
"" initialise formatting
"set number
"syntax on
"
"
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""======================== ======================== ======================== ========================
"" Statusline / Faces
""
set laststatus=2 "black status line at bottom of window
"let g:lightline = {
"            \ 'colorscheme': 'wombat',
"      \ 'component_function': {
"      \   'filename': 'FilenameForLightline'
"      \ }
"            \ }
"" Replace filename component of Lightline statusline
"" let g:lightline = {
""       \ 'component_function': {
""       \   'filename': 'FilenameForLightline'
""       \ }
""       \ }
" 
"" Show full path of filename
"function! FilenameForLightline()
"    return expand('%')
"endfunction
let g:lightline = {
      \ 'component_function': {
      \   'filename': 'LightLineFilename'
      \ }
      \ }
function! LightLineFilename()
"  return expand('%:p:h')
  return expand('%')
endfunction
""set statusline=%<%f%h%m%r%=%{strftime(\"%I:%M:%S\ \%p,\ %a\ %b\ %d,\ %Y\")}\ %{&ff}\ %l,%c%V\ %P
""set statusline=%<%f%h%m%r%=%{strftime(\"%l:%M:%S\ \%p,\ %a\ %b\ %d,\ %Y\")}\ %{&ff}\ %l,%c%V\ %P
"
"" set the background according to your terminal..
"" set background=dark
set background=light
:hi comment ctermfg=darkgreen
:highlight LineNr ctermfg=darkgrey
:highlight VertSplit ctermfg=darkgray ctermfg=black
"
"
"
""======================== ======================== ======================== ========================
" BACKUP
set backup
set backupdir=$HOME/.vim.backupdir/
set backupext=~
set wildmenu "menu has tab completion
set wildignore=.aux,.bak,.dvi,.gz,.idx,.log,.ps,.swp,.tar,.pdf,.rpm,.deb,.o,.e,*~

""======================== ======================== ======================== ========================
"" Showmarks
:hi ShowMarksHLl ctermfg=red "For marks a-z
:hi ShowMarksHLu ctermfg=yellow "For marks A-Z
:hi ShowMarksHLo ctermfg=magenta "For all other marks
:hi ShowMarksHLm ctermfg=white "For multiple marks on the same line.
:hi SignColumn ctermbg=black
"
""======================== ======================== ======================== ========================
"" vimshell
""======================== ======================== ======================== ========================
""
""let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
""let g:vimshell_prompt =  '$ '
"":map <F2> :VimShell<CR>
"":map <F1> :! lxterminal & <CR><CR>
"

""======================== ======================== ======================== ========================
"" completion
""======================== ======================== ======================== ========================
"
"" Use deoplete.
""======================== ======================== ======================== ========================
"let g:deoplete#enable_at_startup = 1
"if !exists('g:deoplete#omni#input_patterns')
"  let g:deoplete#omni#input_patterns = {}
"endif

"let g:AutoPairsMapCR=0 
"let g:deoplete#auto_complete_start_length = 1 
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

"imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"smap <C-k>     <Plug>(neosnippet_expand_or_jump)
"xmap <C-k>     <Plug>(neosnippet_expand_target)
imap <C-k>     <Plug>(neosnippet_expand_or_jump)

imap <expr><TAB> pumvisible() ? "\<C-n>" : (neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>") 
imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
"imap <expr><CR> pumvisible() ? deoplete#mappings#close_popup() : "\<CR>\<Plug>AutoPairsReturn"

let g:neosnippet#snippets_directory='~/.nvim/snippets'

left
""======================== ======================== ======================== ========================
" Unite
"
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>

nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
nnoremap <leader>b :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>
nnoremap <leader>B :Unite -quick-match buffer<cr>
" nnoremap <silent><buffer>b <C-u>:Unite -silent -default-action=cd -no-start-insert bookmark<CR>
nnoremap <C-p> :Unite file_rec/async<cr>
nnoremap <leader>/ :Unite grep:.<cr>

" set nocompatible
" set runtimepath+=~/.vim/bundle/vimproc.vim
" set runtimepath+=~/.vim/bundle/unite.vim

" Use ag in unite grep source.
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts =
\ '-i --vimgrep --hidden --ignore ' .
\ '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
let g:unite_source_grep_recursive_opt = ''

nmap <silent> <S-f> :Unite -no-quit grep<CR>


" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
    " Play nice with supertab
    let b:SuperTabDisabled=1
    " Enable navigation with control-j and control-k in insert mode
    imap <buffer> <C-j>   <Plug>(unite_select_next_line)
    imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction

"File Searchin
nnoremap <C-p> :Unite file_rec/async<cr> 

"Content searching like ack.vim (or ag.vim)
nnoremap <space>/ :Unite grep:.<cr>

" Yank history
let g:unite_source_history_yank_enable = 1
nnoremap <space>y :Unite history/yank<cr>

"Buffer Switching
nnoremap <space>s :Unite -quick-match buffer<cr>

""======================== ======================== ======================== ========================
"""" denite.nvim
""======================== ======================== ======================== ========================
"""" -----------
"""
""" INTERFACE
"call denite#custom#option('_', {
"	\ 'prompt': 'λ:',
"	\ 'empty': 0,
"	\ 'winheight': 16,
"	\ 'source_names': 'short',
"	\ 'vertical_preview': 1,
"	\ 'auto-accel': 1,
"	\ 'auto-resume': 1,
"	\ })
"
"call denite#custom#option('list', {})
"
"call denite#custom#option('mpc', {
"	\ 'quit': 0,
"	\ 'mode': 'normal',
"	\ 'winheight': 20,
"	\ })
""
""" MATCHERS
""" Default is 'matcher_fuzzy'
"call denite#custom#source('tag', 'matchers', ['matcher_substring'])
"if has('nvim') && &runtimepath =~# '\/cpsm'
"	call denite#custom#source(
"		\ 'buffer,file_mru,file_old,file_rec,grep,mpc,line',
"		\ 'matchers', ['matcher_cpsm', 'matcher_fuzzy'])
"endif
"
"" SORTERS
"" Default is 'sorter_rank'
"call denite#custom#source('z', 'sorters', ['sorter_z'])
"
"" CONVERTERS
"" Default is none
"call denite#custom#source(
"	\ 'buffer,file_mru,file_old',
"	\ 'converters', ['converter_relative_word'])
"
"" FIND and GREP COMMANDS
"if executable('ag')
"	" The Silver Searcher
"	call denite#custom#var('file_rec', 'command',
"		\ ['ag', '-U', '--hidden', '--follow', '--nocolor', '--nogroup', '-g', ''])
"
"	" Setup ignore patterns in your .agignore file!
"	" https://github.com/ggreer/the_silver_searcher/wiki/Advanced-Usage
"
"	call denite#custom#var('grep', 'command', ['ag'])
"	call denite#custom#var('grep', 'recursive_opts', [])
"	call denite#custom#var('grep', 'pattern_opt', [])
"	call denite#custom#var('grep', 'separator', ['--'])
"	call denite#custom#var('grep', 'final_opts', [])
"	call denite#custom#var('grep', 'default_opts',
"		\ [ '--skip-vcs-ignores', '--vimgrep', '--smart-case', '--hidden' ])
"
"elseif executable('ack')
"	" Ack command
"	call denite#custom#var('grep', 'command', ['ack'])
"	call denite#custom#var('grep', 'recursive_opts', [])
"	call denite#custom#var('grep', 'pattern_opt', ['--match'])
"	call denite#custom#var('grep', 'separator', ['--'])
"	call denite#custom#var('grep', 'final_opts', [])
"	call denite#custom#var('grep', 'default_opts',
"			\ ['--ackrc', $HOME.'/.config/ackrc', '-H',
"			\ '--nopager', '--nocolor', '--nogroup', '--column'])
"endif
""
""" KEY MAPPINGS
"let insert_mode_mappings = [
"	\  ['jj', '<denite:enter_mode:normal>', 'noremap'],
"	\  ['<Esc>', '<denite:enter_mode:normal>', 'noremap'],
"	\  ['<C-N>', '<denite:assign_next_matched_text>', 'noremap'],
"	\  ['<C-P>', '<denite:assign_previous_matched_text>', 'noremap'],
"	\  ['<Up>', '<denite:assign_previous_text>', 'noremap'],
"	\  ['<Down>', '<denite:assign_next_text>', 'noremap'],
"	\  ['<C-Y>', '<denite:redraw>', 'noremap'],
"	\ ]
"
"let normal_mode_mappings = [
"	\   ["'", '<denite:toggle_select_down>', 'noremap'],
"	\   ['<C-n>', '<denite:jump_to_next_source>', 'noremap'],
"	\   ['<C-p>', '<denite:jump_to_previous_source>', 'noremap'],
"	\   ['gg', '<denite:move_to_first_line>', 'noremap'],
"	\   ['st', '<denite:do_action:tabopen>', 'noremap'],
"	\   ['sg', '<denite:do_action:vsplit>', 'noremap'],
"	\   ['sv', '<denite:do_action:split>', 'noremap'],
"	\   ['sc', '<denite:quit>', 'noremap'],
"	\   ['r', '<denite:redraw>', 'noremap'],
"	\ ]
"
"for m in insert_mode_mappings
"	call denite#custom#map('insert', m[0], m[1], m[2])
"endfor
"for m in normal_mode_mappings
"	call denite#custom#map('normal', m[0], m[1], m[2])
"endfor
"""
"""" vim: set ts=2 sw=2 tw=80 noet :

""======================== ======================== ======================== ========================
" PYTHON
"let g:python_host_prog = '/share/software/Python/anaconda2/bin/python'
"let g:python3_host_prog = '/share/Tools/Python/Distributions/anaconda3/bin/python'
"Python-Mode let g:pymode_folding = 0
"Python-Mode let g:pymode_run = 1
"Python-Mode let g:pymode_run_bind = '<leader>r'
"Python-Mode 
"Python-Mode let g:pymode_breakpoint = 1
"Python-Mode let g:pymode_breakpoint_bind = '<leader>b'
"Python-Mode "Manually set breakpoint command (leave empty for automatic detection)
"Python-Mode let g:pymode_breakpoint_cmd = ''

""Highlight 'self' keyword                       *'g:pymode_syntax_highlight_self'*
"let g:pymode_syntax_highlight_self = g:pymode_syntax_all
""Highlight indent's errors                       *'g:pymode_syntax_indent_errors'*
"let g:pymode_syntax_indent_errors = g:pymode_syntax_all
""Highlight space's errors                         *'g:pymode_syntax_space_errors'*
"let g:pymode_syntax_space_errors = g:pymode_syntax_all
"
let python_highlight_all=1
" syntax on
""python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"  execfile(activate_this, dict(__file__=activate_this))
"EOF

""======================== ======================== ======================== ========================
" Nerdcommenter

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

""======================== ======================== ======================== ========================
"" Easymotion
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


""======================== ======================== ======================== ========================
" TERMINAL
"To map <Esc> to exit terminal-mode:
:tnoremap <Esc> <C-\><C-n>

"To simulate |i_CTRL-R| in terminal-mode:
:tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'

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


":nnoremap <M-k> <C-w>k
"
set encoding=utf-8



" ===============================================================================
" COMMANDS                                                     *arduino-commands*
"                                                           *:ArduinoChooseBoard*
" :ArduinoChooseBoard [board]
"    Set [board] to be the currently selected board. It should match the format
"    of 'package:arch:board[:parameters]'.
"
"    If |g:arduino_board| is not set, the board passed in will be saved to disk
"    and used when you start new vim sessions.
"
"    If passed no arguments, open a list and let the user select one from the
"    list. If there are any special options for the board (e.g. cpu) successive
"    list selections will be opened for those.
"
" :ArduinoChooseProgrammer [programmer]
"    Set [programmer] to be the currently selected board. It should match the format
"    of 'package:programmer'.
"
"    If |g:arduino_programmer| is not set, the programmer passed in will be
"    saved to disk and used when you start new vim sessions.
"
"    If passed no arguments, open a list and let the user select one from the
"    list.

" :ArduinoChoosePort [port]
"    Set [port] to be the currently selected serial port. If passed no
"    arguments, open a list of likely ports and let the user select one.

" :ArduinoVerify
"    Compile your project. You may wish to bind this to a key combination. >
  " nnoremap <leader>c :ArduinoVerify<CR>
  " "
  "  You can also call :make directly. >
  " nnoremap <leader>m :make!<CR>
" :ArduinoUpload
"    Compile and upload your project. You may wish to bind this to a key
"    combination. >
  " nnoremap <leader>u :ArduinoUpload<CR>
" :ArduinoSerial
"    Open a connection to the serial port for debugging. You may wish to bind
"    this to a key combination. >
  " nnoremap <leader>s :ArduinoSerial<CR>

" :ArduinoUploadAndSerial
"    Compile and upload your project. If successful, open a connection to the
"    serial port for debugging. You may with to bind this to a key combination.
"    >
  " nnoremap <leader>d :ArduinoUploadAndSerial<CR>
""======================== ======================== ======================== ========================
" ERROR msg
"  General Anzu configuration - change to taste
"nmap n <Plug>(anzu-n-with-echo)
"nmap N <Plug>(anzu-N-with-echo)
"nmap * <Plug>(anzu-star-with-echo)
"nmap # <Plug>(anzu-sharp-with-echo)
"" clear status
"nmap <Esc><Esc> <Plug>(anzu-clear-search-status)
"" statusline
set statusline+=%{anzu#search_status()}
set statusline+=%F
"" Update the search status results while moving through the file
augroup anzu-update-search-status
  autocmd!
  autocmd CursorMoved *
  \ :AnzuUpdateSearchStatus|echo anzu#search_status()
augroup END
"
"" Stores the last seen search criteria
"let g:saved_search = ''
"
"" Clear the last search on VIM startup (so it won't start with a search window)
"autocmd VimEnter * call ClearLastSearch()
"function! ClearLastSearch()
"  let @/ = ''
"endfunction
"
"" This function monitors the last search results, and when it has changed
"" closes the previous search window (if any) and starts a new search window.
"autocmd CursorHold * call CheckSearch()
"function! CheckSearch()
"  if g:saved_search != @/ && !has("vim_starting")
"    " Save the current search term
"    let g:saved_search = @/
"    " We are in a new search, update Anzu and close/open search list window
"    AnzuUpdateSearchStatus|echo anzu#search_status()
"    UniteClose searchList
"    " Change the prompt if your font doesn't have this
"    "Also, setting the width to 40, you may want to change this based on your terminal size.
"    Unite -buffer-name=searchList -prompt=🔎 -prompt-focus -immediately -auto-highlight -no-quit -winwidth=40 -no-truncate -vertical -no -empty -no-focus anzu
"  endif
"endfunction
"
"" Clear highlighting and the search list on escape in normal mode
"nnoremap <esc> :noh<return>:UniteClose searchList<return>:AnzuClearSearchStatus<return>:let @/ = ""<return><esc>
"nnoremap <esc>^[ <esc>^[
"
"" Close unite search results window if it is the last buffer left
"autocmd BufEnter * if (winnr("$") == 1 && unite#get_unite_winnr("searchList") != -1)|q|endif
"
"

""======================== ======================== ======================== ========================
"" VimFiler
""======================== ======================== ======================== ========================
""

noremap <Leader>d :<C-u>VimFilerExplorer -status -split -simple -parent -winwidth=35 -toggle -no-quit<CR>
nnoremap <Leader>jf :<C-u>VimFilerExplorer -status -split -simple -parent -winwidth=35 -no-quit -find<CR>
nnoremap <Leader>ff :VimFilerExplorer -status -find -winwidth=80<CR>
"map <space>d :VimFiler<CR>
map <space>d :VimFilerBufferDir -status<CR>
map <space>D :VimFilerBufferDir -status -explorer<CR>
nnoremap <F2> :VimFilerCreate -status -split -simple -winwidth=30 -toggle -no-quit<CR>
nnoremap <F3> :VimFiler status -tab<CR>
" nnoremap <F4> :VimFilerDouble -tab<CR>
"map <C-d> :VimFiler<CR>
"nnoremap <silent> <Leader>bm :Unite -silent -auto-resize -buffer-name=my-directories -default-action=vimfiler bookmark<CR>
"nnoremap <silent><buffer>b <C-u>:VimFiler bookmark:/<CR><Paste>
" nmap <buffer> B <Plug>(vimfiler_cd_input_directory)<C-u>bookmark:
" nmap <buffer> b <Plug>(vimfiler_cd_input_directory)<C-u>bookmark:
nnoremap <silent> <Leader>bm :Unite -silent -auto-resize -buffer-name=my-directories -default-action=vimfiler bookmark<CR>

augroup filetype
    autocmd VimEnter * if !argc() | VimFiler -status | endif
    autocmd Filetype vimfiler setlocal cursorline
    autocmd FileType vimfiler nunmap <buffer> x
augroup END
" augroup ps_vimfiler
"     au!
" augroup END

" function! s:vimfiler_settings()
"     " nnoremap <silent><buffer>b <C-u>:VimFiler bookmark:<CR>
"     nnoremap <silent><buffer>b <C-u>:VimFiler bookmark:/<CR>
" endfunction

" use this function to toggle vimfiler
" function! s:vimfiler_toggle()
"   if &filetype == 'vimfiler'
"     execute 'silent! buffer #'
"     if &filetype == 'vimfiler'
"       execute 'enew'
"     endif
"   elseif exists('t:vimfiler_buffer') && bufexists(t:vimfiler_buffer)
"     execute 'buffer ' . t:vimfiler_buffer
"   else
"     execute 'VimFilerCreate'
"     let t:vimfiler_buffer = @%
"   endif
" endfunction

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
"}}}
            " \ 'py': 'xterm -e python'

"FILTER
" - find



""======================== ======================== ======================== ========================
"" Terminal
""======================== ======================== ======================== ========================
""
" Quickly create a new terminal in a new tab
tnoremap <Leader>c <C-\><C-n>:tab new<CR>:term<CR>
noremap <Leader>c :tab new<CR>:term<CR>
"inoremap <Leader>c <Esc>:tab new<CR>:term<CR>

" Quickly create a new terminal in a vertical split
tnoremap <Leader>% <C-\><C-n>:vsp<CR><C-w><C-w>:term<CR>
noremap <Leader>% :vsp<CR><C-w><C-w>:term<CR>
nmap <leader>T :vs<CR>:terminal<CR>

" Quickly create a new terminal in a horizontal split
" tnoremap <Leader>" <C-\><C-n>:sp<CR><C-w><C-w>:term<CR>
" noremap <Leader>" :sp<CR><C-w><C-w>:term<CR>
" inoremap <Leader>" <Esc>:sp<CR><C-w><C-w>:term<CR>
"
"
"
"

""======================== ======================== ======================== ========================
" Arduino
"
" my_file.ino [arduino:avr:uno] [arduino:usbtinyisp] (/dev/ttyACM0:9600)
" function! MyStatusLine()
"     let port = arduino#GetPort()
"     let line = '%f [' . g:arduino_board . '] [' . g:arduino_programmer . ']'
"     if !empty(port)
"         let line = line . ' (' . port . ':' . g:arduino_serial_baud . ')'
"     endif
"     return line
" endfunction
" setl statusline=%!MyStatusLine()

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
" PATHs
" :echo expand("%:p")    " absolute path
" :echo expand("%:p:h")  " absolute path dirname
" :echo expand("%:p:h:h")" absolute path dirname dirname
" :echo expand("%:.")    " relative path
" :echo expand("%:.:h")  " relative path dirname
" :echo expand("%:.:h:h")" relative path dirname dirname
"
" :echo expand("<sfile>:p")  " absolute path to [this] vimscrip
"
" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
" nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

let g:neoterm_position = 'horizontal'
let g:neoterm_automap_keys = ',tt'

nnoremap <silent> <f10> :TREPLSendFile<cr>
nnoremap <silent> <f9> :TREPLSendLine<cr>
vnoremap <silent> <f9> :TREPLSendSelection<cr>

" Useful maps
" hide/close terminal
nnoremap <silent> ,th :call neoterm#close()<cr>
" clear terminal
nnoremap <silent> ,tl :call neoterm#clear()<cr>
" kills the current job (send a <c-c>)
nnoremap <silent> ,tc :call neoterm#kill()<cr>

" Rails commands
command! Troutes :T rake routes
command! -nargs=+ Troute :T rake routes | grep <args>
command! Tmigrate :T rake db:migrate

" Git commands
command! -nargs=+ Tg :T git <args>
