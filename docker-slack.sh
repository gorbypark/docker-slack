#!/bin/bash
 
docker logs --tail="0" -f $1 | less +F | while read LINE; do
  (echo "$LINE" | grep -e "$3") && curl -X \
POST --silent --data-urlencode \
    "payload={\"username\": \"Docker Logbot\", \"text\": \"$(echo "[$1]"; echo $LINE | sed \
"s/\"/'/g")\"}" "$2";
done
