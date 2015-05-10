#!/bin/sh

crontab -u root -l 2>/dev/null | sed -r -e /talk.ephem/d > /tmp/$$.tmp || exit
echo "0 0 * * *  /etc/init.d/talk-ephem start" >> /tmp/$$.tmp
crontab -u root /tmp/$$.tmp
rm -f /tmp/$$.tmp 2>/dev/null
