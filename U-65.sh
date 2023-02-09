#!/bin/bash

 

. function.sh

 

BAR

CODE [U-65] at 파일 소유자 및 권한 설정

cat << EOF >> $result

[양호]: at 접근제어 파일의 소유자가 root이고, 권한이 640 이하인 경우

[취약]: at 접근제어 파일의 소유자가 root가 아니거나, 권한이 640 이하가 아닌 경우

EOF

BAR

TMP1=`SCRIPTNAME`.log

<<<<<<< HEAD
> $TMP1 


# Backup the /usr/bin/at file
sudo cp /usr/bin/at /usr/bin/at.bak

# Backup the /etc/at.deny file
sudo cp /etc/at.deny /etc/at.deny.bak

sudo chmod 4750 /usr/bin/at

sudo chown root /etc/at.deny

sudo chmod 640 /etc/at.deny
=======
> $TMP1


sudo chmod 2755 /usr/bin/at

sudo chown root:root /etc/at.deny

sudo chmod 644 /etc/at.deny



>>>>>>> 27518c740bae359b63b4e44e1d4246fd60018ccf

cat $result

echo ; echo 