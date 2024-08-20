#!/bin/bash

#注意我这里只定义常用的变量（工作目录）
#其余的变量可以自定义添加

#获取脚本所在目录
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)

#添加启动脚本到crontab以在重启时运行
(crontab -l 2>/dev/null; echo "@reboot $SCRIPT_DIR/04-start.sh") | crontab -
