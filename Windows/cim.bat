REM !/bin/bash

REM Teaching.CIM made by Maximilian Berkmann
REM Server info:
REM Name: Teaching.CIM
REM • DNS Address: teaching.cim.rhul.ac.uk
REM • SSH RSA key Fingerprint: 34 8A A8 E7 72 3F 2D B4 61 A8 90 4D 57 06 8C 47
REM • NoMachine Cert. Fingerprint: CD 56 2E 6F 06 0D 67 4D FC E0 6C AB 3E 19 6C A0 1E F2 69 A1
REM • Connection Methods: SSH, SFTP, NX
REM OpenSUSE Linux 13.2 64bit
REM GUI: XFCE

set user="abcd123" REM change that to your username like zbc642

if "%~1"=="-t" goto to
if "%~1"=="--to" goto to
if "%~1"=="-td" goto to
if "%~1"=="--to-dir" goto to
if "%~1"=="-f" goto from
if "%~1"=="--from" goto from
if "%~1"=="-fd" goto from
if "%~1"=="--from-dir" goto from
if "%~1"=="/?" goto Help
if "%~1"=="-?" goto Help
if "%~1"=="" echo I suggest you to use scp "file" "cim:~"

:to
if" %~2"=="-d" scp -P 22 -r "%~1" %user%@teaching.cim.rhul.ac.uk:"%~3"
if not "%~2"=="" scp -P 22 "%~1" %user%@teaching.cim.rhul.ac.uk:"%~3"
if "%~2"=="" scp -P 22 "%~1" %user%@teaching.cim.rhul.ac.uk:~
exit /b

:from
if "%~2"=="-d"  scp -P 22 -r %user%@teaching.cim.rhul.ac.uk:"%~1" %cd%
if not "%~2"=="" scp -P 22 %user%@teaching.cim.rhul.ac.uk:~/\{"%~1", "%~2"\}
if "%~2"=="" scp -P 22 %user%@teaching.cim.rhul.ac.uk:"%~1" %cd%
exit /b

:help
echo Transfer files/directories to/from Teaching.CIM from/to your computer.
echo "Usages: cim [-t|-f|-td|-fd] [file] [dir]"
echo "        cim [-t|-f|-td|-fd] [\"file0 file1 ... fileN\"] [dir]"
echo .
echo  "  -h, --help                  Display this help section."
echo  "  -t, --to                    Send a file to the cim remote"
echo  "  -f, --from                  Get a file from the cim remote"
echo  "  -td, --to-dir               Send a directory to the cim remote"
echo  "  -fd, --from-dir             Get a directory from the cim remote"