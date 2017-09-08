FROM wolfpeng/javabase:1.0.1
MAINTAINER WolfPeng penghao345@gmail.com

ADD start.sh /home/start.sh
#COPY product.war /home/product.war
RUN apt-get update && apt-get install -y nginx \
	&& apt-get install -y tomcat7 \
	&& apt-get install -y git
ADD server.xml /etc/tomcat7/server.xml
ADD nginx.conf /home/nginx.conf
RUN chmod +x /home/start.sh
# COPY deployfile to /var/lib/tomcat7/deploy
