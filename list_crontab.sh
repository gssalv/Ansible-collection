#!/bin/bash

while IFS=: read -r username _; do
  crontab -u "$username" -l 2>&1
done < /etc/passwd
