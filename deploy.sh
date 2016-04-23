#!/bin/bash

dateTime=`date "+DATE_%m_%d_%y_TIME_%H_%M_%S"`
echo $dateTime
output="$(git add . && git commit -m $datetime && git push heroku master)"
echo $output >> log_$dateTime.log
#`curl -i http://www.somenathghosh.space` >> log_$dateTime.log
find /home/ec2-user/log_*.log -mmin +30 -exec rm -f {} \;

