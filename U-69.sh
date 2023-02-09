#!/bin/bash

 

. function.sh
<<<<<<< HEAD

=======
>>>>>>> 27518c740bae359b63b4e44e1d4246fd60018ccf
 

BAR

CODE [U-69] NFS 설정파일 접근권한

cat << EOF >> $result

[양호]: NFS 접근제어 설정파일의 소유자가 root 이고, 권한이 644 이하인 경우

[취약]: NFS 접근제어 설정파일의 소유자가 root 가 아니거나, 권한이 644 이하가 아닌 경우

EOF

BAR

<<<<<<< HEAD

TMP1=`SCRIPTNAME`.log

> $TMP1 

sudo cp /etc/exports /etc/exports.bak

filename="/etc/exports"

=======
TMP1=`SCRIPTNAME`.log

> $TMP1


# File Definition
filename="/etc/exports"

# Revert the changes made to the NFS access control settings file
>>>>>>> 27518c740bae359b63b4e44e1d4246fd60018ccf
sudo chown root "$filename"
sudo chmod 644 "$filename"


<<<<<<< HEAD
=======

>>>>>>> 27518c740bae359b63b4e44e1d4246fd60018ccf
cat $result

echo ; echo 

