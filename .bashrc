case $- in
  *i*) ;;
    *) return;;
esac

HISTCONTROL=ignoreboth

shopt -s histappend

HISTSIZE=1000
HISTFILESIZE=5000

shopt -s checkwinsize

# install brew completion:
# brew isntall bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

export CLICOLOR='true'
export LSCOLORS='gxfxcxdxcxegedabagacad'
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
PATH=$PATH:/usr/local/mongodb/bin
PATH=$PATH:/Users/ytdu/bin
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export PYTHONPATH='/Users/ytdu/workspace/dnn:'$PYTHONPATH
export PYTHONPATH='/Users/ytdu/workspace/dnn_parser/src:'$PYTHONPATH
export PYTHONPATH='/Users/ytdu/workspace/ni:'$PYTHONPATH
export PYTHONPATH='/Users/ytdu/workspace/n3lu:'$PYTHONPATH
export PYTHONPATH='.:'$PYTHONPATH
export PYTHONPATH='/Users/ytdu/workspace/word-embeddings-benchmarks:'$PYTHONPATH
export CUDA_VISIBLE_DEVICES=

alias la='ls -A'
alias ll='ls -alF'
alias l='ls -CF'
alias vi='/usr/local/Cellar/vim/8.1.0001/bin/vim'
alias vim='/usr/local/Cellar/vim/8.1.0001/bin/vim'
#alias python='/usr/local/bin/python3'
alias sshhydra='ssh 10.8.0.114'
alias sshocto='ssh 10.8.0.42'
alias sshoctp='ssh 10.8.0.46'
alias sshoctq='ssh 10.8.0.106'
alias sshoctr='ssh 10.8.0.206'
alias sshocts='ssh 10.8.0.182'
alias sshoctt='ssh 10.8.0.186'
alias sshoctu='ssh 10.8.0.34'
alias sshoctv='ssh 10.8.0.250'
alias sshoctw='ssh 10.8.0.14'
alias sshmini-gw='ssh 10.8.0.94'
alias sshquad='ssh 10.8.0.62'
alias sshquad1='ssh 10.8.0.150'
alias sshquad2='ssh 10.8.0.22'
alias sshquad3='ssh 10.8.0.54'
alias sshquad4='ssh 10.8.0.210'
alias sshquad5='ssh 10.8.0.218'
alias sshquad6='ssh 10.8.0.202'
alias top='htop'
alias gdiff='git diff --ignore-space-at-eol'
alias gpush='git push -f upstream'
alias gpull='git pull -f upstream'
