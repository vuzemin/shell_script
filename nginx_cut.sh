#!/bin/bash

d=`date -d "-6 day" +%Y%m%d` 
logdir="/usr/local/nginx/logs/"
nginx_pid="/usr/local/nginx/logs/nginx.pid"

cd $logdir
for log in `ls *.log`
do
    mv $log $log-$d
done

/bin/kill -HUP `cat $nginx_pid`