#!/bin/bash

#注意我这里只定义常用的变量（挖矿二进制文件名称、工作目录）
#其余的变量可以自定义添加

#获取脚本所在的目录
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)

#切换到脚本所在的目录
cd "$SCRIPT_DIR" || { echo "无法切换到目录 $SCRIPT_DIR"; exit 1; }

#设置挖矿程序二进制文件
BIN="挖矿二进制文件名称"

#结束相关进程
pkill -f 02-worker.sh
pkill -f "$BIN"
pkill -f nohup
rm -f *.log
