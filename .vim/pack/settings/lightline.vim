"" LIGHTLINE SETTINGS
"" MODIFIED: 2018-03-14



let g:lightline = {
    \ 'colorscheme': 'solarized',
    \ 'active': {
    \   'left':[ [ 'mode', 'paste'],
    \            [ 'gitbranch', 'filename', 'lineinfo'
    \   ]
    \ },
        \ 'component': {
        \   'lineinfo': ' %3l:%-2v',
        \ },
    \ 'component_function': {
    \   'gitbranch': 'fugitive#head',
    \ },
    \ 'separator': { 'left': ' ', 'right': ' ' },
    \ 'subseparator': { 'left': ' ', 'right': ' ' }
    \ }


let g:lightline.separator = {
    \ 'left': '🐙', 'right': '🐙'
  \}

let g:lightline.subseparator = {
    \ 'left': '⎮', 'right': '⎮'
  \}
