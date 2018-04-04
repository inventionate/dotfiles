"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|
"
" Inventionate .vimrc file
"

" ----------------------------------------------------------------------------
" OPTIONS
" ----------------------------------------------------------------------------

set nocompatible                                                " We want the latest Vim settings/options
set autoindent                                                  " Carry over indenting from previous line
set autoread                                                    " Don't bother me when a file changes
set autowriteall                                                " Write on :next/:prev/^Z
set backspace=indent,eol,start                                  " Allow backspace beyond insertion point
set cindent                                                     " Automatic program indenting
set cinkeys-=0#                                                 " Comments don't fiddle with indenting
set cino=                                                       " See :h cinoptions-values
set commentstring=\ \ #%s                                       " When folds are created, add them to this
set copyindent                                                  " Make autoindent use the same chars as prev line
set directory-=.                                                " Don't store temp files in cwd
set encoding=utf8                                               " UTF-8 by default
set expandtab                                                   " No tabs
set fileformats=unix,dos,mac                                    " Prefer Unix
set fillchars=vert:\ ,stl:\ ,stlnc:\ ,fold:-,diff:┄             " Unicode chars for diffs/folds, and rely on Colors for window borders
silent! set foldmethod=marker                                   " Use braces by default
set formatoptions=tcqn1                                         " t - autowrap normal text
                                                                " c - autowrap comments
                                                                " q - gq formats comments
                                                                " n - autowrap lists
                                                                " 1 - break _before_ single-letter words
                                                                " 2 - use indenting from 2nd line of para
set hidden                                                      " Don't prompt to save hidden windows until exit
set history=200                                                 " How many lines of history to save
set hlsearch                                                    " Hilight searching
set ignorecase                                                  " Case insensitive
set incsearch                                                   " Search as you type
set infercase                                                   " Completion recognizes capitalization
set laststatus=2                                                " Always show the status bar
set linebreak                                                   " Break long lines by word, not char
set list                                                        " Show whitespace as special chars - see listchars
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·       " Unicode characters for various things
set matchtime=2                                                 " Tenths of second to hilight matching paren
set modelines=5                                                 " How many lines of head & tail to look for ml's
" silent! set mouse=nvc                                         " Use the mouse, but not in insert mode
set nobackup                                                    " No backups left after done editing
set nonumber                                                    " No line numbers to start
set visualbell t_vb=                                            " No flashing or beeping at all
set nowritebackup                                               " No backups made while editing
set printoptions=paper:A4                                       " A4 paper
set ruler                                                       " Show row/col and percentage
set scroll=4                                                    " Number of lines to scroll with ^U/^D
set scrolloff=15                                                " Keep cursor away from this many chars top/bot
set sessionoptions-=options                                     " Don't save runtimepath in Vim session (see tpope/vim-pathogen docs)
set shiftround                                                  " Shift to certain columns, not just n spaces
set shiftwidth=4                                                " Number of spaces to shift for autoindent or >,<
set shortmess+=A                                                " Don't bother me when a swapfile exists
set showbreak=                                                  " Show for lines that have been wrapped, like Emacs
set showmatch                                                   "showmatch Hilight matching braces/parens/etc.
set sidescrolloff=3                                             " Keep cursor away from this many chars left/right
set smartcase                                                   " Lets you search for ALL CAPS
set softtabstop=4                                               " Spaces 'feel' like tabs
set suffixes+=.pyc                                              " Ignore these files when tab-completing
set tabstop=4                                                   " The One True Tab
set textwidth=100                                               " 100 is the new 80
set notitle                                                     " Don't set the title of the Vim window
set wildmenu                                                    " Show possible completions on command line
set wildmode=list:longest,full                                  " List all options and complete
set wildignore=*.class,*.o,*~,*.pyc,.git,node_modules           " Ignore certain files in tab-completion
set macligatures                                                " We want pretty symbols, when available.
set linespace=16                                                " Macvim-specific line-height.
set splitbelow                                                  " Make splits defaut to below...
set splitright                                                  " And to the right.
set complete+=s                                                 " Enable insert mode completion.
"set undodir=~/.vim/undo                                         " Undo file dir
"set undofile                                                    " Enable persistent undo.


" Essential for filetype plugins.
filetype plugin indent on

