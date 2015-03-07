# To the extent possible under law, the author(s) have dedicated all 
# copyright and related and neighboring rights to this software to the 
# public domain worldwide. This software is distributed without any warranty. 
# You should have received a copy of the CC0 Public Domain Dedication along 
# with this software. 
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>. 

# base-files version 4.1-1

# ~/.bash_profile: executed by bash(1) for login shells.

# The latest version as installed by the Cygwin Setup program can
# always be found at /etc/defaults/etc/skel/.bash_profile

# Modifying /etc/skel/.bash_profile directly will prevent
# setup from updating it.

# The copy in your home directory (~/.bash_profile) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benifitial to all, please feel free to send
# a patch to the cygwin mailing list.

# User dependent .bash_profile file

# source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
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

if [ -f "${HOME}/gitalias.sh" ] ; then
  source "${HOME}/gitalias.sh"
fi

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


PATH=/cygdrive/c/Windows/Microsoft.NET/Framework64/v4.0.30319:$PATH
PATH='/cygdrive/c/Program Files (x86)/Microsoft SDKs/Windows/v7.0A/Bin':$PATH
PATH='/cygdrive/c/Program Files/nodejs':$PATH
PAHT=/cygdrive/c/Users/hong.wangxh/AppData/Roaming/npm:$PATH
#PATH=/cygdrive/c/Windows/System32/inetsrv:$PATH 	#IIS
export PATH

export stash='/cygdrive/d/stash'
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