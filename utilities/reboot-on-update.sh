#!/usr/bin/env sh

# Local timezone - use the TZ database name from https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
# e.g., Etc/UTC, America/New_York, etc
TZ=AU

# Local time to schedule reboot
TIME=04:00

SCHEDULED=$(eval "date -d 'TZ=\"$TZ\" $TIME' +%H:%M")

sudo update_engine_client --block_until_reboot_is_needed
sudo shutdown -r $SCHEDULED
