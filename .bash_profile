# Bash Profile
export HOME=$HOME:/Users/Em/

export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=$GOPATH:/Users/Em/PROJECTS/gocode

source ~/.bashrc
source ~/.aliases
source ~/.mypaths
source ~/.exports
source ~/'.functions'
source ~/.bash_prompt
source ~/.apitokens


test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
