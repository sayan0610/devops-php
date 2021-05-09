FROM php:7-apache
COPY /var/lib/jenkins/workspace/job2/website/  /usr/local/bin
RUN  php -S localhost:8080
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
COPY start-apache /usr/local/bin
RUN a2enmod rewrite

# Copy application source
COPY src /var/www/
RUN chown -R www-data:www-data /var/www

CMD ["start-apache"]
