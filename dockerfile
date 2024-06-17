FROM ubuntu 
RUN apt update 
RUN apt install apache2 -y 
RUN apt install apache2-utils -y 
RUN apt clean 
EXPOSE 80
RUN echo "<h1>Hei Verden" > /var/www/html/index.html
CMD ["apachectl", "-D", "FOREGROUND"]