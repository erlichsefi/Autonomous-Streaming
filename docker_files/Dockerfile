
FROM python:3.7


ARG downloads_path="/torrent_downloads"
ARG movies_path="/movies"
ARG tvshows_path="/tvshows"


RUN git clone https://github.com/lupus78/feedtransmission
WORKDIR /feedtransmission
RUN pip3 install -r requirements.txt 
RUN pip3 install --user mnamer
RUN pip3 install six
WORKDIR /

# Add crontab file in the cron directory
ADD crontab-rss /etc/cron.d/crontab-rss
ADD crontab-copy /etc/cron.d/crontab-copy

# Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/crontab-rss
RUN chmod 0644 /etc/cron.d/crontab-copy

# Create the log file to be able to run tail
RUN touch /var/log/cron_copy.log
RUN touch /var/log/cron_rss.log

#Install Cron
RUN apt-get update
RUN apt-get -y install cron


# Run the command on container startup
CMD cron && tail -f /var/log/cron_copy.log  & tail -f /var/log/cron_rss.log 
