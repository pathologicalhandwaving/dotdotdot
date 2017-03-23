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

let g:startify_bookmarks=[{'b' : '~/./Users/Em/Repos/Library-Main/bibliography.bib'},{'d' : '/Users/Em/Repos/Dictionary/main.tex'},{'n' : '/Users/Em/Notes/NOTES-INDEX.md'},{'q' : '/Users/Em/Repos/Quotes/quotes.tex'}]

let g:startify_recent_files=map(range(10,30), 'string(v:val)')
let g:startify_custom_indices=map(range(25,100), 'string(v:val)')

hi StartifyBracket 	ctermfg=245
hi StartifyFile 	ctermfg=254
hi StartifyFooter 	ctermfg=61
hi StartifyHeader	ctermfg=125
hi StartifyNumber	ctermfg=245
hi StartifyPath		ctermfg=241
hi StartifySlash	ctermfg=241
hi StartifySpecial	ctermfg=203
hi StartifySection	ctermfg=33
hi StartifySelect	ctermfg=61
hi StartifyVar		ctermfg=64
