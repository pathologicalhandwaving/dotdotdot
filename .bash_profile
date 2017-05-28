# Bash Profile

export PATH="/usr/local/mysql/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
source ~/.bashrc
source ~/.aliases
#source ~/.mypaths
source /Users/Em/.myscripts/apitokens
source /Users/Em/.exports
source /Users/Em/'.functions'
#source ~/.bash_prompt
source /Users/Em/.myscripts/osx
source /Users/Em/.myscripts/study
source /Users/Em/.myscripts/utils
source /Users/Em/.myscripts/texutils
source /Users/Em/.myscripts/mathutils
source /Users/Em/.myscripts/dtutils
#source /Users/Em/.myscripts/

# Bashmarks
source ~/.local/bin/bashmarks.sh

# iTerm Shell Integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"


source ~/.xsh


