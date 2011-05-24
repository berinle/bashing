#!/bin/bash
# http://stackoverflow.com/questions/59838/how-to-check-if-a-directory-exists-in-a-bash-shell-script
for i in `ls`; do
	if [ -d "$i" ]; then
		echo "updating $i ..."
		cd "$i"
		git stash
		git svn rebase
		git stash pop
		cd ..
	fi
done

echo Done updating