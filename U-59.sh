#!/bin/bash

 

. function.sh

 

<<<<<<< HEAD
 

=======
>>>>>>> 27518c740bae359b63b4e44e1d4246fd60018ccf
BAR

CODE [U-59] 숨겨진 파일 및 디렉터리 검색 및 제거

cat << EOF >> $result

[양호]: 디렉터리 내 숨겨진 파일을 확인하여, 불필요한 파일 삭제를 완료한 경우

[취약]: 디렉터리 내 숨겨진 파일을 확인하지 않고, 불필요한 파일을 방치한 경우

EOF

BAR

<<<<<<< HEAD
# 숨김 파일 및 디렉토리 정의
hidden_files=$(sudo find / -type f -name ".*" ! -path "/run/user/1000/gvfs/*")
hidden_dirs=$(sudo find / -type d -name ".*" ! -path "/run/user/1000/gvfs/*")

# 원치 않거나 의심스러운 파일이나 디렉토리가 있는지 확인
for file in $hidden_files; do
  if [[ $(basename $file) =~ "unwanted-file" ]]; then
    echo "Found unwanted file: $file"
     # 파일 삭제 또는 알림 전송과 같은 원하는 작업을 수행합니다.
    sudo rm $file
  fi
done

for dir in $hidden_dirs; do
  if [[ $(basename $dir) =~ "suspicious-dir" ]]; then
    echo "Found suspicious directory: $dir"
    # 디렉터리 삭제 또는 알림 전송과 같은 원하는 작업을 수행합니다.
    sudo rm -r $dir
  fi
done
=======

TMP1=`SCRIPTNAME`.log

> $TMP1 



# Define the location of backup files
backup_files_dir="$HOME/hidden_files_backup"

# Check if the backup directory exists
if [ ! -d "$backup_files_dir" ]; then
  echo "Backup directory does not exist, no files to restore"
  exit 1
fi

# Restore hidden files and directories
for file in $(ls "$backup_files_dir"); do
  cp "$backup_files_dir/$file" "$file"
done

# Remove the backup directory
rm -rf "$backup_files_dir"

echo "Original state has been restored successfully."

>>>>>>> 27518c740bae359b63b4e44e1d4246fd60018ccf



cat $result

echo ; echo 

 
