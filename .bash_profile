# Bash Profile


# Basic
source /Users/Em/.bashrc
source /Users/Em/.aliases
source /Users/Em/.apitokens
source /Users/Em/.apitokens
source /Users/Em/.exports
source /Users/Em/'.functions'

#source ~/.bash_prompt

source /Users/Em/.myscripts/osx
source /Users/Em/.myscripts/utils
source /Users/Em/.myscripts/texutils
source /Users/Em/.myscripts/mathutils



# Bashmarks
source ~/.local/bin/bashmarks.sh

export PATH="/usr/local/mysql/bin:$PATH"

export PATH="/usr/local/sbin:$PATH"

# iTerm Shell Integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"


# GO Path
export PATH="$PATH:/usr/local/opt/go/libexec/bin"

export PATH="/usr/local/opt/icu4c/sbin:$PATH"

eval "$(rbenv init -)"
