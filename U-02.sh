#!/bin/bash 

 

. function.sh

 

TMP1=$(SCRIPTNAME).log

> $TMP1

 
BAR

CODE [U-02] 패스워드 복잡성 설정

cat << EOF >> $result

[양호]: 영문 숫자 특수문자가 혼합된 8 글자 이상의 패스워드가 설정된 경우.

[취약]: 영문 숫자 특수문자 혼합되지 않은 8 글자 미만의 패스워드가 설정된 경우.

EOF

BAR

# Restore login.defs file
cp /etc/login.defs.bak /etc/login.defs

# Restore system-auth file
cp /etc/pam.d/system-auth.bak /etc/pam.d/system-auth

cat $result

echo ; echo
