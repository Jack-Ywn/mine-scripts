# mine-scripts

- 克隆项目

```
git clone https://github.com/Jack-Ywn/mine-scripts.git
cd mine-scripts
```

- 文件说明

```
tree
.
├── 01-crontab.sh  #挖矿定时任务
├── 02-worker.sh   #挖矿运行参数
├── 03-stop.sh     #结束挖矿相关进程
└── 04-start.sh    #后台执行挖矿
```

- 上传挖矿二进制文件到脚本目录并添加执行权限
- 修改挖矿实际变量

```shell
#02-worker.sh脚本中对应修改一下信息
BIN="二进制文件名称"
WALLET="实际钱包地址"
COMMAND="nohup ./"$BIN" --threads "$CPU_CORES" --worker-wallet-address "$WALLET" >> worker.log 2>&1 &" 

#03-stop.sh脚本中对应修改一下信息
BIN="二进制文件名称"
```

