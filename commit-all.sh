#!/bin/bash
# http://stackoverflow.com/questions/59838/how-to-check-if-a-directory-exists-in-a-bash-shell-script
for i in `ls`; do
	if [ -d "$i" ]; then
		echo "commiting all changes in all projects $i ..."
		cd "$i"
		git stash
		git svn rebase
		git svn dcommit 
		git stash pop
		cd ..
	fi
done

echo Done commiting