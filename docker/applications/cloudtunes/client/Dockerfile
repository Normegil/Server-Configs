FROM base:latest

ENV TERM linux
RUN locale-gen en_US.UTF8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV PATH "$PATH:/usr/bin"

EXPOSE 8000

RUN curl -sL https://deb.nodesource.com/setup | sudo bash -

RUN apt-get -y update && \ 
    apt-get -y install nginx python-dev python-pip \
               git ruby python-software-properties python g++ make nodejs \
               build-essential ruby-dev

RUN gem install compass && \
    npm install -g brunch

RUN mkdir /home/cloudtunes
WORKDIR /home/cloudtunes

ADD cloudtunes/cloudtunes-webapp /home/cloudtunes/cloudtunes-webapp
RUN cd cloudtunes-webapp && \
    npm install && \
    brunch b --env config-dist.coffee

RUN groupadd -r cloudtunes -g 433 \
    && useradd -u 431 -r -g cloudtunes -d /home/cloudtunes \
               -s /usr/sbin/nologin -c "Docker image user" cloudtunes \
    && chown -R cloudtunes:cloudtunes /home/cloudtunes

CMD["cloudtunes-worker", "worker", "--loglevel=INFO", "-c", "4" "&", "&&", "cloudtunes-server", "&"]
