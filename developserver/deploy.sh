#! /bin/sh

kill -9 $(pgrep webserver)
cd ../
git pull https://github.com/Dosen2017/learnGit.git
git checkout webserver/webserver --ours  #更新二进制文件
cd webserver
chmod 777 webserver
./webserver &