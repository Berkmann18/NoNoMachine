REM PostgreSQL connection script made by Maximilian Berkmann
set user="abcd123"
if not "%~1"=="" user="%~1" #change that to your username
psql -h teachdb.cs.rhul.ac.uk/CS2855/%user%
