#!/bin/bash

 

. function.sh

 

BAR

CODE [U-71] Apache 웹서비스 정보 숨김

cat << EOF >> $result

[양호]: ServerTokens Prod, ServerSignature Off로 설정되어있는 경우

[취약]: ServerTokens Prod, ServerSignature Off로 설정되어있지 않은 경우

EOF

BAR


TMP1=`SCRIPTNAME`.log

> $TMP1 

# 원본 httpd.conf 백업
cp /etc/apache2/apache2.conf /etc/apache2/apache2.conf.bak

# 원래 서버 토큰 복원 지시문
grep -q "^ServerTokens" /etc/apache2/apache2.conf.bak
if [ $? -eq 0 ]; then
  sed -i 's/^ServerTokens.*/ServerTokens /' /etc/apache2/apache2.conf
else
  sed -i '/^ServerTokens.*/d' /etc/apache2/apache2.conf
fi

# 원래 서버 서명 지시문 복원
grep -q "^ServerSignature" /etc/apache2/apache2.conf.bak
if [ $? -eq 0 ]; then
  sed -i 's/^ServerSignature.*/ServerSignature /' /etc/apache2/apache2.conf
else
  sed -i '/^ServerSignature.*/d' /etc/apache2/apache2.conf
fi



cat $result

echo ; echo 