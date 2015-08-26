FROM node:0.10

EXPOSE 2368

RUN apt-get -y update && \
    apt-get -y install unzip && \
    wget https://ghost.org/zip/ghost-0.6.4.zip && \
    unzip ghost-*.zip -d ghost

WORKDIR /ghost

RUN npm install --production

ADD config.js /ghost/config.js

CMD ["npm", "start", "--production"]
