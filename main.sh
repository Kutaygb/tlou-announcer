#!/bin/bash

source .env

while true; do

  URL="https://www.blutv.com/diziler/yabanci/the-last-of-us/1-sezon/$EPISODE_NUM-bolum-izle"

  if response=$(curl -s $URL); [[ $response == *"/404"* ]]; then
    echo "Error: Page not found!"
  else 
    curl -sX POST "https://api.telegram.org/bot$TELEGRAM_API_KEY/sendMessage" -d "chat_id=$CHAT_ID" -d "text=BluTV - The Last of Us - 1. Season Episode $EPISODE_NUM. live!!"
      #paplay /usr/share/sounds/freedesktop/stereo/complete.oga
    ((EPISODE_NUM++))
  fi

  sleep 120
done
