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

# grc

[[ -s "/usr/local/etc/grc.bashrc" ]] && source /usr/local/etc/grc.bashrc

source ~/.local/share/icons-in-terminal/icons_bash.sh

