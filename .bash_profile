# Bash Profile

export HOME=/Users/Em:$PATH

# Basic
source /Users/Em/.bashrc
source /Users/Em/.aliases
source /Users/Em/.app-envs/apitokens
source /Users/Em/.exports
#source /Users/Em/'.functions'


#source ~/.bash_prompt

source /Users/Em/.osx
source /Users/Em/.utils
source /Users/Em/.texutils
source /Users/Em/.mathutils
source /Users/Em/.searched
source /Users/Em/.editor
source /Users/Em/.edits
#source /Users/Em/.apps
source ~/.functions

#source /Users/Em/.myscripts/library.sh

# colorls
source $(dirname $(gem which colorls))/tab_complete.sh


# Bashmarks
source ~/.local/bin/bashmarks.sh


# iTerm Shell Integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"



### LAST LINE
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
