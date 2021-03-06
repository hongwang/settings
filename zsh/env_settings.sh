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
alias clr='clear'
alias grep='grep --color=auto'

alias -s py=vim
alias -s js=vim
alias -s c=vim

# also can try 'x' alias from extract plugin
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'

#copy the working directory into the clipboard
alias cwd='pwd | clipcopy' # for linux
alias o2w='open_command $(pwd)'
alias ccat='colorize'	# depend on colorize plugin


source ~/Codes/hong/settings/git/gitalias.sh

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

function vcsv() { zcat "$1" > /tmp/vcsv.csv && tabview /tmp/vcsv.csv }

function ssht() { ssh -NTf -M -L 2222:$1:22 live-mc;ssh root@localhost -p 2222 }

function sshtx() { ssh -T -O "exit" live-mc }
