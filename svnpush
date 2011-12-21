#!/bin/bash
# http://stackoverflow.com/questions/59838/how-to-check-if-a-directory-exists-in-a-bash-shell-script
# http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_08_02.html

echo " 
[1] eras-commons
[2] eras-core-service
[3] eras-core-service-commons
[4] eras-document-service
[5] eras-document-service-commons
[6] eras-parent
[7] eras-pdws-web
[8] eras-persistence
[9] aamc-commons

Which project do you want to push to SVN? (comma seperate for multiple projects):"

PROJECT=""
read IN

IFS=',' read -ra p <<< "$IN"
for i in "${p[@]}"; do

	if [ "$i" == "1" ]; then
		PROJECT="eras-commons"
	elif [ "$i" == "2" ]; then
		PROJECT="eras-core-service"
	elif [ "$i" == "3" ]; then
		PROJECT="eras-core-service-commons"
	elif [ "$i" == "4" ]; then
		PROJECT="eras-document-service"
	elif [ "$i" == "5" ]; then
		PROJECT="eras-document-service-commons"
	elif [ "$i" == "6" ]; then
		PROJECT="eras-parent"
	elif [ "$i" == "7" ]; then
		PROJECT="eras-pdws-web"
	elif [ "$i" == "8" ]; then
		PROJECT="eras-persistence"
	elif [ "$i" == "9" ]; then
		PROJECT="aamc-commons"		
	else
		echo "nothing to do!"		
	fi
	
	if [ -d "$PROJECT" ]; then
		echo -e "Pushing changes to SVN for [$PROJECT] ...\n"
		cd "$PROJECT"
		git stash
		git svn rebase
		#git svn dcommit -n ## do dry run
		git svn dcommit
		git stash pop
		echo -e "Done pushing changes for [$PROJECT] ...\n"
		cd ..
	fi
	
done
	
	# for i in $(find . -type d)
	# do
	# 	echo "$i"
	# done

#echo "Done commiting for project [$PROJECT]"
