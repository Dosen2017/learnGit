#! /bin/sh

kill -9 $(pgrep webserver)

cd ../
rm -f webserver/webserver #这里删除是为了方便更新二进制文件webserver
git pull https://github.com/Dosen2017/learnGit.git
git checkout webserver/webserver --ours

#git checkout webserver/webserver --ours  #更新二进制文件 , 没用到

cd webserver
chmod 777 webserver
./webserver &