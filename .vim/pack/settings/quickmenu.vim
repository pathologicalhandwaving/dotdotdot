let g:quickmenu_options="LH"
noremap <silent><F12> :call quickmenu#toggle(0)

call quickmenu#append("Run %{expand('%:t')}", '!./%', "Run current file")

call quickmenu#append("# Git, '')
call quickmenu#append("git diff", 'Gvdiff', "Fugitive's Gvdiff on current document")
call quickmenu#append("git status", 'Gstatus', "Fugitive Gstatus on current document")

call quickmenu#append("# Misc", '')
