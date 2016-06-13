FROM node:0.10

RUN apt-get update && \
    apt-get -y install texlive-latex-base

ADD application/ /app
ADD config/CV.json /app/CV.json

WORKDIR /app

RUN npm install

CMD ["npm", "start"]
