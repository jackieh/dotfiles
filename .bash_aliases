# Default ls options.
# -F: append indicator (one of */=>@|) to entries.
# -h: with -l and -s, print sizes like 1K 234M 2G etc.
# -N: Print entry names without quoting.
alias ls="ls -FhN --color=always --group-directories-first"

# Default grep options.
# -s: Suppress error messages about nonexistent or unreadable files.
# -I: Do not search binary files.
alias ncgrep="grep -sI --color=never"
alias grep="grep -sI --color=always"

# Default less options.
# -R: interpret color codes but display other escape sequences in raw form.
alias less="less -R"

alias clear="clear; clear"
alias shutdown="sudo shutdown now"
alias reboot="sudo reboot"

alias bashconf="vim ~/.bash_aliases"
alias gitconf="vim ~/.gitconfig"
alias i3conf="vim ~/.config/i3/config"
alias termiteconf="vim ~/.config/termite/config"
alias vimconf="vim ~/.vimrc"

# Make cd list new directory contents.
function cd {
	builtin cd "$@" && ls
}

# Simple default prompt.
PS1=" \w > "

export TERM=xterm-256color
export TERMINAL=termite
export BROWSER=firefox
export VISUAL=vim
export EDITOR=vim

export PATH="$PATH:~/.bin:~/.local/bin:~/.scripts"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Disable software flow control feature so I can press ctrl-S without stuff getting weird.
# See https://unix.stackexchange.com/questions/72086/ctrl-s-hang-terminal-emulator
stty -ixon
