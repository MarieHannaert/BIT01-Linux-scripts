#!/bin/bash 

#The script will ask for a file name 
#If no filename is provides the script will stop otherwise all existing extensions are removed and replaced by .sh
# The script creates a file with the filename in the ~/Scripts 
#the shebang line and first commant including the file name are added to the file 
#execute permissions fot the owner and group of the file are added
#the file is opened by the text editor for EDITOR of by nano if no editor is assigned 
#9

echo -n "Please provide a filename "
read FILENAME

if [ test -n $FILENAME = 0 ]
then
                $NEWFILE="${FILENAME%%.*}.sh"
                echo $NEWFILE
                touch /home/guest/Scripts/$NEWFILE
                cd /home/guest/Scripts
                "#!/bin/bash" >> $NEWFILE
                "#this script is called $NEWFILE" >> $NEWFILE
                chmod ug+x $NEWFILE
                $EDITOR=$1
                case $1 in
                        $EDITOR)
                        $EDITOR $NEWFILE
                        ;;
                        *)
                        nano $NEWFILE
                        ;;
                esac

else
	${FILENAME:?"No filename was provided"}

fi

