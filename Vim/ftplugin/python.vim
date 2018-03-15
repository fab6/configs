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
"let g:pymode_lint = 0
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

