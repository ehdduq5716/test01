#!/bin/bash

daily=`date +%Y-%m-%d`

tar -zcvf /var/log/httpd/access.log-$daily.tar.gz /var/log/httpd/access.log-$daily
tar -zcvf /var/log/httpd/error.log-$daily.tar.gz /var/log/httpd/error.log-$daily

aws s3 cp /var/log/httpd/access.log-$daily.tar.gz s3://  # S3 URL
aws s3 cp /var/log/httpd/error.log-$daily.tar.gz s3://

rm -rf /var/log/httpd/access.log-$daily
rm -rf /var/log/httpd/error.log-$daily