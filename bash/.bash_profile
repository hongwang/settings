# source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

if [ -f "${HOME}/gitalias.sh" ] ; then
  source "${HOME}/gitalias.sh"
fi

# Set PATH so it includes user's private bin if it exists
# if [ -d "${HOME}/bin" ] ; then
#   PATH="${HOME}/bin:${PATH}"
# fi

# Set MANPATH so it includes users' private man if it exists
# if [ -d "${HOME}/man" ]; then
#   MANPATH="${HOME}/man:${MANPATH}"
# fi

# Set INFOPATH so it includes users' private info if it exists
# if [ -d "${HOME}/info" ]; then
#   INFOPATH="${HOME}/info:${INFOPATH}"
# fi


# One char shortcuts
alias w='which'
alias p='python'
alias l='ls -l'

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

#copy the working directory into the clipboard
#alias cwd='pwd | pbcopy' # for linux
alias cwd='pwd | clip' # for window

if [ -f "${HOME}/homemode.sh" ] ; then
  source "${HOME}/homemode.sh"
fi

if [ -f "${HOME}/workmode.sh" ] ; then
  source "${HOME}/workmode.sh"
fi

