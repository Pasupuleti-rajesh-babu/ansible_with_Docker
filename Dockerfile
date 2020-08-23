FROM centos:latest
RUN yum install httpd -y
CMD /usr/sbin/httpd -DFOREGROUND
COPY index.html /var/www/html/
