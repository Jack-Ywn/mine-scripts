#!/bin/bash

#注意我这里只定义常用的变量（核心数量、钱包地址、挖矿二进制文件名称、工作目录）
#其余的变量可以自定义添加

#获取CPU核心数量
CPU_CORES=$(nproc)

#设置挖矿程序二进制文件（注意自己上传二进制至脚本目录）
BIN="挖矿二进制文件名称"

#设置钱包地址
WALLET="挖矿钱包地址"

#获取脚本所在目录
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)

#切换到脚本所在的目录
cd "$SCRIPT_DIR" || { echo "无法切换到目录 $SCRIPT_DIR"; exit 1; }

#定时执行挖矿脚本
while true; do
    echo "启动挖矿程序......"
    #启动挖矿前确保挖矿进程全部关闭
    pkill -f "$BIN"
    #通过nohup后台自定义运行挖矿（可以引用上面定义的的核心数量、钱包地址、挖矿二进制文件名称、工作目录等常用变量）并且挖矿日志写入到worker.log文件
    nohup ./"$BIN" --threads "$CPU_CORES" --worker-wallet-address "$WALLET" >> worker.log 2>&1 &
    #重新运行挖矿的时间（单位为秒）
    sleep 90000
done
