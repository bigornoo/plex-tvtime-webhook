FROM node:8-alpine
RUN apk add --update --no-cache git

RUN cd /opt/ && git clone https://github.com/SpaceK33z/plex-tvtime-webhook.git && cp /opt/plex-tvtime-webhook/.env.example /opt/plex-tvtime-webhook/.env 
VOLUME [ "/opt/plex-tvtime-webhook/.env" ]
CMD [ "entrypoint.sh" ]
