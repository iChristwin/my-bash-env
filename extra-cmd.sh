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
alias py='python3.10'
alias wenv='source ~/Dev/web-env/bin/activate'
alias denv='source ~/Dev/drone-env/bin/activate'
alias xenv='source ~/X/x-env/bin/activate'

alias blue-on='rfkill unblock bluetooth'
alias blue-off='rfkill block bluetooth'

alias broadband-on='nmcli radio wwan on'
alias broadband-off='nmcli radio wwan off'

alias wifi-on='nmcli radio wifi on'
alias wifi-off='nmcli radio wifi off'

alias mac='cd ~/Hackintosh/macOS-Simple-KVM/; HEADLESS=1 MEM=4G CPUS=2 SYSTEM_DISK=MyDisk.qcow2 ./headless.sh'

neofetch

