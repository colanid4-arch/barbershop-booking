FROM php:8.2-apache 
 
# Install mysqli extension 
RUN docker-php-ext-install mysqli 
 
# Enable mod_rewrite 
RUN a2enmod rewrite 
 
# Copy all files to Apache web root 
COPY . /var/www/html/ 
 
# Set permissions 
RUN chown -R www-data:www-data /var/www/html 
