" Startify

let g:startify_use_env=0

" Footer
>
let g:startify_custom_footer=
	\['',"    Dont tell me there isnt one bit of difference between null and space, because thats exactly how much difference there is! - Larry Wall ", '']
<


""let g:startify_session_dir = '/Users/Em/.vim/sessions'
">
"let g:startify_session_before_save = [
"	\ 'echo "Cleaning up before save.."',
"	\ 'silent! NERDTreeTabsClose'
"	\]
"<
">
"let g:startify_session_persistence = 0
"<

">
"let g:startify_session_number = 999
"<

">
"let g:startify_session_sort = 0
"<

">
"let g:startify_fortune_use_unicode = 0
"<

>
let g:startify_padding_left = 4
<

>
	autocmd VimEnter *
				\ 	if !argc()
				\| 	  Startify
				\| 	  NERDTree
				\| 	  wincmd w
				\| 	endif
<

>
	autocmd User Startified setlocal cursorline
<


>
let g:startify_commands = [
	\ ':help reference',
	\ ':HackerNews shownew'
	\]
<
let g:startify_list_order=['files', 'bookmarks', 'dir', 'sessions']

>
	let g:startify_list_order = [
		\['    Commands:'],
		\'commands',
		\['    Recent Files:'],
		\'files',
		\['    Last Modified (this dir):'],
		\'dir',
		\['    Bookmarks:'],
		\'bookmarks',
		\['    Sessions:'],
		\'sessions',
		\]
<

let g:startify_bookmarks=[{'a' : '~/.aliases'},{'b' : '~/.bash_profile'},{'d' : '~/.dtutils'},{'f' : '~/.functions'},{'m' : '~/.mathutils'},{'s' : '~/.study'},{'u' : '~/.utils'},{'v' : '~/.vim/vimrc'},{'t' : '~/.myscripts/outfiles/tools.yml'}]

let g:startify_files_number = 3
let g:startify_recent_files=map(range(10,15), 'string(v:val)')
let g:startify_custom_indices=map(range(25,40), 'string(v:val)')
let g:startify_update_oldfiles=0
let g:startify_change_to_dir=1

"hi StartifyBracket 	ctermfg=245
"hi StartifyFile 	ctermfg=214
"hi StartifyFooter 	ctermfg=216
"hi StartifyHeader	ctermfg=214
"hi StartifyNumber	ctermfg=87
"hi StartifyPath		ctermfg=245
"hi StartifySlash	ctermfg=247
"hi StartifySpecial	ctermfg=191
"hi StartifySection	ctermfg=147
"hi StartifySelect	ctermfg=141
"hi StartifyVar		ctermfg=84

>
let g:startify_custom_header = 
	\ map(split(system('fortune | cowsay'), '\n'), '"   ". v:val')
<
