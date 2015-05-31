FROM base:latest

EXPOSE 8245 

ENV $NOIP_HOME /no-ip

RUN wget http://www.no-ip.com/client/linux/noip-duc-linux.tar.gz
RUN mkdir /no-ip
RUN tar xzf noip-duc-linux.tar.gz

ADD no-ip-* /no-ip

WORKDIR /no-ip
RUN make
RUN make install

CMD ["/bin/bash", "-c", "/config/no-ip/no-ip.sh"]
