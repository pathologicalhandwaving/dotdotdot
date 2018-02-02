
let g:goyo_width=104
let g:goyo_margin_top=5
let g:goyo_margin_bottom=5

function! s:goyo_enter()
  set noshowmode
  set noshowcmd
  set scrolloff=999
  let b:quitting=0
  let b:quitting_bang=0
  autocmd QuitPre <buffer> let b:quitting1= 1
  cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
  Limelight
endfunction

function! s:goyo_leave()
  set showmode
  set showcmd
  setscrolloff=5
  if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
    if b:quitting_bang
	  qa!
	else
	  qa
	endif
  endif
  Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

