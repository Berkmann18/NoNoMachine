REM Teaching DB connection script made by Maximilian Berkmann
set user="abcd123" #change that to your username
if not "%~1"=="" user="%~1"
ssh %user%@teaching.cs.rhul.ac.uk -L 2345:teachdb:5432
