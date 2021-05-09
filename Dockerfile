FROM php:7-apache
COPY website/  /usr/local/bin
COPY start-apache /usr/local/bin
RUN a2enmod rewrite

# Copy application source
COPY src /var/www/
RUN chown -R www-data:www-data /var/www

CMD ["start-apache"]
