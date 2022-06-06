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
alias python3='/usr/bin/python'

alias wenv='source ~/Dev/web-env/bin/activate'
alias denv='source ~/Dev/drone-env/bin/activate'
alias xenv='source ~/X/x-env/bin/activate'
alias datalab='conda activate DataLab'

alias blue-on='rfkill unblock bluetooth'
alias blue-off='rfkill block bluetooth'

alias broadband-on='nmcli radio wwan on'
alias broadband-off='nmcli radio wwan off'

alias wifi-on='nmcli radio wifi on'
alias wifi-off='nmcli radio wifi off'

alias mac='cd ~/Hackintosh/macOS-Simple-KVM/; HEADLESS=1 MEM=4G CPUS=2 SYSTEM_DISK=MyDisk.qcow2 ./headless.sh'


# wal -qi ~/Pictures/Fav/peakpx.jpg
# wal -qi ~/Pictures/wallpapers

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh

neofetch --ascii Red.txt # --colors 1 7 7 1 7 208 --ascii_colors 1 --color_blocks off
# cbatticon -u 7 -r 15 -l 25 -c 'poweroff'
