# BASHRC

# Bare git repo for backing up dotfiles
alias config='/usr/bin/git --git-dir=/Users/Em/.myconfig/ --work-tree=/Users/Em'

# LiquidPrompt
#if [ -f /usr/local/share/liquidprompt ]; then
#    . /usr/local/share/liquidprompt
#fi

#export PS1="$PS1\$(git-radar --bash --fetch)"

# Bash Completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	$(brew --prefix)/etc/bash_completion
fi

#alias TODO=~/bin/TODO.sh;

#if [[ -n $PROMPT_COMMAND ]]; then
#    if [[ $PROMPT_COMMAND = *";" || $PROMPT_COMMAND = *"; " ]]; then
#        PROMPT_COMMAND="$PROMPT_COMMAND ~/bin/TODO.sh";
#    else
#        PROMPT_COMMAND="$PROMPT_COMMAND; ~/bin/TODO.sh";
#    fi
#else
#    PROMPT_COMMAND="~/bin/TODO.sh";
#fi

