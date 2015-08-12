FROM dgageot/ngxpagespeed

RUN apt-get install -y ssl-cert
RUN make-ssl-cert generate-default-snakeoil --force-overwrite


ADD conf_nginx /etc/nginx/sites-enabled/default
#ADD html.jpg /var/www/
#ADD test.html /var/www/
