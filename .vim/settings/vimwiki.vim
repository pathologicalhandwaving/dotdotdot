" VimWiki

" Global Settings

let g:vimwiki_global_ext=0
let g:vimwiki_table_auto_fmt=1
let g:vimwiki_ext2syntax={'.md':'markdown', '.sh':'shell', '.py':'python', '.rb':'ruby', '.tex':'latex', ',txt':'text', ',pdf':'pdf', '.csv':'csv', '.rtf':'rtf', '.bib':'bibtex', '.yaml':'yaml', '.yml':'yaml'}
let g:vimwiki_folding='expr'
let g:vimwiki_toc_header='logentries'
let g:vimwiki_hl_cb_checked=2
let g:vimwiki_use_calendar=1
let g:vimwiki_autowriteall=1
let g:vimwiki_dir_link=''
let g:vimwiki_list_ignore_newline=0
let g:vimwiki_hi_on_checked=2
let g:vimwiki_diary_sort='asc'
let g:vimwiki_diary_header='CaptainsLog'
let g:vimwiki_diary_index='captainslog'

nmap == <Plug>VimwikiAddHeaderLevel
nmap -- <Plug>VimwikiRemoveHeaderLevel
map >> <Plug>VimwikiIncreaseSingleItem
map >>> <Plug>VimwikiIncreaseWholeItem
map << <Plug>VimwikiDecreaseSingleItem
map <<< <Plug>VimwikiDecreaseWholeItem
nmap <Leader>rr <Plug>VimwikiRenameLink
nmap <Leader>wcr <Plug>VimwikiDiaryGenerateLinks
nmap <Leader>wq <Plug>VimwikiUISelect

let g:vimwiki_hl_headers=1
hi VimwikiHeader1 guifg='Red'
hi VimwikiHeader2 guifg='Orange'
hi VimwikiHeader3 guifg='Yellow'
hi VimwikiHeader4 guifg='LightGreen'
hi VimwikiHeader5 guifg='DarkCyan'
hi VimwikiHeader6 guifg='DarkMagenta'

let wiki_1={}
let wiki_1.path='/Users/Em/PROJECTS/CAPTAINSLOG'
let wiki_1.index='CaptainsLog'
let wiki_1.hl_headers=1
let wiki_1.auto_toc=1
"let wiki_1.hl_cb_checked=2
let wiki_1.auto_tags=1

" Vimwiki Calendar Integration
au BufRead,BufNewFile *.wiki set filetype=vimwiki
autocmd FileType vimwiki map <Leader>w :d :VimwikiMakeNewDiaryNote
function! ToggleCalendar()
	execute ":Calendar"
	if exists("g:calendar_open")
		if g:calendar_open == 1
			execute "q"
			unlet g:calendar_open
		else
			g:calendar_open=1
		end
	else
		let g:calendar_open=1
	end
endfunction

autocmd Filetype vimwiki map c :call ToggleCalendar()

" Vimwiki Registered Wikis List
let g:vimwiki_list = [wiki_1]

