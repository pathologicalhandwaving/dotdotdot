let mapleader = "\<Space>"
map \ <Leader>
let g:maplocalleader=","
map \ <LocalLeader>

map <Leader>yy
map <Leader>P
noremap <Leader>w :w<CR>
noremap <CR> G
noremap <BS> gg

" keybinding for jump between placeholders
"nnoremap <c-j> /<cr>c/+>/e<cr>
"inoremap <c-j> <ESC>/<+.\{-1,}+><cr>c/+>/e<cr>
" Syntax Highlighting for Placeholders
"match Todo /<+.\++>/

match TODO /^TODO:/
match QUESTION /^QUESTION/
match ANSWER /^ANSWER/
match 
" MacDict
map <ALT> D "dyiw:call MacDict(@d)<CR>
