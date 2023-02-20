#!/bin/bash

source .env

while true; do

  URL="https://www.blutv.com/diziler/yabanci/the-last-of-us/1-sezon/[$EPISODE_NUM]-bolum-izle"

  if curl -s -o /dev/null -w "%{http_code}" "$URL" | grep -q 404; then
    echo "Error: Episode $EPISODE_NUM not found!"
  else
    curl -s -X POST "https://api.telegram.org/bot${BOT_TOKEN}/sendMessage" \
      -d "chat_id=${CHAT_ID}" \
      -d "text=Watching episode ${EPISODE_NUM} of The Last of Us."

    ((EPISODE_NUM++))
  fi

  sleep 120
done
