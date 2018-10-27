# Docker cron

This is a utility to run cron jobs with docker containers.  

## Docker run
```bash
docker run -d \
--restart always \
--name cron \
r1ckr/cron:1 \
'* * * * * curl https://reqres.in/api/users > /proc/$(cat /var/run/crond.pid)/fd/1 2>&1'
```
