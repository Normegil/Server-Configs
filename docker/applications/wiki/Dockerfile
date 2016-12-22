FROM istepanov/dokuwiki:2.0

VOLUME /var/dokuwiki-storage/data/pages
VOLUME /var/dokuwiki-storage/conf

RUN apt-get update; exit 0

RUN apt-get install -y unzip tar && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#HELPERS
#PageList
#https://www.dokuwiki.org/plugin:vshare
RUN curl -O -L "https://github.com/dokufreaks/plugin-pagelist/archive/master.zip" && \
    unzip master.zip -d /var/www/lib/plugins/ && \
    mv /var/www/lib/plugins/plugin-pagelist-master /var/www/lib/plugins/pagelist && \
    rm -rf master.zip

#PLUGINS
#Video Embedding
#https://www.dokuwiki.org/plugin:vshare
RUN curl -O -L "https://github.com/splitbrain/dokuwiki-plugin-vshare/zipball/master" && \
    unzip master -d /var/www/lib/plugins/ && \
    mv /var/www/lib/plugins/splitbrain-dokuwiki-plugin-vshare-* /var/www/lib/plugins/vshare && \
    rm -rf master

#Tags
#https://www.dokuwiki.org/plugin:tag
RUN curl -O -L "https://github.com/dokufreaks/plugin-tag/tarball/master" && \
    tar -xzvf master -C /var/www/lib/plugins/ && \
    mv /var/www/lib/plugins/dokufreaks-plugin-tag-* /var/www/lib/plugins/tag && \
    rm -rf master

#Colors
#https://www.dokuwiki.org/plugin:color
RUN curl -O -L "https://github.com/leeyc0/dokuwiki_plugin_color/zipball/master" && \
    unzip master -d /var/www/lib/plugins/ && \
    mv /var/www/lib/plugins/*-dokuwiki_plugin_color-* /var/www/lib/plugins/color && \
    rm -rf master

#Hidden
#https://github.com/gturri/hidden/zipball/master
RUN curl -O -L "https://github.com/gturri/hidden/zipball/master" && \
    unzip master -d /var/www/lib/plugins/ && \
    mv /var/www/lib/plugins/gturri-hidden-* /var/www/lib/plugins/hidden && \
    rm -rf master

#Notes
#https://www.dokuwiki.org/plugin:note
RUN curl -O -L "https://github.com/LarsGit223/dokuwiki_note/archive/2016-09-14.zip" && \
    unzip 2016-09-14.zip -d /var/www/lib/plugins/ && \
    mv /var/www/lib/plugins/dokuwiki_note-* /var/www/lib/plugins/note && \
    rm -rf 2016-09-14.zip

#Code
#https://www.dokuwiki.org/plugin:code
RUN curl -O -L "http://dokuwiki.jalakai.co.uk/plugin-code.tar.gz" && \
    tar -xzvf plugin-code.tar.gz -C /var/www/lib/plugins/ && \
    rm -rf plugin-code.tar.gz

#Mathjax
#https://www.dokuwiki.org/plugin:mathjax
RUN curl -O -L "https://github.com/liffiton/dokuwiki-plugin-mathjax/archive/master.zip" && \
    unzip master.zip -d /var/www/lib/plugins/ && \
    mv /var/www/lib/plugins/*-mathjax-* /var/www/lib/plugins/mathjax && \    rm -rf master.zip

#Hidden
#https://github.com/gturri/hidden/zipball/master
RUN curl -O -L "https://github.com/gturri/hidden/zipball/master" && \
    unzip master -d /var/www/lib/plugins/ && \
    mv /var/www/lib/plugins/gturri-hidden-* /var/www/lib/plugins/hidden && \
    rm -rf master