#!/bin/zsh

# 配置hadoop生态相关组件的环境变量

hadoop_install_dir="$HOME/applications/hadoop-3.3.4"
if [ -d "$hadoop_install_dir" ]; then
	export HADOOP_HOME=$hadoop_install_dir
	export PATH=$PATH:$hadoop_install_dir/bin
fi

hive_install_dir="$HOME/applications/apache-hive-3.1.3-bin"
if [ -d "$hive_install_dir" ]; then
	export PATH=$PATH:$hive_install_dir/bin
fi


