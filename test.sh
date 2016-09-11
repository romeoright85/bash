#!/bin/bash
maj_ver=1
min_ver=2
batch_id=3
date=`date +%m-%d-%Y`


function getUserName
{
	username=$USER
}

function isAnAdmin
{
	if groups $username | grep &>/dev/null 'Administrator'; then
		echo true
	else
		echo false
	fi
}
function readFile
{
	while read LINE || [[ -n "$LINE" ]]; do
		echo "$LINE"
	done <version.cfg
}


#Get the User Name
getUserName
#Based on the User Name, find if the user is an Admin
if $(isAnAdmin); then
	#CODE LATER#ask admin to increment major or minor here
			#increment major
				#((maj_ver=$maj_ver+1))
			#OR
			#keep major the same
	echo #DEBUG	
else
	echo #DEBUG
fi






echo "The Major Version is: $maj_ver" #DEBUG
echo "The Minor Version is: $min_ver" #DEBUG
echo "The Batch is: $batch_id" #DEBUG
echo #DEBUG
echo #DEBUG
echo -e "Release: $maj_ver.$min_ver.$batch_id\tUser: $username\tOn: $date"
readFile #DEBUG