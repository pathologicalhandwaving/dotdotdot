# Bash Profile


export PATH="/usr/local/sbin:$PATH"
source ~/.bashrc
source ~/.aliases
source ~/.mypaths
source ~/.exports
source ~/'.functions'
source ~/.bash_prompt
source ~/.apitokens
source ~/.osx
source ~/.study
source ~/.utils
source ~/.texutils
source ~/.mathutils

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"


source ~/.xsh


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
