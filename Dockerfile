FROM php:8.1-cli
RUN curl -L https://github.com/phpDocumentor/phpDocumentor/releases/download/v3.3.0/phpDocumentor.phar -o /usr/local/bin/phpDocumentor
COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh && chmod a+x /usr/local/bin/phpDocumentor
ENTRYPOINT ["/entrypoint.sh"]
