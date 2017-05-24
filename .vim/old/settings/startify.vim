" Startify

" Footer
let g:startify_custom_footer=
	\['',"    Dont tell me there isnt one bit of difference between null and space, because thats exactly how much difference there is! - Larry Wall ", '']

let g:startify_list_order=['bookmarks', 'files', 'dir']

>
	let g:startify_list_order = [
		\['    Bookmarks:'],
		\'bookmarks',
		\['    Recent Files:'],
		\'files',
		\['    Last Modified:'],
		\'dir'
		\]
<

let g:startify_bookmarks=[{'a' : '~/.aliases'},{'b' : '~/.bash_profile'},{'c' : '/Users/Em/PROJECTS/projectlist.yml'},{'d' : '/Users/Em/EmDB/directory.yml'}]

let g:startify_recent_files=map(range(10,30), 'string(v:val)')
let g:startify_custom_indices=map(range(25,100), 'string(v:val)')

hi StartifyBracket 	ctermfg=245
hi StartifyFile 	ctermfg=214
hi StartifyFooter 	ctermfg=216
hi StartifyHeader	ctermfg=214
hi StartifyNumber	ctermfg=87
hi StartifyPath		ctermfg=245
hi StartifySlash	ctermfg=247
hi StartifySpecial	ctermfg=191
hi StartifySection	ctermfg=147
hi StartifySelect	ctermfg=141
hi StartifyVar		ctermfg=84
