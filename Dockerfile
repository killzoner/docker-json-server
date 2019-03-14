FROM node:lts-alpine

RUN npm install -g json-server

WORKDIR /data
VOLUME /data

EXPOSE 80
ADD run.sh /run.sh
ENTRYPOINT ["sh", "/run.sh"]
CMD []
