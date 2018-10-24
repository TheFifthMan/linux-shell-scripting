#!/bin/bash
echo -e "Enter Password: "
# 禁止输出
stty -echo 

# 这个没什么用
read Password
# 重新输出
stty echo 
echo 
echo Password read