# NoNoMachine
## Description
A package for CLI users who needs to do stuff on NoMachine but don't want to use NoMachine (because it's crap!).

It contains the following files:
- cim.sh: Bash script made for transfering files/directories across your computer and your CIM desktop (type ```./cim.sh -h``` to see how you could use it)
- psqlConnect.sh: Bash script made to connect the current CLI window to the uni's PostgreSQL server
- psqlRemoteConnect.sh: Bash script made to connect the current NON-SSH CLI window to the uni's PostgreSQL server.
- setup.sh: Setup script that will setup the package
- SSH_config.txt: SSH config file that ease manual SSH connections
- sshDB.sh: Bash script made for connecting the current CLI window to the TeachDB environment.

## Setup
In order to setup the package, you need to open a CLI window on the current directory and run:

```bash
#replace username by your username
sed -i 's/zvcd321/username/g' setup.sh
./setup.sh
```

## Note
This package is originally intended to be used by only RHUL CIM students/staff on a Linux distribution, so if you're not a CompSci/InfoSec/Maths RHUL student and don't get it work, then it's _normal_.
