# media_dockers

This is a compose of 4 serivces:
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