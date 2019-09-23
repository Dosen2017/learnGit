#! /bin/sh

kill -9 $(pgrep webserver)

echo $? >> /tmp/err.txt

cd ../

rm -f webserver/webserver

git pull https://github.com/Dosen2017/learnGit.git

echo "\n" >> /tmp/err.txt
echo $? >> /tmp/err.txt

git checkout webserver/webserver --ours

echo "\n" >> /tmp/err.txt
echo $? >> /tmp/err.txt

#git checkout webserver/webserver --ours  #更新二进制文件
cd webserver
chmod 777 webserver
./webserver &
echo "\n" >> /tmp/err.txt
echo $? >> /tmp/err.txt