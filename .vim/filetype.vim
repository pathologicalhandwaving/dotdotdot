"au BufRead,BufNewFile *.yml,*.yaml set filetype=yaml


"au BufRead,BufNewFile *.wiki set filetype=vimwiki
"autocmd FileType vimwiki map <Leader>w :d :VimwikiMakeNewDiaryNote

" Taskwarrior data files
"au BufRead,BufNewFile {pending,completed,undo}.data	set filetype=taskdata
"au BufRead,BufNewFile backlog.data	set filetype=javascript

" Taskwarrior configuration file
"au BufRead,BufNewFile .taskrc				set filetype=taskrc

" Taskwarrior handling of 'task 42 edit'
"au BufRead,BufNewFile *.task				set filetype=taskedit

" vim:noexpandtab
