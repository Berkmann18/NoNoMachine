#Setup script for the NoNoMachine package made by Maximilian Berkmann

sed -i 's/abcd123/zcvd321/g' SSH_config.txt
sed -i 's/abcd123/zcvd321/g' psqlConnect.sh
sed -i 's/abcd123/zcvd321/g' sshDB.sh
sed -i 's/abcd123/zcvd321/g' cim.sh
cp SSH_config.txt ~/.ssh/config
