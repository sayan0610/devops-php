FROM php:7-apache

COPY start-apache /usr/local/bin
RUN a2enmod rewrite

# Copy application source
COPY website/ /var/www/
RUN chown -R www-data:www-data /var/www

CMD ["start-apache"]
