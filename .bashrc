# BASHRC

# Bare git repo for backing up dotfiles
alias config='/usr/bin/git --git-dir=/Users/Em/.myconfig/ --work-tree=/Users/Em'

# LiquidPrompt
if [ -f /usr/local/share/liquidprompt ]; then
    . /usr/local/share/liquidprompt
fi

