#!/bin/bash

daily=`date +%Y%m%d`
tar -zcvf /var/log/messages-$daily.tar.gz /var/log/messages
tar -zcvf /var/log/secure-$daily.tar.gz /var/log/secure

aws s3 cp /var/log/messages-$daily.tar.gz s3:// ## S3 URL
aws s3 cp /var/log/secure-$daily.tar.gz s3://

#cat /dev/null > /var/log/messages  # 필요시 적용
#cat /dev/null > /var/log/secure

find /var/log/messages-$daily.tar.gz -ctime +8 -exec rm -rf {} \;
find /var/log/secure-$daily.tar.gz -ctime +8 -exec rm -rf {} \;