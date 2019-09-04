 #!/usr/bin/env sh
if [ -e /opt/plex-tvtime-webhook/conf/.env ]; then 
        source /opt/plex-tvtime-webhook/conf/.env
else 
        echo ".env file needed in conf folder"
        exit 1
fi
if [ -z $TVTIME_ACCESS_TOKEN ]; then
        /opt/plex-tvtime-webhook/register.js
else
        node /opt/plex-tvtime-webhook/index.js
fi