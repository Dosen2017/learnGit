#! /bin/sh

kill -9 $(pgrep webserver)
cd ~/newweb
git pull https://github.com/Dosen2017/learnGit.git
cd webserver
./webserver &