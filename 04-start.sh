#!/bin/bash

#注意我这里只定义常用的变量（工作目录）
#其余的变量可以自定义添加

#获取脚本所在目录
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)

#切换到脚本所在的目录
cd "$SCRIPT_DIR" || { echo "无法切换到目录 $SCRIPT_DIR"; exit 1; }

#启动挖矿脚本
nohup ./02-worker.sh > start.log 2>&1 &
