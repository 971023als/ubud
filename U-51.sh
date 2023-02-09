#!/bin/bash

 

. function.sh

 

<<<<<<< HEAD
=======

>>>>>>> 27518c740bae359b63b4e44e1d4246fd60018ccf
TMP2=/tmp/tmp1

TMP3=/tmp/tmp2

TMP4=/tmp/tmp3

 

BAR

CODE [U-51] 계정이 존재하지 않는 GID 금지

cat << EOF >> $result

양호: 존재하지 않는 계정에 GID 설정을 금지한 경우

취약: 존재하지 않은 계정에 GID 설정이 되어있는 경우

EOF

BAR

<<<<<<< HEAD

=======
>>>>>>> 27518c740bae359b63b4e44e1d4246fd60018ccf
TMP1=`SCRIPTNAME`.log

> $TMP1

<<<<<<< HEAD
# Backup files
cp /etc/group /etc/group.bak


# 보관할 그룹 목록
keep_groups=("root" "sudo" "sys" "adm" "wheel" 
"daemon" "bin" "lp" "dbus" "rpc" "rpcuser" "haldaemon" 
"apache" "postfix" "gdm" "adiosl" "mysql" "cubrid"
 "messagebus" "syslog" "avahi" "whoopsie"
=======
necessary_groups=("root" "sudo" "sys" "adm" "wheel"
"daemon" "bin" "lp" "dbus" "rpc" "rpcuser" "haldaemon"
"apache" "postfix" "gdm" "adiosl" "mysql" "cubrid"
"messagebus" "syslog" "avahi" "whoopsie"
>>>>>>> 27518c740bae359b63b4e44e1d4246fd60018ccf
"colord" "systemd-network" "systemd-resolve"
"systemd-timesync" "mysql" "user"
"www-data" "sync")

<<<<<<< HEAD
# 모든 그룹 목록 가져오기
all_groups=$(cut -d: -f1 /etc/group)

# 모든 그룹에 반복
for group in $all_groups; do
  if ! [[ "${keep_groups[@]}" =~ "$group" ]]; then
    # 유지할 그룹 목록에 없는 그룹 제거
    sudo groupdel "$group"
=======
# Read the necessary groups from the log file
original_groups=$(cat "$TMP1")

# Add back the groups that were deleted
for group in $original_groups; do
  if ! echo "${necessary_groups[@]}" | grep -wq "$group"; then
    groupadd "$group"
>>>>>>> 27518c740bae359b63b4e44e1d4246fd60018ccf
  fi
done


<<<<<<< HEAD
=======


 

>>>>>>> 27518c740bae359b63b4e44e1d4246fd60018ccf
cat $result

echo ; echo
