FROM wolfpeng/webx:1.0.2
MAINTAINER WolfPeng penghao345@gmail.com

ADD start.sh /home/start.sh
#COPY product.war /home/product.war
RUN apt-get update \
	&& apt-get install -y maven \
	&& apt-get install -y wget
RUN mkdir -p /var/lib/tomcat7/deploy
RUN wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war /var/lib/tomcat7/deploy/
# COPY deployfile to /var/lib/tomcat7/deploy
