#! /bin/bash

# 设置目录路径和要添加的前缀
directory=$1

# 设置目录路径和要添加的前缀

# 使用 find 命令找到目录中的所有文件
files=$(find "$directory" -type f)

# 循环处理每个文件
for file in $files; do
  # 获取文件名
  filename=$(basename "$file")
  pathName=$(dirname "$file")
  # 使用 mv 命令对文件重命名
  new_filename=${filename/prefix_/}
  # new_filename="prefix_$filename"

  mv "$file" "$pathName/$new_filename"
  
  echo "$file -> $pathName/$new_filename"
done
