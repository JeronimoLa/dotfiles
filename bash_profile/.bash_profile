
##################################################
# Does something for homebrew - need to find out
##################################################
eval "$(/opt/homebrew/bin/brew shellenv)"


#################################
# PATHS
#################################
# python takes precedence here from python in homebrew
export PATH=$PYTHON11/bin:$GOPATH/bin:$GOROOT/bin:$JAVA_HOME/bin:$MAVEN_HOME/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH

#export PATH=$GOPATH/bin:$GOROOT/bin:$JAVA_HOME/bin:$MAVEN_HOME/bin:/Users/jeronimo/bin:/Users/jeronimo/.cargo/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/Users/jeronimo/opt/anaconda3/condabin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/VMware:/Users/jeronimo/bin/chromedriver:$PYTHON11/bin:$PATH

#export PATH=$GOPATH/bin:$GOROOT/bin:$JAVA_HOME/bin:$MAVEN_HOME/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PYTHON11/bin:$PATH

####################
# JAVA & MAVEN
####################
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-20.jdk/Contents/Home
# export MAVEN_HOME=/usr/local/apache-maven-3.9.4
export MAVEN_HOME=/Users/jeronimo/Downloads/apache-maven-3.9.9
export PATH=$PATH:$MAVEN_HOME/bin




[ -f ~/.fzf.bash ] && source ~/.fzf.bash
eval "$(thefuck --alias)"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
export PATH=$PATH:$HOME/go/bin


[ -f "/Users/jeronimo/.ghcup/env" ] && . "/Users/jeronimo/.ghcup/env" # ghcup-env
source ~/.bash_aliases


#######
# Go 
######
# export GOROOT=/usr/local/go
# export GOPATH=$HOME/go/src


###########################################################################
# CONDA     !! Contents within this block are managed by 'conda init' !!
###########################################################################
# __conda_setup="$('/Users/jeronimo/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/jeronimo/opt/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/jeronimo/opt/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/jeronimo/opt/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda initialize <<<
# conda deactivate


##########################################
# NVM - package manager for node versions
##########################################
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


#######################################################################
# Sets prompt for terminal - references another files, maybe > .zshrc
#######################################################################
export PS1="\W → "
source ~/.bashrc





 
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


[[ -f ~/.bashrc ]] && . ~/.bashrc # ghcup-env


# configure PROMPT_COMMAND which is executed each time before PS1
export PROMPT_COMMAND=color_my_prompt
 
# if .git-prompt.sh exists, set options and execute it
if [ -f ~/.git-prompt.sh ]; then
  GIT_PS1_SHOWDIRTYSTATE=true # shows * or a + for unstaged and staged changes, respectively
  GIT_PS1_SHOWSTASHSTATE=true
  GIT_PS1_SHOWUNTRACKEDFILES=true # shows % if there are any untracked files
  GIT_PS1_SHOWUPSTREAM="auto" # shows <, >, <>, or = when your branch is behind, ahead, diverged from, or in sync with the upstream branch, respectively
  GIT_PS1_HIDE_IF_PWD_IGNORED=true
  GIT_PS1_SHOWCOLORHINTS=true
  . ~/.git-prompt.sh
fi


