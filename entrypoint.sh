#!/bin/sh
set -e

echo "$1" | crontab - && crond -f -l 0 -L -
