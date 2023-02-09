#!/bin/bash

 

. function.sh


<<<<<<< HEAD
TMP1=`SCRIPTNAME`.log

> $TMP1   

=======
>>>>>>> 27518c740bae359b63b4e44e1d4246fd60018ccf
BAR

CODE [U-68] 로그온 시 경고 메시지 제공

cat << EOF >> $result

[양호]: 서버 및 Telnet 서비스에 로그온 메시지가 설정되어 있는 경우

[취약]: 서버 및 Telnet 서비스에 로그온 메시지가 설정되어 있지 않은 경우

EOF

BAR

TMP1=`SCRIPTNAME`.log

<<<<<<< HEAD
> $TMP1 

sudo cp /etc/motd /etc/motd.bak
sudo cp /etc/issue.net /etc/issue.net.bak
sudo cp /etc/vsftpd/vsftpd.conf /etc/vsftpd/vsftpd.conf.bak
sudo cp /etc/mail/sendmail.cf /etc/mail/sendmail.cf.bak
sudo cp /etc/named.conf /etc/named.conf.bak

files=("/etc/motd" "/etc/issue.net" "/etc/vsftpd/vsftpd.conf" "/etc/mail/sendmail.cf" "/etc/named.conf")

for file in "${files[@]}"; do
  if [ ! -e "$file" ]; then
    INFO "$file이 존재하지 않습니다."
  else
    OK "$file이 존재합니다."
=======
> $TMP1



# File Definitions
files=("/etc/motd" "/etc/issue.net" "/etc/vsftpd/vsftpd.conf" "/etc/mail/sendmail.cf" "/etc/named.conf")

# Revert the changes made to the logon message
for file in "${files[@]}"; do
  if [ -e "$file" ]; then
    echo "" > "$file"
>>>>>>> 27518c740bae359b63b4e44e1d4246fd60018ccf
  fi
done



<<<<<<< HEAD
=======

>>>>>>> 27518c740bae359b63b4e44e1d4246fd60018ccf
cat $result

echo ; echo

 
