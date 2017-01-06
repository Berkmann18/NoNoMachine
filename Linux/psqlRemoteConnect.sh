#!/bin/bash
#PostgreSQL connection script made by Maximilian Berkmann
if [ -n "$1" ]; then
	user="$1"
else
	user="abcd123" #change that to your username
fi
psql -h teachdb.cim.rhul.ac.uk CS2855/$user
