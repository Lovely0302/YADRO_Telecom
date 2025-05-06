#!/usr/bin/env bash
set -euo pipefail

URLS=(
  "https://httpstat.us/200"
  "https://httpstat.us/301"
  "https://httpstat.us/404"
  "https://httpstat.us/503"
  "https://httpstat.us/418"
)

for url in "${URLS[@]}"; do
  body=$(curl -s "$url")
  status=$(curl -s -o /dev/null -w "%{http_code}" "$url")
  timestamp=$(date +"%Y-%m-%d %H:%M:%S")
  if (( status < 400 )); then
    echo "$timestamp INFO $url → $status | ${body}"
  else
    echo "$timestamp ERROR $url → $status | ${body}" >&2
    exit 1
  fi
done

