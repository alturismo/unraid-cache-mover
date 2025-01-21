#!/bin/bash

################################
source /boot/config/plugins/cache-mover/cachemoversettings

################################
configfile="/boot/config/plugins/cache-mover/cachemoversettings"

################################
if [ ! -z "$clean_cron" ]; then
( crontab -l | grep -v -F "Cache_Cleaner" ; echo "# Cron Job for Cache_Cleaner plugin" ) | crontab -
( crontab -l | grep -v -F "cache_mover3" ; echo "$clean_cron /usr/local/emhttp/plugins/cache-mover/scripts/cache_mover3 >/dev/null 2>&1" ) | crontab -
sed -i 's/^clean_cron_state=.*/clean_cron_state="started"/' $configfile
else
crontab -l | grep -v "Cache_Cleaner"  | crontab -
crontab -l | grep -v "cache_mover3"  | crontab -
sed -i 's/^clean_cron_state=.*/clean_cron_state="stopped"/' $configfile
fi

exit;