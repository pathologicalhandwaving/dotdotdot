alias config='/usr/bin/git --git-dir=/Users/Em/.myconfig/ --work-tree=/Users/Em'



#PROMPT_USER_COLOR="$(tput bold)$(tput setaf 9)" # BOLD RED
#source ~/.bash_prompt

# Run twolfson/sexy-bash-prompt
#. ~/.bash_prompt

# Autocompletion itermocil
complete -W "$(itermocil --list)" "itermocil "


if [ -f /usr/local/share/liquidprompt ]; then
    . /usr/local/share/liquidprompt
fi

#function _update_ps1() {
#	PS1="$(~/powerline-shell.py $? 2> /dev/null)"
#}
#if [ "$TERM" != "linux" ]; then
#	PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
#fi


source ~/.xsh


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
