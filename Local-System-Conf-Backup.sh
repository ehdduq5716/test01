#!/bin/bash
 
week=`date +%Y%m%d`

mkdir -p /backup/etc_backup/$week/

rsync -aough /etc/passwd /backup/etc_backup/$week
rsync -aough /etc/group /backup/etc_backup/$week/
rsync -aough /etc/shadow /backup/etc_backup/$week/
rsync -aough /etc/gshadow /backup/etc_backup/$week/
rsync -aough /usr/local/apache/conf /backup/etc_backup/$week/
rsync -aough /usr/local/php/lib/php.ini /backup/etc_backup/$week/
rsync -aough /etc/my.cnf /backup/etc_backup/$week/

find /backup/home_backup/ -ctime +7 -exec rm -rf {} \;



#[crontab 등록]

#vim /etc/crontab
#0 3 * * * sh /root/backup/backup_etc.sh


