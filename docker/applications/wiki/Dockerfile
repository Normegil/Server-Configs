FROM node:0.10

RUN apt-get update && \
    apt-get -y install git && \
    git config --global user.name Normegil && \
    git config --global user.email mail@normegil.be

RUN npm install -g jingo

ADD config/settings.yaml /settings.yaml

CMD ["jingo", "-c", "/settings.yaml"]
