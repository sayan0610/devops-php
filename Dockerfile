FROM php:7-apache
RUN a2enmod rewrite

# Copy application source
COPY website/ /var/www/
RUN chown -R www-data:www-data /var/www

CMD ["php -S localhost:8080"]
CMD ["start-apache"]
