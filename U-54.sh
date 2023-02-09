#!/bin/bash

 

. function.sh

 
<<<<<<< HEAD
=======

>>>>>>> 27518c740bae359b63b4e44e1d4246fd60018ccf
 

BAR

CODE [U-54] Session Timeout 설정

cat << EOF >> $result

[양호]: Session Timeout이 600초(10분) 이하로 설정되어 있는 경우

[취약]: Session Timeout이 600초(10분) 이하로 설정되지 않은 경우

EOF

BAR

<<<<<<< HEAD
=======

>>>>>>> 27518c740bae359b63b4e44e1d4246fd60018ccf
TMP1=`SCRIPTNAME`.log

> $TMP1

<<<<<<< HEAD
# Backup files
cp /etc/profile /etc/profile.bak

# /etc/profile에 TMOUT 추가(존재하지 않는 경우)
if ! grep -q "TMOUT=600" /etc/profile; then
  echo "TMOUT=600" >> /etc/profile
  echo "export TMOUT" >> /etc/profile
  INFO "/etc/profile에 TMOUT가 추가되었습니다."
else
  OK "TMOUT가 /etc/profile에 이미 있습니다."
=======
# Check if TMOUT exists in /etc/profile
if grep -q "TMOUT=600" /etc/profile; then
  # Remove the line containing TMOUT from /etc/profile
  sed -i '/TMOUT=600/d' /etc/profile
  sed -i '/export TMOUT/d' /etc/profile
  INFO "Removed TMOUT from /etc/profile."
else
  OK "TMOUT was not found in /etc/profile."
>>>>>>> 27518c740bae359b63b4e44e1d4246fd60018ccf
fi




<<<<<<< HEAD

=======
>>>>>>> 27518c740bae359b63b4e44e1d4246fd60018ccf
cat $result

echo ; echo
