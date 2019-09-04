FROM node:8-alpine
RUN apk add --update --no-cache git


RUN cd /opt/ && git clone https://github.com/bigornoo/plex-tvtime-webhook.git && mkdir /opt/plex-tvtime-webhook/conf && cp /opt/plex-tvtime-webhook/.env.example /opt/plex-tvtime-webhook/conf/.env 
VOLUME [ "/opt/plex-tvtime-webhook/conf" ]
ENTRYPOINT [ "entrypoint.sh" ]
