#! /bin/sh

kill -9 $(pgrep webserver)
# cd ../
# rm -f ./webserver/webserver
git pull https://github.com/Dosen2017/learnGit.git
cd webserver

# git checkout webserver --ours

chmod 777 webserver
./webserver &