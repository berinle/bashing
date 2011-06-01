#!/bin/bash
# http://stackoverflow.com/questions/59838/how-to-check-if-a-directory-exists-in-a-bash-shell-script
# http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_08_02.html
#http://stackoverflow.com/questions/5665169/looping-through-directories-in-bash

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

Which project do you want to update?:"

PROJECT=""
read p

	if [ "$p" == "1" ]; then
		PROJECT="eras-commons"
	elif [ "$p" == "2" ]; then
		PROJECT="eras-core-service"
	elif [ "$p" == "3" ]; then
		PROJECT="eras-core-service-commons"
	elif [ "$p" == "4" ]; then
		PROJECT="eras-document-service"
	elif [ "$p" == "5" ]; then
		PROJECT="eras-document-service-commons"
	elif [ "$p" == "6" ]; then
		PROJECT="eras-parent"
	elif [ "$p" == "7" ]; then
		PROJECT="eras-pdws-web"
	elif [ "$p" == "8" ]; then
		PROJECT="eras-persistence"
	elif [ "$p" == "9" ]; then
		PROJECT="aamc-commons"	
	else
		echo "nothing to do!"		
	fi
	
	if [ -d "$PROJECT" ]; then
		echo "Pulling changes for $PROJECT ..."
		cd "$PROJECT"
		git stash
		git svn rebase
		git stash pop
		cd ..
	fi
	
echo "Done with updates for project [$PROJECT]"
