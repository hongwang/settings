############
#	- Git �� Bash autocompletion
#		-	Linux����Ҫ���b 
#		-	Git for windows Ĭ���Ѿ�����
#	- Refs
#		- http://nuclearsquid.com/writings/git-tricks-tips-workflows/
############

# [include]
# git config --global include.path "~/.gitconfig-local" # include a local file that have name and email

# [user]
# git config --global user.name ""
# git config --global user.email ""


# [core]
git config --global core.quotepath false	# ��������ļ�������ʾ����
git config --global core.ignorecase true	# ���Դ�Сд

# windows
# git config --global core.autocrlf true	# �������з�ת��������ʱʹ��LF��Ϊ���з������ʱ�Զ��滻��CRLF
# git config --system core.fileMode false	# ��ֹ���ļ�Ȩ�޵ĸ���

# Linux
# git config --global core.autocrlf input	# �������з�ת��������ʱʹ��LF��Ϊ���з������ʱ��ת��


# [color] ������ɫ
# colors and presentation options:
# - normal, black, red, green, yellow, blue, magenta, cyan, or white
# - bold, dim, ul, blink, and reverse
git config --global color.ui true
git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto
git config --global color.interactive true

git config --global color.branch.current 'red reverse'
git config --global color.branch.local 'bold yellow'
git config --global color.branch.remote 'green'
git config --global color.branch.upstream 'bold cyan'
git config --global color.branch.plain 'bold white'

git config --global color.status.added 'bold cyan'
git config --global color.status.changed 'red'
git config --global color.status.untracked 'bold yellow'
git config --global color.status.branch 'red reverse'
git config --global color.status.plain 'bold cyan'

git config --global color.diff.meta 'yellow bold'
git config --global color.diff.frag 'magenta bold'
git config --global color.diff.plain 'white bold'
git config --global color.diff.old 'red bold'
git config --global color.diff.new 'bold cyan'
git config --global color.diff.commit 'blue reverse'
git config --global color.diff.func 'green bold'

git config --global color.decorate.branch 'bold blue ul'
git config --global color.decorate.remoteBranch 'bold blue ul'
git config --global color.decorate.HEAD 'red white '

git config --global color.grep.context 'white'
git config --global color.grep.filename 'bold cyan'
git config --global color.grep.linenumber 'bold green'
git config --global color.grep.match 'red'


# [format]
git config --global format.pretty "%Cred%h%Creset %C(bold cyan)%an%Creset - %s %Cgreen(%ad)%Creset" # default log --pretty format
# https://www.kernel.org/pub/software/scm/git/docs/git-log.html#_pretty_formats

# [log]
git config --global log.date 'iso'
git config --global log.decorate 'short'
git config --global log.abbrevCommit true


# [advice]
git config --global advice.statusHints false	# Disable ��how to stage/unstage/add�� hints given by git status

# [branch]
git config --global branch.autosetupmerge true	# When branching off a remote branch, automatically let the local branch track the remote branch

# [grep]
git config --global grep.lineNumber true

# [push]
git config --global push.default upstream	#push����Ӧ�ķ�֧, Git 2.0 Ĭ��ֵΪsimple��ò�ƺ�upstreamһ��

# [diff]
git config --global diff.mnemonicprefix true # Tell git diff to use mnemonic prefixes (index, work tree, commit, object) instead of the standard a and b notation

git config --global diff.tool diffmerge
git config --global difftool.diffmerge.cmd 'diffmerge "$LOCAL" "$REMOTE"'

# [merge]
git config --global merge.stat true	# Always show a diffstat at the end of a merge
git config --global mergetool.keepBackup false	# don��t store backups

git config --global merge.tool diffmerge
git config --global mergetool.diffmerge.cmd 'diffmerge --merge --result="$MERGED" "$LOCAL" "$BASE" "$REMOTE"'
git config --global mergetool.diffmerge.trustExitCode true

#alias name
git config --system alias.st status
git config --system alias.ci commit
git config --system alias.co checkout
git config --system alias.br branck
