#!/bin/bash

week=`date +%Y%m%d`

mkdir -p /backup/home_backup/$week/

rsync -aough /home/ /backup/home_backup/$week

find /backup/home_backup/ -ctime +7 -exec rm -rf {} \;
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#[crontab 등록]

#vim /etc/crontab
#0 4 * * * sh /root/backup/backup_home.sh