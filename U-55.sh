#!/bin/bash

 

. function.sh
<<<<<<< HEAD


=======
>>>>>>> 27518c740bae359b63b4e44e1d4246fd60018ccf
 

BAR

CODE [U-55] hosts.lpd 파일 소유자 및 권한 설정

cat << EOF >> $result

[양호]: 파일의 소유자가 root이고 권한이 600인 경우

[취약]: 파일의 소유자가 root가 아니고 권한이 600이 아닌 경우

EOF

BAR

<<<<<<< HEAD
=======
 
>>>>>>> 27518c740bae359b63b4e44e1d4246fd60018ccf
TMP1=`SCRIPTNAME`.log

> $TMP1


<<<<<<< HEAD
# Restore backup files
cp /etc/hosts.lpd /etc/hosts.lpd.bak

sudo rm -rf /etc/hosts.lpd
=======

sudo cp /etc/hosts.lpd.bak /etc/hosts.lpd
sudo chown root:root /etc/hosts.lpd
sudo chmod 600 /etc/hosts.lpd

echo "The file has been restored to its original state."


>>>>>>> 27518c740bae359b63b4e44e1d4246fd60018ccf

cat $result

echo ; echo
