#!/bin/sh
cat /home/teeworlds/servers/servers/*log* | grep "^\[`date --date='1 days ago' +%y-%m-%d`" | grep "player has entered the game" | sed -e "s/.*addr=\(.*\):.*/\1/" | sort | uniq | while read line; do geoiplookup $line; done | sort | uniq -c | sort -gr
