#!/bin/bash
#Teaching DB connection script made by Maximilian Berkmann
if [ -n "$1" ]; then
	user="$1"
else
	user="abcd123" #change that to your username
fi
ssh $user@teaching.cs.rhul.ac.uk -L 2345:teachdb:5432
