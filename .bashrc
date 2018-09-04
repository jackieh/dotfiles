#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Adding color
alias ls='ls -FhN --color=always --group-directories-first'
alias crep="grep --color=always"
alias ccat="highlight --out-format=xterm256"
alias clear="clear; clear"
alias shutdown="sudo shutdown now"
alias reboot="sudo reboot"

function cd {
	builtin cd "$@" && ls
}

# Default prompt
PS1=' \w > '

export TERM=xterm-256color
export TERMINAL=termite
export BROWSER=firefox
export EDITOR=vim

export PATH="$PATH:~/.bin:~/.local/bin:~/.scripts"
