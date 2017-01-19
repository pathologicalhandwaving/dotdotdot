# Bash Profile

export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=$GOPATH:/Users/Em/PROJECTS/gocode
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

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

