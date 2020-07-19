FROM centos:latest
RUN yum install httpd -y 
COPY index.html /var/www/html
#COPY test.sh /tmp
#RUN chmod +x /tmp/test.sh
#ENTRYPOINT ["/tmp/test.sh"]
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