" ----------------------------------------------------------------------------
" PLUGIN SETTINGS
" ----------------------------------------------------------------------------

so ~/.vim/plugins.vim

" For any plugins that use this, make their keymappings use comma
let mapleader = ","
let maplocalleader = ","

" FZF (replaces Ctrl-P, FuzzyFinder and Command-T)
set rtp+=/usr/local/opt/fzf
set rtp+=~/.fzf
nmap ; :Buffers<CR>
nmap <Leader>r :Tags<CR>
nmap <D-e> :Files<CR>
nmap <Leader>a :Ag<CR>

" Tell ack.vim to use ag (the Silver Searcher) instead
let g:ackprg = 'ag --vimgrep'

" GitGutter styling to use · instead of +/-
let g:gitgutter_sign_added = '∙'
let g:gitgutter_sign_modified = '∙'
let g:gitgutter_sign_removed = '∙'
let g:gitgutter_sign_modified_removed = '∙'

" SuperTab
"let g:SuperTabLongestEnhanced=1
"let g:SuperTabLongestHighlight=1

" Use incsearch.vim to highlight as I search
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" Highlight YAML frontmatter in Markdown files
let g:vim_markdown_frontmatter = 1

" ALE
let g:ale_sign_warning = '▲'
let g:ale_sign_error = '✗'
highlight link ALEWarningSign String
highlight link ALEErrorSign Title
nmap ]l :ALENextWrap<CR>
nmap [l :ALEPreviousWrap<CR>

" Lightline
let g:lightline = {
\ 'colorscheme': 'wombat',
\ 'active': {
\   'left': [['mode', 'paste'], ['filename', 'modified', 'filetype']],
\   'right': [['wordcount'], ['lineinfo'], ['percent'], ['readonly', 'linter_warnings', 'linter_errors', 'linter_ok']]
\ },
\ 'component_expand': {
\   'linter_warnings': 'LightlineLinterWarnings',
\   'linter_errors': 'LightlineLinterErrors',
\   'linter_ok': 'LightlineLinterOK'
\ },
\ 'component_type': {
\   'readonly': 'error',
\   'linter_warnings': 'warning',
\   'linter_errors': 'error'
\ },
\ 'component_function': {
\   'wordcount': 'wordCount#WordCount',
\ },
\ }

function! LightlineLinterWarnings() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('%d ◆', all_non_errors)
endfunction

function! LightlineLinterErrors() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('%d ✗', all_errors)
endfunction

function! LightlineLinterOK() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '✓ ' : ''
endfunction

" Update and show lightline but only if it's visible (e.g., not in Goyo)
autocmd User ALELint call s:MaybeUpdateLightline()
function! s:MaybeUpdateLightline()
  if exists('#lightline')
    call lightline#update()
  end
endfunction

" Goyo
let g:goyo_width = 120

function! s:goyo_enter()
  set guifont=Hack:h20
  set scrolloff=1000
  let g:auto_save = 1
  "set cursorline
  Limelight
endfunction

function! s:goyo_leave()
  set guifont=Hack:h17
  set scrolloff=15
  let g:auto_save = 0
  Limelight!
  "set cursorline!
endfunction

autocmd! User GoyoEnter call <SID>goyo_enter()
autocmd! User GoyoLeave call <SID>goyo_leave()

" Limelight
let g:limelight_conceal_ctermfg='#777777'
let g:limelight_conceal_guifg='#777777'

" Thesaurus
let g:tq_language=['de', 'en']

" Grammarous
let g:grammarous#show_first_error=1
let g:grammarous#default_lang='de'

" Pandoc
let g:pandoc#folding#level = 999
let g:pandoc#after#modules#enabled = ['snipmate', 'supertab', 'nrrwrgn', 'tablemode']
let g:pandoc#syntax#conceal#use = 0
let g:pandoc#folding#fdc = 2
let g:pandoc#biblio#bibs = ['/Users/fabianmundt/Library/Mobile Documents/com~apple~CloudDocs/Papers/Bibliography.bib']
let g:pandoc#spell#default_langs = ['de_de', 'en_gb']

" Startify
let g:startify_bookmarks = [ {'d': '~/Library/Mobile Documents/com~apple~CloudDocs/Dissertation/Manuskript'} ]
let g:startify_files_number = 5
let g:startify_custom_header = [
            \ '            __                 ',
            \ '    __  __ /\_\    ___ ___     ',
            \ '   /\ \/\ \\/\ \ /'' __` __`\  ',
            \ '   \ \ \_/ |\ \ \/\ \/\ \/\ \  ',
            \ '    \ \___/  \ \_\ \_\ \_\ \_\ ',
            \ '     \/__/    \/_/\/_/\/_/\/_/ ',
            \ ]
let g:startify_lists = [
            \ { 'type': 'files',     'header': [   'MRU']            },
            \ { 'type': 'sessions',  'header': [   'Sessions']       },
            \ { 'type': 'bookmarks', 'header': [   'Bookmarks']      },
            \ { 'type': 'commands',  'header': [   'Commands']       },
            \ ]

" ----------------------------------------------------------------------------
" COLORS
" ----------------------------------------------------------------------------

colorscheme dracula
set t_Co=256                                                            "Use 256 colors. This is useful for Terminal Vim.
set guifont=Hack:h17

set guioptions-=l                                                       "Disable Gui scrollbars.
set guioptions-=L
set guioptions-=r
set guioptions-=R

" Custom colors for NERDTree
highlight def link NERDTreeRO NERDTreeFile

"We'll fake a custom left padding for each window.
hi LineNr guibg=bg
set foldcolumn=2
" hi FoldColumn ctermfg=246 ctermbg=235 cterm=NONE guifg=#909194 guibg=bg gui=NONE

" Add dracula syntax highlighting
hi pandocEmphasis gui=italic cterm=italic guifg=#f1fa8c ctermfg=226
hi pandocStrong gui=bold cterm=bold guifg=#ffb86c ctermfg=208
hi pandocStrongEmphasis gui=bold,italic cterm=bold,italic guifg=#f1fa8c ctermfg=226
hi pandocEmphasisInStrong gui=bold,italic cterm=bold,italic guifg=#ffb86c ctermfg=208
"hi Conceal cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE

" ----------------------------------------------------------------------------
" KEY MAPS
" ----------------------------------------------------------------------------

"We'll set simpler mappings to switch between splits.
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>es :e ~/.vim/snippets/

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

"Make NERDTree easier to toggle.
nmap <D-1> :NERDTreeToggle<cr>

" Search for the word under the cursor in the current directory
nmap <M-k>    mo:Ack! "\b<cword>\b" <CR>
nmap <Esc>k   mo:Ack! "\b<cword>\b" <CR>
nmap ˚        mo:Ack! "\b<cword>\b" <CR>
nmap <M-S-k>  mo:Ggrep! "\b<cword>\b" <CR>
nmap <Esc>K   mo:Ggrep! "\b<cword>\b" <CR>

" Turn off linewise keys. Normally, the `j' and `k' keys move the cursor down one entire line. with
" line wrapping on, this can cause the cursor to actually skip a few lines on the screen because
" it's moving from line N to line N+1 in the file. I want this to act more visually -- I want `down'
" to mean the next line on the screen
nmap j gj
nmap k gk

nmap <Leader>p :Goyo<CR>

"RMardkown shortcuts
nmap <Leader>rmd :RMarkdown pdf latex_engine="lualatex", citation_package="biblatex", template="template_part.latex", pandoc_args="--listings"<CR>

nmap <Leader>opdf :execute '!open "' . expand('%:p:h') . '/' . expand('%:r') . '.pdf"'<CR>

" ----------------------------------------------------------------------------
" AUTO COMMANDS
" ----------------------------------------------------------------------------

" Automatically source the Vimrc file on save.
"augroup autosourcing
"   autocmd!
"   autocmd BufWritePost .vimrc source %
"augroup END

" Hotfix for the current MacVim Python 3 bug
"if has('gui_running')
"    if has('python3')
"        command! -nargs=1 Py py3 <args>
"        set pythonthreedll=/usr/local/Frameworks/Python.framework/Versions/3.6/Python
"        set pythonthreehome=/usr/local/Frameworks/Python.framework/Versions/3.6
"    else
"        command! -nargs=1 Py py <args>
"        set pythondll=/usr/local/Frameworks/Python.framework/Versions/2.7/Python
"        set pythonhome=/usr/local/Frameworks/Python.framework/Versions/2.7
"    endif
"else
"endif

