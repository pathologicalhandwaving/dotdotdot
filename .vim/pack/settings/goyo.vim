"" GOYO SETTINGS
"" MODIFIED: 2018-01-24


"" ENSURE :q QUITS WHEN GOYO IS ACTIVE
function! s:goyo_enter()
	let b:quitting=0
	let b:quitting_bang=0
	autocmd QuitPre <buffer? let b:quitting=1
	cabbrev <buffer> q! let b:quitting_bang=1 <bar> q!
endfunction

function! s:goyo_leave()
	" QUIT IF ONLY REMAINING BUFFER
	if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))==1
		if b:quitting_bang
			qa!
		else
			qa
		endif
	endif
endfunction

"" LIMELIGHT INTEGRATION
function! s:goyo_enter()
	silent !tmux set status off
	silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
	set noshowmode
	set noshowcmd
	set scrolloff=999
	Limelight
	" ...
endfunction

function! s:goyo_leave()
	silent !tmux set status on
	silent !tmux list-panes -F '\#F' | grep -q Z && tmuz resize-pane -Z
	set showmode
	set showcmd
	set scrolloff=5
	Limelight!
	" ...
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
