#!/usr/bin/env sh

curl -s -u "$1:$2" \
        -d status="`seq -s ' ' 1 $(date +%I) | sed 's/[0-9]*/DONG/g'`" \
        http://twitter.com/statuses/update.json >> /dev/null
