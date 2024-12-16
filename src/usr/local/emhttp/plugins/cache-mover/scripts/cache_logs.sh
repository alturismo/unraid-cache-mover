#!/bin/bash

################################
cache_cleaner_log="/usr/local/emhttp/plugins/cache-mover/cache_cleaner_log.txt"
cache_mover_log="/usr/local/emhttp/plugins/cache-mover/cache_mover_log.txt"

##########################
cat /var/log/syslog | grep -i "cache-cleaner:" >> $cache_cleaner_log
tail -n 500 $cache_cleaner_log > myfile.tmp
cat myfile.tmp > $cache_cleaner_log
rm myfile.tmp
cat /var/log/syslog | grep -i "cache-mover:" >> $cache_mover_log
tail -n 500 $cache_mover_log > myfile.tmp
cat myfile.tmp > $cache_mover_log
rm myfile.tmp

exit;