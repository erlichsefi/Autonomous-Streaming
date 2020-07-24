
FROM python:3.7


RUN git clone https://github.com/lupus78/feedtransmission
WORKDIR /feedtransmission
RUN pip3 install -r requirements.txt 
RUN pip3 install --user mnamer
RUN pip3 install six
WORKDIR /

# Add crontab file in the cron directory - rss 
ADD rss.sh /etc/rss.sh
ADD crontab-rss /etc/cron.d/crontab-rss

# Add crontab file in the cron directory - copy 
ADD crontab-copy /etc/cron.d/crontab-copy


# Give execution rights on the cron job - rss
RUN chmod 0644 /etc/cron.d/crontab-rss
RUN chmod 0644 /etc/rss.sh

# Give execution rights on the cron job - copy
RUN chmod 0644 /etc/cron.d/crontab-copy


# Create the log file to be able to run tail
RUN touch /var/log/cron_copy.log
RUN touch /var/log/cron_rss.log

#Install Cron
RUN apt-get update
RUN apt-get -y install cron
RUN apt-get -y install nano


# Run the command on container startup
CMD env > /etc/env.txt && cron && tail -f /var/log/cron_copy.log  & tail -f /var/log/cron_rss.log 
