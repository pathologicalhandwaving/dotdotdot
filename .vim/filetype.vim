au BufRead,BufNewFile *.yml,*.yaml set filetype=yaml


"au BufRead,BufNewFile *.wiki set filetype=vimwiki
"autocmd FileType vimwiki map <Leader>w :d :VimwikiMakeNewDiaryNote
