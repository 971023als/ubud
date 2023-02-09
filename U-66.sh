#!/bin/bash

 

. function.sh
   

BAR

CODE [U-66] SNMP 서비스 구동 점검

cat << EOF >> $result

[양호]: SNMP 서비스를 사용하지 않는 경우

[취약]: SNMP 서비스를 사용하는 경우

EOF

BAR

<<<<<<< HEAD
# snmpd 구성 파일 백업
sudo cp /etc/sudiod.conf /etc/sudiod.conf.bak

# snmpd 서비스 중지
sudo service snmpd stop
=======
TMP1=`SCRIPTNAME`.log

> $TMP1



# Start SNMP service
sudo service snmpd start
OK "Started SNMP service"

>>>>>>> 27518c740bae359b63b4e44e1d4246fd60018ccf

cat $result

echo ; echo
 

