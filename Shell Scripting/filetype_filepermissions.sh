#!/bin/bash
file_path="$1"
if [ ! -e "$file_path" ]; then
  echo "Error: File does not exist."
  exit 1
fi
if [ -d "$file_path" ]; then
  file_type="directory"
elif [ -f "$file_path" ]; then
  file_type="regular file"
elif [ -L "$file_path" ]; then
  file_type="symbolic link"
else
  file_type="unknown"
fi
permission=$(ls -l "$file_path" | cut -d ' ' -f 1)
user_permission=${permission:1:3}
group_permission=${permission:4:3}
others_permission=${permission:7:3}
echo "File Type: $file_type"
echo "Permissions:"
echo "User: $user_permission"
echo "Group: $group_permission"
echo "Others: $others_permission"
