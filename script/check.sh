#!/bin/bash
nc -z localhost 80
result=$?
if [[ -f /var/www/html/index.nginx-debian.html ]]; then
     file_exists=0
else
     file_exists=1
fi
if [[ $result -ne 0 || $file_exists -ne 0 ]]; then
     exit 1
fi
exit 0
