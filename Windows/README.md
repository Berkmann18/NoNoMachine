# NoNoMachine - Windows
## Description
A package for CLI users who needs to do stuff on NoMachine but don't want to use NoMachine (because it's crap!).

It contains the following files:
- cim.bat: Bash/Batch script made for transfering files/directories across your computer and your CIM desktop (type ```cim /?``` to see how you could use it)
- psqlConnect.bat: Batch script made to connect the current CLI window to the uni's PostgresSQL server
- psqlRemoteConnect.bat: Same as psqlConnect.bat but for NON-SSH sessions.
- setup.bat: Setup script that will setup the package
- SSH_config.txt: SSH config file that ease manual SSH connections
- sshDB.bat: Batch script made for connecting the current CLI window to the TeachDB environment.

## Setup
In order to setup the package, you need to open a CLI window on the current directory and run:

```batch
REM replace username by your username
switch setup.bat zcvd321 username
setup
```

## Note
This package is originally intended to be used by only RHUL CIM students/staff on a Windows OS, so if you're not a CompSci/InfoSec/Maths RHUL student and don't get it work, then it's _normal_.


## TODO
- Make an executable format for the package or the relevant scripts (with GUI?)
- Improve the setup script to make the setup process less manual

