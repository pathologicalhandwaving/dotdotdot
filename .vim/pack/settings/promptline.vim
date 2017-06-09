"" Promptline Settings

" airline.vim
" airline_insert.vim
" airline_visual.vim

" lightline.vim
" lightline_insert.vim
" lightline_visual.vim
"
let g:promptline_preset = 'full'
let g:promptline_theme = 'solarized'

""let git_sha_slice = {
""	\'funtion_name': 'git_sha',
""	\'funtion_body': [
""		\'function git_sha {',
""		\' 	local sha',
""		\'  sha=$(git rev-parse --short HEAD 2>/dev/null) || return 1',
""		\'  printf "%s" "$sha"',
""		\'}']}
""


""let g:promptline_preset = {
""	\'a' : [ promptline#slices#cwd() ],
""	\'b' : [ promptline#slices#vcs_branch() '$(git rev-parse --short HEAD 2>/dev/null)' ],
""	\'c' : [ promptline#slices#git_status() ],
