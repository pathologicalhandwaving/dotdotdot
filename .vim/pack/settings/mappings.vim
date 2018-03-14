"" MAPPINGS
"" MODIFIED: 2018-03-14

"" GLOBAL LEADER
let mapleader = "\<Space>"
map \ <Leader>

"" LOCAL LEADER
let g:maplocalleader=","
map \ <LocalLeader>

"" PASTE
map <Leader>yy

"" CUT
map <Leader>p

"" SPELL
map <Leader>sp :setlocal spell!<CR>
"" NEXT SPELLING ERROR
map <Leader>sn ]s
"" PREVIOUS SPELLING ERROR
map <Leader>sN [s
"" ADD SELECTED TO DICT
map <Leader>sa zg
"" LOOKUP ALT SPELL
map <Leader>s? z=


"" DASH APP
nmap <silent> <Leader>d <Plug>DashSearch
nmap <silent> <Leader>dg <Plug>DashGlobalSearch
let g:dash_activate=1
"" HUD MODE = 1
"" STANDARD MODE =0
"" what
noremap <Leader> w :w<CR>
noremap <CR> G
noremap <BS> gg
