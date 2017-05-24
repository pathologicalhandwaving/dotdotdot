" Thematic Settings

" Key Maps
" Thematic first theme
"nnoremap <Leader>hf
" Next theme
"nnoremap <Leader>hn
" Previous theme
"nnoremap <Leader>hp
" Random theme
"nnoremap <Leader>hr

" to clear highlights and redraw screen:
noremap <silent> <C-l> :<C-u>nohlsearch<cr><C-l>
inoremap <silent> <C-l> <c-o>:nohlsearch<cr>

" Highlights Apply Across All Themes
augroup MyCustomHighlights
	autocmd!
	autocmd colorscheme *
	\ highlight SpellBad    	gui=bold	term=bold	ctermbg=160		ctermfg=244 		guibg=#DF0000 |
	\ highlight SpellCap    	gui=bold 	term=bold	ctermbg=201		ctermfg=244			guibg=#FF00FF |
	\ highlight SpellRare   	gui=bold 	term=bold	ctermbg=76		ctermfg=232			guibg=#5FDF00 |
	\ highlight SpellLocal  	gui=bold 	term=bold	ctermbg=227		ctermfg=232			guibg=#AFFF00 |
    \ highlight Boolean													ctermfg=129			guifg=#AE81FF |
    \ highlight Character   											ctermfg=228			guifg=#E6DB74 |
    \ highlight Number      											ctermfg=121			guifg=#5FFFDF |
    \ highlight String      											ctermfg=227			guifg=#DFDF5F |
    \ highlight Conditional 	gui=bold 	term=bold					ctermfg=162			guifg=#F92672 |
    \ highlight Constant    	gui=bold 	term=bold					ctermfg=128			guifg=#AE81FF |
    \ highlight Cursor      	gui=bold	term=bold	ctermbg=202		ctermfg=255			guifg=#FFFFFF 	guibg=#DF5F00 |
	\ highlight TODO 			gui=bold	term=bold	ctermbg=202		ctermfg=160			guifg=#000000 	guibg=#DF005F |
	\ highlight FIXME 			gui=bold	term=bold	ctermbg=202		ctermfg=160			guifg=#000000 	guibg=#FD971f |
	\ highlight QUESTION 			gui=bold	term=bold	ctermbg=202		ctermfg=160			guifg=#000000 	guibg=#AE81FF |
	\ highlight ANSWER 			gui=bold	term=bold	ctermbg=202		ctermfg=160			guifg=#000000 	guibg=#AE81FF |
	\ highlight NOTE 			gui=bold	term=bold	ctermbg=202		ctermfg=160			guifg=#000000 	guibg=#E6DB74 |
	\ highlight IMPORTANT 			gui=bold	term=bold	ctermbg=202		ctermfg=160			guifg=#000000 	guibg=#FFFFFF |
	\ highlight REFACTOR 			gui=bold	term=bold	ctermbg=202		ctermfg=160			guifg=#000000 	guibg=#A6E22E |
	\ highlight ADD 			gui=bold	term=bold	ctermbg=202		ctermfg=160			guifg=#000000 	guibg=#DFDF5F |
	\ highlight REMOVE 			gui=bold	term=bold	ctermbg=202		ctermfg=160			guifg=#000000 	guibg=#F45666 |
	\ highlight COMPLETE			gui=bold	term=bold	ctermbg=202		ctermfg=160			guifg=#000000 	guibg=#00AF00 |
	\ highlight PRIORITY 			gui=bold	term=bold	ctermbg=202		ctermfg=160			guifg=#000000 	guibg=#66D9EF |
	\ highlight REFERENCE 			gui=bold	term=bold	ctermbg=202		ctermfg=160			guifg=#000000 	guibg=#D61355 |

    \ highlight Debug       	gui=bold 	term=bold					ctermfg=128	guifg=#BCA3A3 |
    \ highlight Define          				guifg=#66D9EF |
    \ highlight Delimiter       				guifg=#8F8F8F |
    \ highlight DiffAdd                 		guifg=#00005F   guibg=#00AF00 |
    \ highlight DiffChange      				guifg=#000000	guibg=#DFDF5F |
    \ highlight DiffDelete      				guifg=#FFFFFF	guibg=#DF005F |
    \ highlight DiffText    	gui=italic,bold 				guibg=#4C4745 |
	\ highlight Directory   	gui=bold 		guifg=#A6E22E |
    \ highlight Error           				guifg=#960050 	guibg=#1E0010 |
    \ highlight ErrorMsg    	gui=bold		guifg=#F92672 	guibg=#232526 |
    \ highlight Exception   	gui=bold 		guifg=#A6E22E |
    \ highlight Float           				guifg=#AE81FF |
    \ highlight FoldColumn      				guifg=#DF005F 	guibg=#000000 |
    \ highlight Folded          				guifg=#Df00AF	guibg=#000000 |
    \ highlight Function        				guifg=#A6E22E |
    \ highlight Identifier      				guifg=#FD971F |
    \ highlight Ignore          				guifg=#808080 |
    \ highlight IncSearch   	gui=inverse 	guifg=#C4BE89 	guibg=#000000 |
	\ highlight Keyword     	gui=bold    	guifg=#F92672 |
    \ highlight Label           				guifg=#E6DB74 |
    \ highlight Macro           				guifg=#C4BE89 |
    \ highlight SpecialKey      				guifg=#66D9EF |
	\ highlight MatchParen      				guifg=#000000	guibg=#FD971F |
    \ highlight ModeMsg         				guifg=#E6DB74 |
    \ highlight MoreMsg         				guifg=#E6DB74 |
    \ highlight Operator        				guifg=#F92672 |
 	\ highlight Statement  		gui=bold    	guifg=#F92672 |
    \ highlight StatusLine      				guifg=#455354 |
    \ highlight StatusLineNC    				guifg=#808080 	guibg=#080808 |
    \ highlight StorageClass	gui=italic  	guifg=#FD971F |
    \ highlight Structure       				guifg=#66D9EF |
    \ highlight Tag   			gui=italic  	guifg=#F92672 |
    \ highlight Title           				guifg=#ef5939 |
    \ highlight Todo       		gui=bold 		guifg=#FFFFFF |
    \ highlight Typedef         				guifg=#66D9EF |
    \ highlight Type            				guifg=#66D9EF |
    \ highlight Underlined      gui=underline	guifg=#808080 |
	\ highlight VertSplit       gui=bold		guifg=#808080 	guibg=#080808 |
    \ highlight VisualNOS                     					guibg=#403D3D |
    \ highlight Visual                        					guibg=#403D3D |
    \ highlight WarningMsg      gui=bold		guifg=#FFFFFF 	guibg=#333333 |
    \ highlight WildMenu        				guifg=#66D9EF 	guibg=#000000 |
    \ highlight OL1             				guifg=#A6E22E |
    \ highlight OL2             				guifg=#F92672 |
    \ highlight OL3             				guifg=#FD971F |
    \ highlight OL4             				guifg=#66D9EF |
    \ highlight OL5             				guifg=#AE81FF |
    \ highlight OL6             				guifg=#E6DB74 |
    \ highlight OL7             				guifg=#BCA3A3 |
    \ highlight OL8             				guifg=#F92672 |
    \ highlight OL9             				guifg=#465457 |
    \ highlight outlTags        gui=bold 		guifg=#A6E22E |
    \ highlight BT1             				guifg=#808080 |
    \ highlight BT2             				guifg=#808080 |
    \ highlight BT3             				guifg=#808080 |
    \ highlight BT4             				guifg=#808080 |
    \ highlight BT5             				guifg=#808080 |
    \ highlight BT6             				guifg=#808080 |
    \ highlight BT7             				guifg=#808080 |
    \ highlight BT8             				guifg=#808080 |
    \ highlight BT9             				guifg=#808080 |
    \ highlight PT1             				guifg=#AE81FF |
    \ highlight PT2             				guifg=#AE81FF |
    \ highlight PT3             				guifg=#AE81FF |
    \ highlight PT4             				guifg=#AE81FF |
    \ highlight PT5             				guifg=#AE81FF |
    \ highlight PT6             				guifg=#AE81FF |
    \ highlight PT7             				guifg=#AE81FF |
    \ highlight PT8             				guifg=#AE81FF |
    \ highlight PT9             				guifg=#AE81FF |
    \ highlight TA1             				guifg=#465457 |
    \ highlight TA2             				guifg=#465457 |
    \ highlight TA3             				guifg=#465457 |
    \ highlight TA4             				guifg=#465457 |
    \ highlight TA5             				guifg=#465457 |
    \ highlight TA6             				guifg=#465457 |
    \ highlight TA7             				guifg=#465457 |
    \ highlight TA8             				guifg=#465457 |
    \ highlight TA9             				guifg=#465457 |
    \ highlight UT1             				guifg=#808080 |
    \ highlight UT2             				guifg=#808080 |
    \ highlight UT3             				guifg=#808080 |
    \ highlight UT4             				guifg=#808080 |
    \ highlight UT5             				guifg=#808080 |
    \ highlight UT6             				guifg=#808080 |
    \ highlight UT7             				guifg=#808080 |
    \ highlight UT8             				guifg=#808080 |
    \ highlight UT9             				guifg=#808080 |
    \ highlight UB1             				guifg=#BCBCBC |
    \ highlight UB2             				guifg=#BCBCBC |
    \ highlight UB3             				guifg=#BCBCBC |
    \ highlight UB4             				guifg=#BCBCBC |
    \ highlight UB5             				guifg=#BCBCBC |
    \ highlight UB6             				guifg=#BCBCBC |
    \ highlight UB7             				guifg=#BCBCBC |
    \ highlight UB8             				guifg=#BCBCBC |
    \ highlight UB9             				guifg=#BCBCBC
augroup END

" Default Universal Theme
let g:thematic#defaults={
\ 'airline-theme': 'vimbrant',
\ 'background': 'dark',
\ 'laststatus': 2,
\}


