#!/bin/bash

 

. function.sh

<<<<<<< HEAD
 
=======
>>>>>>> 27518c740bae359b63b4e44e1d4246fd60018ccf

TMP2=/tmp/tmp1

> $TMP2

 

BAR

CODE [U-53] 사용자 shell 점검

cat << EOF >> $result

[취약]: 로그인이 필요하지 않은 계정에 /bin/false(nologin) 쉘이 부여되어 있는 경우

[양호]: 로그인이 필요하지 않은 계정에 /bin/false(nologin) 쉘이 부여되지 않은 경우

EOF

BAR


TMP1=`SCRIPTNAME`.log

> $TMP1

<<<<<<< HEAD
# Backup files
cp /etc/passwd /etc/passwd.bak

# 명령 출력에서 사용자 목록 가져오기
user_list=$(cat /etc/passwd | egrep "^daemon|^bin|^sys|^adm|^listen|^nobody|^nobody4|^ noaccess|^diag|^operator|^games|^gopher" | grep -v "admin" | awk -F: '{print $1}')

# 사용자 목록을 순환
for user in $user_list; do
  # 사용자 셸이 이미 /bin/false 또는 /sbin/nlogin으로 설정되어 있는지 확인하십시오
  shell=$(grep "^$user:" /etc/passwd | awk -F: '{print $7}')
  if [[ $shell == "/bin/false" || $shell == "/sbin/nologin" ]]; then
    OK "사용자 $user 에 이미 $shell 로 설정된 셸이 있습니다."
  else
    # 사용자 셸을 /bin/false로 설정합니다
    sudo usermod -s /bin/false $user
    INFO "user $user 셸을 /bin/false로 설정"
  fi
done
=======

# Read the original shells of the users from the log file
while read -r line; do
  user=$(echo "$line" | awk '{print $1}')
  original_shell=$(echo "$line" | awk '{print $3}')

  # Restore the original shell of the user
  sudo usermod -s "$original_shell" "$user"
  INFO "Restored user $user shell to $original_shell"
done < "$TMP1"



>>>>>>> 27518c740bae359b63b4e44e1d4246fd60018ccf

 

cat $result

echo ; echo
