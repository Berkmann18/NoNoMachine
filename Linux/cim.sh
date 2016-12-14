#!/bin/bash

#Teaching.CIM made by Maximilian Berkmann
#Server info:
#Name: Teaching.CIM
#• DNS Address: teaching.cim.rhul.ac.uk
#• SSH RSA key Fingerprint: 34 8A A8 E7 72 3F 2D B4 61 A8 90 4D 57 06 8C 47
#• NoMachine Cert. Fingerprint: CD 56 2E 6F 06 0D 67 4D FC E0 6C AB 3E 19 6C A0 1E F2 69 A1
#• Connection Methods: SSH, SFTP, NX
#OpenSUSE Linux 13.2 64bit
#GUI: XFCE

user=abcd123 #change that to your username like zbc642

function tcim {
	if [ "$1" == "-t" -o "$1" == "--to" ]; then
		to "$1" "$2" "$3"
	elif [ "$1" == "-td" -o "$1" == "--to-dir" ]; then
		to "$1" -d "$2" "$3"
	elif [ "$1" == "-f" -o "$1" == "--from" ]; then
		from "$1" "$2" "$3"
	elif [ "$1" == "-fd" -o "$1" == "--from-dir" ]; then
		from "$1" -d "$2" "$3"
	elif [ "$1" == "-h" -o "$1" == "--help" ]; then
		Help
	else
		echo I suggest you to use scp "file" "cim:~"
	fi
}

function to {
	if [ "$2" == "-d" ]; then
		scp -P 22 -r "$1" $user@teaching.cim.rhul.ac.uk:"$3"
	elif [ -n "$2" ]; then
		scp -P 22 "$1" $user@teaching.cim.rhul.ac.uk:"$3"
	else
		scp -P 22 "$1" $user@teaching.cim.rhul.ac.uk:~
	fi
}

function from {
	if [ "$2" == "-d" ]; then
		scp -P 22 -r $user@teaching.cim.rhul.ac.uk:"$1" $PWD
	elif [ -n "$2" ]; then
		scp -P 22 $user@teaching.cim.rhul.ac.uk:~/\{"$1", "$2"\}
	else
		scp -P 22 $user@teaching.cim.rhul.ac.uk:"$1" $PWD
	fi
}

function Help {
	echo Transfer files/directories to/from Teaching.CIM from/to your computer.
	echo "Usages: cim [-t|-f|-td|-fd] [file] [dir]"
	echo -e "        cim [-t|-f|-td|-fd] [\"file0 file1 ... fileN\"] [dir]\n"
	echo  "  -h, --help                  Display this help section."
	echo  "  -t, --to                    Send a file to the cim remote"
	echo  "  -f, --from                  Get a file from the cim remote"
	echo  "  -td, --to-dir               Send a directory to the cim remote"
	echo  "  -fd, --from-dir             Get a directory from the cim remote"
}

tcim $1 $2 $3