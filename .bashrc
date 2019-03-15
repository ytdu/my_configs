# If not running interactively, don't do anything
case $- in
  *i*) ;;
    *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=5000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# install brew completion:
# brew isntall bash-completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export CLICOLOR='true'
export LSCOLORS='gxfxcxdxcxegedabagacad'
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
export EDITOR=vim
export PYTHONPATH='.:'$PYTHONPATH
export CUDA_VISIBLE_DEVICES=
export LC_CTYPE=C.UTF-8
export LC_ALL=C.UTF-8

alias la='ls -A'
alias ll='ls -alF'
alias l='ls -CF'
alias top='htop'

# allow core dump
ulimit -c unlimited
