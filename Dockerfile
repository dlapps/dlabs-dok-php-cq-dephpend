FROM dreamlabs/php-composer:latest

RUN apt-get update && \
    apt-get install -y graphviz && \
    composer global require dephpend/dephpend && \
    ln -s /root/.composer/vendor/bin/dephpend /usr/bin/dephpend;

ENTRYPOINT ["dephpend"]