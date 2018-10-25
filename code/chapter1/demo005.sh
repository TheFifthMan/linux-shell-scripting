#!/bin/bash
declare 

# 键值对
fruit[apple]='apple 100 dollars'
fruit[orange]='orange 120 dollars'

echo "${fruit[apple]}" 

# 索引值

ass_array=([apple]='100 dollars' [orange]='120 dollars')
echo "${ass_array[apple]}"

ass_array2=(11,22,3,33,44,55)
echo ${ass_array2[1]}