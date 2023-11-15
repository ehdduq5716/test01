#!/bin/bash

week=`date +%Y%m%d`

mkdir -p /usr/local/games/$week/

/usr/local/mysql/bin/mysqldump -u root -p''  --all-databases > /usr/local/games/$week.sql

tar zcfvP /usr/local/games/$week.sql.tar.gz /usr/local/games/$week.sql
rm -rf /usr/local/games/$week.sql

find /backup/DB_backup/ -ctime +7 -exec rm -rf {} \;
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#[crontab 등록]

#vim /etc/crontab
#30 3 * * * sh /root/backup/backup_DB.sh