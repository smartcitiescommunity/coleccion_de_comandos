#!/bin/bash
# deletefile.sh - Remove the file using dialog box
# -------------------------------------------------
# purpose - remove file
#  $1 - filename 
function delete_file(){
	local f="$1"
	local m="$0: file $f failed to delete."
	if [ -f $f ] 
	then
		/bin/rm $FILE && m="$0: $f file deleted."
	else
		m="$0: $f is not a file."
	fi 
	dialog --title "Remove file" --clear --msgbox "$m" 10 50
}

# select filename using dialog
# store it to $FILE
FILE=$(dialog --title "Delete a file" --stdout --title "Please choose a file to delete" --fselect /tmp/ 14 48)

# delete file
[ ! -z $FILE ] && delete_file "$FILE"
