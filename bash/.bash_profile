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
alias cwd='pwd | pbcopy'

PATH='/c/Windows/Microsoft.NET/Framework64/v4.0.30319':$PATH
PATH='/c/Program Files (x86)/Microsoft SDKs/Windows/v7.0A/Bin':$PATH
PATH='/c/Program Files/nodejs':$PATH
PAHT='/c/Users/hong.wangxh/AppData/Roaming/npm':$PATH
PATH='/d/Program Files/Sublime Text 3':$PATH
#PATH=/c/Windows/System32/inetsrv:$PATH 	#IIS
export PATH

export stash='/d/stash'
export axisrepo=$stash'/labs-ops/axis'
export bluerepo=$stash'/labs-blue'
export cmmtyrepo=$stash'/labs-solution/community'
export dbrepo=$stash'/database/sql-source'
export distrepo=$stash'/labs-share/ui-shared-dist'
export frmwrepo=$stash'/frameworks'
export schrepo=$stash'/labs-school/school'
export sharerepo=$stash'/labs-share'
export svccrepo=$stash'/labs-share/service-clients'
export taf='team/ateam/feature'