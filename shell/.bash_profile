# .bash_profile
# Get the aliases and functions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment and startup programs
PATH=$PATH:$HOME/.local/bin:$HOME/bin
export PATH
export SVN_EDITOR=vim

# local alias
alias s='source ~/.bashrc'
alias l='ls -ltrh --color'
alias ll='ls -ltrh --color'
alias grep='grep -n --color'
alias c='cd '
alias d='cd '
alias dc='cd '
alias v='vim '
alias vi='vim '
alias pwd='readlink -f .'
alias fgp='find . -type f | xargs grep --color -n '

alias L='readlink -f '
alias M='md5sum '

## personal dir
alias viv='vim ~/.vimrc'
alias vib='vim ~/.bashrc'

## WORKSPACE
# alias w1=''
# alias w2=''
# alias w3=''
# alias w4=''
# alias q1=''
# alias q2=''
# alias q3=''
# alias q4=''
# alias e1=''
# alias e2=''
# alias e3=''
# alias e4=''

alias w1='cd "~/Sagemaker"'
alias w2=''
alias w3=''
alias w4=''
alias q1='nvidai-smi'
alias q2='watch --color gpustat --color'
alias q3=''
alias q4=''
alias e1=''
alias e2=''
alias e3=''
alias e4=''
