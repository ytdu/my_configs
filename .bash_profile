if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi 
[ -f ~/.git-bash-completion.sh ] && ~/.git-bash-completion.sh

export CLICOLOR='true'
export LSCOLORS='gxfxcxdxcxegedabagacad'

alias la='ls -A'
alias ll='ls -alF'
alias grep='grep --color=auto'
alias vim='/usr/local/Cellar/vim/8.0.0304/bin/vim'
alias vimdiff='/usr/local/Cellar/vim/8.0.0304/bin/vimdiff'
alias vimtutor='/usr/local/Cellar/vim/8.0.0304/bin/vimtutor'
