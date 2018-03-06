" file: nvimrc
" author: K. M. Short
" webpage: https://pathologicalhandwaving.github.io
" description: >
"   A separate neovim config for LaTeX and programming with live updates
" frontend: Oni

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
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \
"set statusline=>>\ Path:\%.20F
"set statusline+=\ \|\
set statusline+=%=
set statusline+=\[%4l:%c\]

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
"" close current buffer
map <Leader>bd :bufdo bd<CR>
"" close all buffers
map <Leader>ba :bufdo bd<CR>

"" SPELLING
set spell
set spellland=en_us
"" next spelling error
map <Leader>sn ]s
"" previous spelling error
map <Leader>sN [s
"" add selected spelling error to dictionary
map <Leader>sa zg
"" look up alternate spellings
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
function! HasPaste()
    if &paste
        return 'PASTE MODE '
    endif
    return ''
endfunction


