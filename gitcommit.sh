#!/bin/bash
# http://stackoverflow.com/questions/59838/how-to-check-if-a-directory-exists-in-a-bash-shell-script
# http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_08_02.html

#parsing a string with delimiters; http://stackoverflow.com/questions/918886/split-string-based-on-delimiter-in-bash

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

Which project do you want to commit? (comma seperate for multiple projects):"

PROJECT=""
read IN

echo "Commit message? : "
msg=""
read m
	
IFS=',' read -ra p <<< "$IN"
for i in "${p[@]}"; do 
     echo "$i"

		
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
  	echo "Commiting changes for [$PROJECT] ..."
  	cd "$PROJECT"
  	#git ci --dry-run -m "${m}"
  	git ci -m "${m}"
	echo "Done commiting changes for [$PROJECT] ...\n"
  	cd ..
  fi
  
  done

echo "Done commiting for project [$PROJECT]"
