FROM php:7-apache
RUN a2enmod rewrite

# Copy application source
COPY website/ /user/bin/local

CMD ["/bin/sh -c 'php -S localhost:8080'"]
