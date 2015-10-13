# GIT
alias g='git'
# Autocomplete for 'g' as well
complete -o default -o nospace -F _git g

alias gs='git status'
alias gss='git status --short --branch'

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

alias gmt='git mergetool'

alias gb='git branch'
alias gba='git branch -a'
alias gbc='git branch --contains'
alias gbn='git rev-parse --abbrev-ref HEAD'
alias gbv='git branch -vv'
alias gbd='f() { git push origin :refs/heads/$1; git remote prune origin; git branch -D $1; }; f'
# prune-remotes
alias gbp='for remote in `git remote`; do git remote prune $remote; done'

alias gp='git push'
alias gpr='git push --set-upstream origin $(gbn)'
alias gpt='git push --tags'

# Log
alias gl='git log'
alias gl3='git log -3'
alias gll='git log -8 --no-merges'	# last
alias glls="git log -8 --no-merges --numstat" # last stat
alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(bold yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias glga="glg --all"
alias glgf="glg -p --name-status"
alias gls="git log -S"	# search string in the diff
alias glyst="git log --author=Hong --all --decorate --since=yesterday"
alias glf='git log -u'
alias glfirstdate='git log --date-order --date=iso --pretty="format:%ad" --reverse | head -1'
# Log

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

# remove a file from index
alias gunadd="git reset HEAD"
alias gunmd="git status | grep modified | awk '{print $2}' | xargs git checkout" # unmodified
alias gundo="git reset HEAD~1 --mixed" 
alias greset="git reset --hard HEAD"
alias gclean='git clean -fd'
# alias unstage='git reset HEAD'

alias gsh='git stash'
alias gshp='git stash pop'
alias gshl='git stash list'
alias gshc='git stash clear'

# -----Tag
# show a list of tags sorted by when they were tagged
alias gtagsd='git for-each-ref --sort=taggerdate refs/tags --format=\"%(refname:short)\"'
# show tags and any tag annotation (tito adds tag annotations for example)
alias gtags='git tag -n1 -l'
# -----Tag

# -----Merge
alias gconflicted="git grep --name-only --full-name '<<<<<<< HEAD'"
# -----Merge

# branches that are merged locally already, note this includes master itself
alias gbnew="git branch --merged develop"
alias gbup='git checkout develop && git pull && git checkout - && git merge -s recursive -X patience develop'
# delete branch that have merged to develop
alias gpurge='git branch -d $(git branch --merged develop | grep -v -e "*" -e "develop")'
# show a list of every branch and show their latests commit, sorted by last commit
alias gbrs='for C in $(git for-each-ref --sort=committerdate refs/heads --format="%(refname:short)") ; do git show  -s --pretty=format:"%Cgreen%ci %Cblue%cr%Creset  $C" "$C" -- ; git show --stat -s $C ; echo; done'
alias gbrsr='for C in $(git for-each-ref --sort=committerdate refs/remotes/origin --format="%(refname:short)") ; do git show  -s --pretty=format:"%Cgreen%ci %Cblue%cr%Creset  $C" "$C" -- ; git show --stat -s $C ; echo; done'
alias gbrfc='for C in $(git for-each-ref --sort=committerdate refs/heads --format="%(refname:short)"| tac) ; do git show -s --pretty=format:"%Cgreen%ci %Cblue%cr%Creset  $C" "$C" -- ; git --no-pager log  -p -1 $C -- $0; echo; done'

alias gcfge='git config --global -e'
alias galiasc="git config --list | grep 'alias\.' | sed 's/alias\.\([^=]*\)=\(.*\)/\1\ = \2/' | sort"
alias galias="cat ~/gitalias.sh | grep 'alias' | sed 's/alias \([^=]*\)=\(.*\)/\1\ = \2/'"
alias gurl="git config --get remote.origin.url"

# from https://gist.github.com/492227
alias glost="git fsck | awk '/dangling commit/ {print $3}' | git show --format='SHA1: %C(yellow)%h%Creset %f' --stdin | awk '/SHA1/ {sub(\"SHA1: \", \"\"); print}'"
alias gignored="git ls-files --exclude-standard --ignored --others"
# based on "buggyfiles" above and https://github.com/cypher/dotfiles/blob/master/bin/git-churn
alias gchurn="git log -M -C --name-only --format=\"format:%n\" | grep . | sort | uniq -c | sort -n"
# uh, don't do this. list authors by numbers of commits. probably needs a .mailmap
alias gchurners='git shortlog -sn --'
alias gauthors="git log --pretty=format:%aN | sort | uniq -c | sort -rn"
# who reverts the most. Totally useless
alias gpoppers='git log -M -C --format="format:%aN" --grep "Revert" | sort | uniq -c | sort -n'
# search for a pattern in branch names, file names, or file contents
alias gfind='f() { (git branch -a ; git ls-files) | grep $1; GIT_PAGER=cat git grep $1; }; f'
alias groot='cd `git rev-parse --show-toplevel`'
alias gfsize='git ls-tree -r -t -l --full-name HEAD | sort -rn -k 4 | less'


#alias rmorig='find -name *.orig | xargs rm -f'
alias rmorig='gs | grep .orig | xargs rm -f'