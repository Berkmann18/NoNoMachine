# NoNoMachine
## Description
A package for CLI users who needs to do stuff on NoMachine but don't want to use NoMachine (because it's crap!).

It contains the following files:
- cim.(sh|bat): Bash/Batch script made for transfering files/directories across your computer and your CIM desktop (type ./cim.sh -h or cim /? to see how you could use it)
- psqlConnect.(sh|bat): Bash/Batch script made to connect the current CLI window to the uni's PostgresSQL server
- setup.(sh|bat): Setup script that will setup the package
- SSH_config.txt: SSH config file that ease manual SSH connections
- sshDB.(sh|bat): Bash/Batch script made for connecting the current CLI window to the TeachDB environment.

## Setup
In order to setup the package, you need to open a CLI window on the current directory and run:

### Linux
```bash
#replace username by your username
sed -i 's/abcd123/username/g' setup.sh
./setup.sh
```
### Windows
```batch
REM replace username by your username
switch setup.bat abcd123 username
setup
```
### Mac
TBC
```bash

```
## Note
This package is originally intended to be used by only RHUL CIM students/staff, so if you're not a CompSci/InfoSec/Maths RHUL student and don't get it work, then it's _normal_.
