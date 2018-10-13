" file: init.vim
" author: PathologicalHandwaving
" webpage: https://pathologicalhandwaving.github.io
" description: >
"   A nvim config for mac Oni frontend.
"   Config uses a different set of plugins and settings than my terminal vim setup (still
"   prefered).
"   Constructed with a focus on LaTeX editing with live preview, distraction
"   free writing environment, and other things a gui is nice for.
"   NOTE: Oni could be a bit lighter, and I am still getting intermittent
"   javascript errors. 
"   NOTE: This config is still in early development. Settings and plugin set
"   may change at anytime without warning.
" backend: neovim
" frontend: Oni
" date modified: 2018-03-09


" GENERAL SETTINGS
" ================
"
"" FILETYPE
filetype plugin on
filetype indent on

"" HISTORY
set history=500


set showcmd
set noshowmode
set hidden

set lazyredraw

"" NO BACKUPS
set autoread
set nobackup
set noswapfile
set nowb

"" SEARCH
set hlsearch
set ignorecase
set wildmenu
set magic

"" LINE NUMBERS
set number
set numberwidth=2

"" INDENT
set autoindent
set smartindent

"" TABS ARE SPACES
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set backspace=indent,eol,start

"" FOLDING
set foldcolumn=3
set foldmethod=marker

"" STATUS LINE
set cmdheight=2
set laststatus=2
set statusline=&{fugitive#statusline()}\ \ %{HasPaste()}%F%m%r%h\ %w\ \
"set statusline=>>\ Path:\%.20F
"set statusline+=\ \|\
set statusline+=%=
set statusline+=\[%4l:%c\]

if !has('gui_running')
    set t_Co=256
endif

set cursorline
set cursorcolumn
set colorcolumn=80
set ruler
set mouse=a
set showmatch
set mat=2

"" TEXTWIDTH
set textwidth=80
set wrap

"" ENCODING
set fileformat=unix,mac
set encoding=utf8
set fileencodings=utf8
set termencodings=utf8

"" SYNTAX HIGHLIGHTING
syntax on
syntax enable

"" COLORS
set background=dark
colorscheme NeoSolarized

"" SET SHELL
let $SHELL='/bin/bash'

"" SET LEADER
let mapleader="\<Space>"
map \ <Leader>
"" SET LOCALLEADER
let g:maplocalleader=","
map \ <LocalLeader>

" MAPS
map <Leader>yy
map <Leader>pp

"" BUFFERS
"" Close current buffer
map <Leader>bd :bufdo bd<CR>

"" Close all buffers
map <Leader>ba :bufdo bd<CR>

"" SPELLING
set spell
set spellland=en_us

"" Next spelling error
map <Leader>sn ]s

"" Previous spelling error
map <Leader>sN [s

"" Add selected spelling error to dictionary
map <Leader>sa zg

"" Look up alternate spellings
map <Leader>s? z=
noremap <Leader> w :w<CR>
noremap <CR> G
noremap <BS> gg

"" FIX META KEYS
set <M-j>=j
set <M-j>=k
"" RETURN TO EDIT POSITION ON OPEN
au BufReadPost * if line("'\"") > 1 && line("$") | exe "normal! g'\"" | endif

"" TOGGLE SPELL CHECK
map <Leader>ss :setlocal spell!<CR>

"" TeX FILETYPE
autocmd BufRead,BufNewFile *.tex set filetype=tex

"" QUICK OPEN TEX SCRIBBLE BUFFER
map <Leader>x :e /Users/Em/Repos/ScratchPad/TeX/buffer.tex<CR>

"" HAS PASTE
""function! HasPaste()
""    if &paste
""        return 'PASTE MODE '
""    endif
""    return ''
""endfunction

"" NeoTeX
let g:neotex_enabled=1
let g:neotex_delay=1000
let g:neotex_latexdiff=1

"" Git Fugitive
autocmd QuickFixCmdPost *grep* cwindow

"" Nvim Completion Manager


"" NeoSnippets
let g:neosnippet#snippets_directory="/Users/Em/.oni/snippets/"
let g:neosnippet#enable_snipmate_compatibility = 1

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

"" SuperTab like snippets behavior.
""Note: It must be "imap" and "smap".  It uses <Plug> mappings.
""imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
"" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

"" For conceal markers.
if has('conceal')
    set conceallevel=2 concealcursor=niv
endif

"" Neoformat
let g:neoformat_enabled_python = ['yapf']
let g:neoformat_enabled_json = ['jq']
let g:neoformat_enabled_latex = ['latexindent']
" Trim whitespace
let g:neoformat_basic_format_trim = 1
" Enable Alignment
let g:neoformat_basic_format_align = 1
" Only message on error
let g:neoformat_only_msg_on_error = 1

"" Goyo
function! s:goyo_enter()
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
    set noshowmode
    set noshowcmd
    set scrolloff=999
    Limelight
    " ...
endfunction

function! s:goyo_leave()
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
    set showmode
    set showcmd
    set scrolloff=5
    Limelight!
    " ...
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

"" Limelight

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!



"" Lightline
let g:lightline = {
    \ 'colorscheme': 'solarized',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'filetype', 'filename', 'lineinfo' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'fugitive#head'
    \ },
    \ }

