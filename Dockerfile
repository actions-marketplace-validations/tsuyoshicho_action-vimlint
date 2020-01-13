FROM thinca/vim:v8.1.2248

RUN wget -O - -q https://raw.githubusercontent.com/reviewdog/reviewdog/master/install.sh| sh -s -- -b /usr/local/bin/ v0.9.16
RUN apk --update add git && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
