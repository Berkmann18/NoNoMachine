#!/bin/bash
#PostgreSQL connection script made by Maximilian Berkmann that need to used in the sshed environment
if [ -n "$1" ]; then
	user="$1"
else
	user="abcd123" #change that to your username
fi
psql -h teachdb CS2855/$user
