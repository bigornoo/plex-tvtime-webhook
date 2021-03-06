FROM node:8-alpine

RUN apk add --update --no-cache git
RUN cd /opt/ && git clone https://github.com/bigornoo/plex-tvtime-webhook.git  

COPY entrypoint.sh /usr/local/bin/

RUN cd /opt/plex-tvtime-webhook && npm install --production && chmod +x /usr/local/bin/entrypoint.sh

EXPOSE 10000

CMD [ "/usr/local/bin/entrypoint.sh" ]

