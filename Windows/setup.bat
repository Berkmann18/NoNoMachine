REM Setup script for the NoNoMachine package made by Maximilian Berkmann
md %ProgramFiles%/NoNoMachine
switch SSH_config.txt abcd123 zcvd321
switch psqlConnect.bat abcd123 zcvd321
switch psqlRemoteConnect.bat abcd123 zcvd321
switch sshDB.bat abcd123 zcvd321
switch cim.bat abcd123 zcvd321
move SSH_config.txt %ProgramFiles%/NoNoMachine
move psqlConnect.bat %ProgramFiles%/NoNoMachine
move sshDB.bat %ProgramFiles%/NoNoMachine
move cim.bat %ProgramFiles%/NoNoMachine

copy SSH_config.txt %userprofile%/.ssh/config
set PATH=%PATH%;%ProgramFiles%/NoNoMachine
