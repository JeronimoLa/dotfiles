###################
###   ALIASES   ### 
###################

alias la="ls -al"
alias funcs="grep -Eo 'function\s[A-Za-z].+\)' ~/.bashrc"
# Create python environment
alias venv="python -m venv .venv" 

# IP 
alias ipaddr='curl ifconfig.co/'

# TEMP SHIT
export SSLKEYLOGFILE=~/logs/ssl-keys.log
alias pg="cd ~/Documents/python_doc/playground"

# NAVIGATION
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# PYTHON BINARY SHORTCUT
alias py='python'

# COMMON DIRECTORIES
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias dc="cd ~/Documents"
alias p="cd ~/Documents/projects"


# FILE ATTRIBUTES
alias atime='stat -f "%Sa"' # Access (atime)
alias mtime='stat -f "%Sm"' # Modify (mtime)
alias ctime='stat -f "%Sc"' # Change (ctime)
alias btime='stat -f "%SB"' # Birth  (Btime)


# AWS
alias aws_start="aws ec2 start-instances --instance-ids"
alias aws_stop="aws ec2 stop-instances --instance-ids"

# C
alias c="gcc -g3 -Wall -o"

# MISC
alias grep='grep --color=auto'
alias clr='clear'
alias prettypath='echo -e ${PATH//:/\\n}'     # pretty path

# source ~/.git-prompt.sh
# if [ -f ~/.git-prompt.sh ]; then
#   source ~/.git-prompt.sh
#   export PS1='Geoff[\W]$(__git_ps1 "(%s)"): '
# fi

# GIT
alias gstat='git status'

