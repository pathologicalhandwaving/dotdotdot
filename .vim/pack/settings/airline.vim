"" Airline Settings

"" tagbar integration
function! s:tagbar_integration()
	" statusline tells you what function you're in
endfunction

"" Accents
function! AccentDemo()
	let keys = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h' ]
	for k in keys
		call airline#parts#define_text(k, k)
	endfor
	call airline#parts#define_accent('a', 'red')
	call airline#parts#define_accent('b', 'green')
	call airline#parts#define_accent('c', 'blue')
	call airline#parts#define_accent('d', 'yellow')
	call airline#parts#define_accent('e', 'orange')
	call airline#parts#define_accent('f', 'purple')
	call airline#parts#define_accent('g', 'bold')
	call airline#parts#define_accent('h', 'italic')
	call g:airline_section_a = airline#section#create(keys)
endfunction
autocmd VimEnter * call AccentDemo()


