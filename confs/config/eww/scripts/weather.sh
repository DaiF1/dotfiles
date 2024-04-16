#!/bin/bash

IPINFO=$(curl -s -L ipinfo.io)
while [[ -z $IPINFO ]]; do
    IPINFO=$(curl -s -L ipinfo.io)
done

REG=$(echo "$IPINFO" | jq -r '"\(.city) \(.region)" | gsub(" ";"+")')
URL="http://nominatim.openstreetmap.org/search?format=json&q=${REG}&limit=1"
LOCATION=$(curl -s -L "${URL}")
LAT=$(echo "$LOCATION" | jq -r '"\(.[0].lat)" | tonumber * 100 | round / 100')
LON=$(echo "$LOCATION" | jq -r '"\(.[0].lon)" | tonumber * 100 | round / 100')
WEATHER=$(curl -s -L "https://api.open-meteo.com/v1/forecast?latitude=${LAT}&longitude=${LON}&current=temperature_2m")

echo $WEATHER | jq -r '"\(.current.temperature_2m) C"'
