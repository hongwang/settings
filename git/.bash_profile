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


# GIT
alias g='git'
# Autocomplete for 'g' as well
complete -o default -o nospace -F _git g

alias gs='git status'
alias gss='git status --short'

alias ga='git add -A'

alias gcm='git commit -m'
alias gcam='git commit --amend' # edit
alias gcama="git commit --amend -a"

alias gd='git diff'
alias gdf='git diff --name-status'
alias gdc='git diff --cached'
alias gdcf='git diff --cached --name-status'
alias gdt='git difftool -y'
alias gdtc='git difftool -y --cached'

alias gb='git branch'
alias gba='git branch -a'
alias gbc='git branch --contains'

alias gp='git push'

alias gl='git log'
alias gl3='git log -3'
alias gll='git log -8 --no-merges'	# last
alias glls="git log -8 --no-merges --numstat" # last stat
alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(bold yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias glga="glg --all"
alias glgf="glg -p --name-status"
alias gls="git log -S"	# search string in the diff
alias glyst="log --author=Hong --all --decorate --since=yesterday"

alias go='git checkout'
alias gob='git checkout -b'

alias gf='git fetch'
alias gpu='git pull'
alias gcl='git clone'
alias gr='git reset'

alias grl="git reflog --format='%Cred%h%Creset %C(bold cyan)%<|(17)%gd%Creset %C(auto,bold yellow)%d%C(auto,reset)%gs (%s) %Cgreen%ci%C(reset)'"

alias gsubup="git submodule update --init --recursive"

alias gsv="git add -A && git commit -m"	# save
alias gsvp="git add -A && git commit -m 'SAVEPOINT'" # save with message 'savepoint'
alias gwip="git add -u && git commit -m 'WIP'"	# work in process

alias gunmd="git status | grep modified | awk '{print $2}' | xargs git checkout" # unmodified
alias gundo="git reset HEAD~1 --mixed" 
alias greset="git reset --hard HEAD"
# alias unstage='git reset HEAD'

# show a list of tags sorted by when they were tagged
alias gtags='git for-each-ref --sort=taggerdate refs/tags --format=\"%(refname:short)\"'
# show a list of every branch and show their latests commit, sorted by last commit
#alias gbrs="sh -c 'for C in $(git for-each-ref --sort=committerdate refs/heads --format=\"%(refname:short)\") ; do git show  -s --pretty=format:\"%Cgreen%ci %Cblue%cr%Creset  $C\" \"$C\" -- ; git show --stat -s $C ; echo; done'"
#alias gbrsr="sh -c 'for C in $(git for-each-ref --sort=committerdate refs/remotes/origin --format="%(refname:short)") ; do git show  -s --pretty=format:"%C(bold cyan)%ci%Creset %C (green)%cr%Creset  %C(bold yellow)$C%Creset" "$C" -- ; git show --stat -s $C ; echo; done'"

alias gcfge='git config --global -e'
alias galias="git config --list | grep 'alias\.' | sed 's/alias\.\([^=]*\)=\(.*\)/\1\ = \2/' | sort"
alias gurl="git config --get remote.origin.url"

# from https://gist.github.com/492227
alias glost="git fsck | awk '/dangling commit/ {print $3}' | git show --format='SHA1: %C(yellow)%h%Creset %f' --stdin | awk '/SHA1/ {sub(\"SHA1: \", \"\"); print}'"
# search for a pattern in branch names, file names, or file contents
alias gfind='f() { (git branch -a ; git ls-files) | grep $1; GIT_PAGER=cat git grep $1; }; f'
alias groot='cd `git rev-parse --show-toplevel`'

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