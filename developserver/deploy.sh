#! /bin/sh

kill -9 $(pgrep webserver)
cd ../
git pull https://github.com/Dosen2017/learnGit.git
cd webserver
chmod 777 webserver
./webserver &