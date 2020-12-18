# media_dockers

This is a compose of 4 serivces in 3 dockers:
- Plex Docker: an home media server, that take the media files and stream them to a client with the full media description.
     https://hub.docker.com/r/plexinc/pms-docker/
- Transmission Docker: a torrent client with web interface.
    https://hub.docker.com/r/linuxserver/transmission/
- Orca Docker: self build docker with the following services as cron tasks:
    - Mnamer github repo: a media organization utility.
        https://github.com/jkwill87/mnamer 
    - Transmission RSS: Which track an RSS feed and load transmission with the link magnet.
        https://github.com/nning/transmission-rss


All together allow me to get my video contant easily on my plex client. 

What you need to do?
1. Install docker on a server https://www.docker.com/get-started
2. Update the .env file:
    - 'HOST_NAME' is the name of the machine docker installed on.
    - 'UID' and 'GID' are the user and group id of your user (run the following commend 'id `whoami`')
    - 'TZ' you can use site like http://www.timezoneconverter.com/ to find it.
    - 'TRANSMISSION_USER' and 'TRANSMISSION_PASS' are the username and password you would like to set to your transmission server.
    - 'PLEX_HOST_NAME' is a name you should select to Plex server
    - 'PLEX_CLAIM_ID' you should take from  https://plex.tv/claim
    - 'RSS_FEED' is a link to rss feed to torrents should be sent to the transmission server (i use https://showrss.info/)
    - 'META_FOLDER' is a folder where to store all the dockers metadata
    - 'DOWNLOAD_PATH' is a folder where all the file will be download to.
    - 'MOVIES_PATH' is a folder where all movies should be stored.
    - 'TVSHOW_PATH' is a folder where all tvshows should be stored.
    - 'MUSIC_PATH' is a folder where all music should be stored.
3. run 'docker-compose build'
4. allow build script to run "chmod +x build.sh"
4. run 'sudo ./build.sh'
5. enjoy! 
   - you can find plex at http://<HOST_NAME>:32400/
   - you can find transmission in http://<HOST_NAME>:9091/
