path=$(pwd)
echo "path is $path"
echo "#!/usr/bin/env bash\ncd /home/erlichsefi/media_dockers\ndocker-compose restart" > /etc/cron.daily/cron_restart_task
chmod +x /etc/cron.daily/cron_restart_task
docker-compose start
