FROM centos

MAINTAINER roger.r.l94@hotmail.com

EXPOSE 80

RUN yum -y update && yum -y install httpd && yum clean all

ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
