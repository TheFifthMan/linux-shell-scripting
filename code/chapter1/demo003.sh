#/bin/bash
fruit=apple
count=5
echo "Now We have ${count} ${fruit}"
echo "Our environ variable is $PATH"

# 获取长度
length=${#fruit}
echo "fruit have ${length} character"

# 检查当前脚本运行的用户是否为root
# root的UID是0
# -ne 是等于的意思
# [ 也是命令，因此需要空格隔开 
if [ $UID -ne 0 ]; then 
    echo "Non root user, please run as root"
else
    echo "root user"
fi

# 数学运算
no1=4
no2=5
# let 可以直接执行基本都算数操作，否则会按照字符处理。
let no1--
let no2--
let res=no1+no2
echo 'result is ===>' $res

# 操作 $[ ] 的使用跟let一样
res2=$[ no1+no2 ]
echo $res2

# 也可以使用 $(())
res3=$((no1+50))
echo $res3

# 使用expr进行计算
echo `expr $no1+5`

# 使用bc来进行高精度计算
echo "4*0.5678" | bc

# 设置精度
echo "scale=4;293/2" | bc

# 进制转换
echo "obase=2;34" | bc

# 计算平方根和平方
echo "sqrt(100)" | bc
echo "10^2" | bc 