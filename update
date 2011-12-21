#!/bin/bash
# http://stackoverflow.com/questions/59838/how-to-check-if-a-directory-exists-in-a-bash-shell-script
for i in `ls`; do
	if [ -d "$i" ]; then
		echo -e "\nUpdating project [$i] ...\n"
		cd "$i"
		git stash
		git svn rebase
		git stash pop
		
		echo -e "\nDone updating project [$i]"
		cd ..
	fi
done

echo -e "\n\nDONE WITH ALL UPDATES ==> `date`"