let g:lightline.separator = { 'left': '', 'right': '' }
let g:lightline.subseparator = { 'left': '|', 'right': '|' }

"" QuickTeX

"" bash-support.vim
let g:BASH_AuthorName='K. M. Short'
let g:BASH_Email='kmshort@protonmail.com'
let g:Bash_Company='PathologicalHandwaving'

"" Markdown
"" FileType
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
"" Fenced Languages
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
"" Disable syntax conceal
let g:markdown_syntax_conceal = 0
"" Synchronize at 50 lines
let g:markdown_minlines = 50

"" vim-table-mode
let g:table_mode_corner='|'

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

"" Enable table mode by typing ||
"" Disable table mode by typing __

"" Commentary
""autocmd FileType apache setlocal commentstring=#\ %s
"" NOTE: Add LaTeX if unsupported


"" Abolish


"" Jedi
let g:jedi#use_splits_not_buffers = "left"

"" Jekyll
let g:jekyll_post_extension = '.md'

let g:jekyll_post_template =  [
    \ '---',
    \ 'layout: default',
    \ 'title: "JEKYLL_TITLE"',
    \ 'date: "JEKYLL_DATE"',
    \ '---',
    \ '']

"" Colorizer
"" Filetypes to color automatically
let g:colorizer_auto_filetype='css,html,theme,tex,vim'
"" Dont color comments
let g:colorizer_skip_comments=1
"" Syntax highlighting
let g:colorizer_syntax=1
"" CUSTOM COLOR LABELS
let g:colorizer_custom_colors={ 'base03': '#002b36', 'base02': '#073642', 'base01': '#586e75', 'base00': '#657b83', 'base0': '#839496', 'base1': '#93a1a1', 'base2': '#eee8d5', 'base3': '#fdf6e3', 'syellow': '#b58900', 'sorange': '#cb4b16', 'sred': '#dc322f', 'smagenta': '#d33682', 'sviolet': '#6c71c4', 'sblue': '#268bd2', 'scyan': '#2aa198', 'sgreen': '#859900'}
"
" vim-wordy
let g:wordy#ring = [
    \ 'weak',
    \ ['being', 'passive-voice', ],
    \ 'business-jargon',
    \ 'weasel',
    \ 'puffery',
    \ ['problematic', 'redundant', ],
    \ ['colloquial', 'idiomatic', 'similies', ],
    \ 'art-jargon',
    \ ['contractions', 'opinion', 'vague-time', 'said-synonyms', ],
    \ 'adjectives',
    \ 'adverbs',
    \ ]
"" keybind \w to wordy
if !&wildcharm | set wildcharm=<C-z> | endif
execute 'nnoremap <leader>w :Wordy<space>'.nr2char(&wildcharm)
