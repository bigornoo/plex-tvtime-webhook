# Plex TVTime Webhook : docker container

The documentation of the original project is available at this address: https://github.com/SpaceK33z/plex-tvtime-webhook

## How this works
- clone the project
- create a directory named `conf` to the root of the project
- copy `.env.example` to `conf/.env.` Fill out the `PORT` and `PLEX_USER`
- the fisrt time, launch `docker-compose` command without `-d` to see logs in console (and see the code to paste in the web page and the URL)
- authorize the app to access to your **tv-time account** (see the official doc)
- create a webhook in Plex : Plex pass required ; see the [how to do it here](https://support.plex.tv/articles/115002267687-webhooks/)
- next time, you can launch  
```
$ docker-compose up -d
```



