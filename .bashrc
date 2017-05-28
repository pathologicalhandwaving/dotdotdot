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

#LDFLAGS:  -L/usr/local/opt/libffi/lib

#PKG_CONFIG_PATH: /usr/local/opt/libffi/lib/pkgconfig

#LDFLAGS:  -L/usr/local/opt/readline/lib

#CPPFLAGS: -I/usr/local/opt/readline/include

PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
