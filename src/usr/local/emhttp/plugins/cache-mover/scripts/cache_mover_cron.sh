#!/bin/bash

################################
source /boot/config/plugins/cache-mover/cachemoversettings

################################
configfile="/boot/config/plugins/cache-mover/cachemoversettings"

################################
if [ ! -z "$script_cron" ]; then
( crontab -l | grep -v -F "Cache_Mover" ; echo "# Cron Job for Cache_Mover plugin" ) | crontab -
( crontab -l | grep -v -F "cache_mover2" ; echo "$script_cron /usr/local/emhttp/plugins/cache-mover/scripts/cache_mover2 >/dev/null 2>&1" ) | crontab -
sed -i 's/^script_cron_state=.*/script_cron_state="started"/' $configfile
else
crontab -l | grep -v "Cache_Mover"  | crontab -
crontab -l | grep -v "cache_mover2"  | crontab -
sed -i 's/^script_cron_state=.*/script_cron_state="stopped"/' $configfile
fi

exit;