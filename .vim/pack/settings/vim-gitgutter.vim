"" GIT-GUTTER SETTINGS
"" MODIFIED: 2018-10-24

"" ENABLED DEFAULT
let g:gitgutter_enabled = 1
"" ENABLE SIGNS DEFAULT
let g:gitgutter_signs = 1
"" LINE HIGHLIGHTING DEFAULT
let g:gitgutter_highlight_lines = 1

"" MAX CHANGES TO HIGHLIGHT
let g:gitgutter_max_signs = 500

"" ALWAYS ENABLE SIGN COLUMN
if exists('&signcolumn')
	set signcolumn=yes
else
	let g:gitgutter_sign_column_always=1
endif


