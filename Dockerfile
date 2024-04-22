FROM ubuntu/apache2
WORKDIR /var/www/html
RUN rm index.html
RUN touch index.html
RUN echo "test page" > index.html
EXPOSE 80
CMD ["apache2ctl" , "-D" , "FOREGROUND"]
