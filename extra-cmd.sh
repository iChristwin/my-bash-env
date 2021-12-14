PS1_old=$PS1
PS1=$PS1_old
export PS1
export PS1_old

# Use crazy awesome promt
if [ -f ~/my-bash-env/prompt.sh ]; then
	. ~/my-bash-env/prompt.sh
fi

# Change umask to make directory sharing easier
umask 0002

# Ignore duplicates in command history and increase history size to 1000 lines
export HISTCONTROL=ignoredups
export HISTSIZE=1000

# Add some helpful aliases
alias l.='ls -d .* --color=auto'
alias ll='ls -l --color=auto'
alias lx='ls -hoAX --color=auto'
alias py='python3.8'
alias wifi-on='nmcli radio wifi on'
alias wifi-off='nmcli radio wifi off'
# alias vnv='source ~/Nest/venv/bin/activate'
