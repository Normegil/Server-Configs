FROM base:latest

EXPOSE 8245

RUN wget http://www.no-ip.com/client/linux/noip-duc-linux.tar.gz && \
    tar xzvf noip-duc-linux.tar.gz && \
    cd noip-* && \
    make && \
    mkdir /noip && \
    mv noip2 /noip

CMD /bin/bash -c '/scripts/no-ip/noip.sh'
