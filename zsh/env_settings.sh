#!/bin/zsh

export EDITOR='vim -w'


# Virtual Environment
# export WORKON_HOME=$HOME/.virtualenvs
# export PROJECT_HOME=$HOME/Projects
# source /usr/local/bin/virtualenvwrapper.sh

# Owner
export USER_NAME="Hong"
# eval "$(rbenv init -)"


# One char shortcuts
alias w='which'
alias p='python'
alias ll='ls -al'
alias clr='clear'
alias grep='grep --color=auto'

alias -s py=vim
alias -s js=vim
alias -s c=vim
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'

#copy the working directory into the clipboard
alias cwd='pwd | pbcopy' # for linux
#alias cwd='pwd | clip' # for window



if [ -f "${HOME}/gitalias.sh" ] ; then
  source "${HOME}/gitalias.sh"
fi

if [ -f "${HOME}/homemode.sh" ] ; then
  source "${HOME}/homemode.sh"
fi

if [ -f "${HOME}/workmode.sh" ] ; then
  source "${HOME}/workmode.sh"
fi


# FileSearch
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

# mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }