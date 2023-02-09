#!/bin/bash

 

. function.sh
<<<<<<< HEAD
=======
 
>>>>>>> 27518c740bae359b63b4e44e1d4246fd60018ccf

 

BAR

CODE [U-56] UMASK 설정 관리 

cat << EOF >> $result

[양호]: UMASK 값이 022 이하로 설정된 경우

[취약]: UMASK 값이 022 이하로 설정되지 않은 경우 

EOF

BAR

<<<<<<< HEAD
TMP1=`SCRIPTNAME`.log

> $TMP1

# Restore backup files
cp /etc/profile /etc/profile.bak

# /etc/profile에 UMASK 추가(존재하지 않는 경우)
if ! grep -q "UMASK=022" /etc/profile; then
  echo "UMASK=022" >> /etc/profile
  INFO "UMASK가 /etc/profile에 추가되었습니다."
else
  OK "UMASK가 /etc/profile에 이미 있습니다."
fi
=======

TMP1=`SCRIPTNAME`.log

> $TMP1 

# Backup the original /etc/profile file
sudo cp /etc/profile /etc/profile.bak

# Restore the original /etc/profile file
sudo cp /etc/profile.bak /etc/profile

echo "The file has been restored to its original state."

# Remove the backup file
sudo rm -rf /etc/profile.bak




>>>>>>> 27518c740bae359b63b4e44e1d4246fd60018ccf


cat $result

echo ; echo 

 
