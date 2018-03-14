"" LIGHTLINE SETTINGS
"" MODIFIED: 2018-03-14



let g:lightline = {
    \ 'colorscheme': 'solarized',
    \ },
    \ 'component': {
    \   'lineinfo': '  %3l:%-2v',
    \ },
    \ 'component_function': {
    \   'readonly': 'LightlineReadonly',
    \   'fugitive': 'LightlineFugitive'
    \ },
    \ 'separator': { 'left': ' ', 'right': ' ' },
    \ 'subseparator': { 'left': ' ', 'right': ' ' }
    \ }

function! LightlineReadonly()
    return &readonly ? ' ' : ''
endfunction
	
function! LightlineFugitive()
    if exists('*fugitive#head')
        let branch = fugitive#head()
        return branch !=# '' ? ' '.branch : ''
    endif
    return ''
endfunction
