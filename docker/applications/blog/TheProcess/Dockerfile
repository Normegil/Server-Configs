FROM application/blog:latest

RUN cd content/themes/ && \
    git clone https://github.com/Normegil/Casper.git casper-mod && \
    sed -i -e 's|DISQUS_SHORTNAME|the-process|g' casper-mod/post.hbs
