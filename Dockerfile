FROM php:7-apache

COPY website/000-default.conf /etc/apache2/sites-available/000-default.conf
COPY website/start-apache /usr/local/bin
RUN a2enmod rewrite

# Copy application source
COPY website /var/www
RUN chown -R www-data:www-data /var/www

CMD ["start-apache"]
