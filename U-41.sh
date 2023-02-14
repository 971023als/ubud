#!/bin/bash

. function.sh

BAR

CODE [U-41] 웹서비스 영역의 분리

cat << EOF >> $result
[양호]: DocumentRoot를 별도의 디렉터리로 지정한 경우
[취약]: DocumentRoot를 기본 디렉터리로 지정한 경우
EOF

BAR

TMP1=`SCRIPTNAME`.log

>$TMP1  

#    백업 파일 생성
cp /etc/apache2/sites-available/000-default.conf.bak /etc/apache2/sites-available/000-default.conf

# Define the Apache configuration file
file="/etc/apache2/sites-available/000-default.conf"

# Check if the DocumentRoot has been changed
if grep -q "/home/ubuntu/newphp/" $file; then
  # Replace the DocumentRoot with the original default path "/var/www/html"
  sed -i 's|DocumentRoot.*|DocumentRoot "/var/www/html"|' $file
  OK "원래 상태가 복원되었습니다."
else
  WARN "원래 상태가 복원되지 않았습니다."
fi

cat $result

echo ; echo