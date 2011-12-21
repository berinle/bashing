#!/bin/bash
# http://stackoverflow.com/questions/59838/how-to-check-if-a-directory-exists-in-a-bash-shell-script
for i in `ls`; do
	if [ -d "$i" ]; then
		echo -e "\nRunning GC on  project [$i] ...\n"
		cd "$i"
		git gc
		echo -e "\nDone with GC for project [$i]"
		cd ..
	fi
done

echo -e "\n\nDONE WITH ALL GCs ==> `date`"