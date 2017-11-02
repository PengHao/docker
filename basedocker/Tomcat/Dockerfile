FROM wolfpeng/base:1.0.0
MAINTAINER WolfPeng penghao345@gmail.com

ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64
ENV NGINX_CONF=/opt/nginx/nginx.conf
ENV CATALINA_HOME=/opt/tomcat7
ENV TOMCAT_PORT="7001"
ENV MIDDLEWARE_LOGS=/home/admin/middleware/logs
ENV MIDDLEWARE_SNAPSHOTS=/home/admin/middleware/snapshots

RUN mkdir -p $MIDDLEWARE_SNAPSHOTS
RUN mkdir -p $MIDDLEWARE_LOGS

#ENV CATALINA_OPTS="-server"
#ENV CATALINA_OPTS="${CATALINA_OPTS} -Xms4g -Xmx4g"
#ENV CATALINA_OPTS="${CATALINA_OPTS} -XX:PermSize=512m -XX:MaxPermSize=512m"
#ENV CATALINA_OPTS="${CATALINA_OPTS} -Xmn2g"
#ENV CATALINA_OPTS="${CATALINA_OPTS} -XX:MaxDirectMemorySize=1g"
#ENV CATALINA_OPTS="${CATALINA_OPTS} -XX:SurvivorRatio=10"
#ENV CATALINA_OPTS="${CATALINA_OPTS} -XX:+UseConcMarkSweepGC -XX:+UseCMSCompactAtFullCollection -XX:CMSMaxAbortablePrecleanTime=5000"
#ENV CATALINA_OPTS="${CATALINA_OPTS} -XX:+CMSClassUnloadingEnabled -XX:CMSInitiatingOccupancyFraction=80 -XX:+UseCMSInitiatingOccupancyOnly"
#ENV CATALINA_OPTS="${CATALINA_OPTS} -XX:+ExplicitGCInvokesConcurrent -Dsun.rmi.dgc.server.gcInterval=2592000000 -Dsun.rmi.dgc.client.gcInterval=2592000000"
#ENV CATALINA_OPTS="${CATALINA_OPTS} -XX:ParallelGCThreads=${CPU_COUNT}"
ENV CATALINA_OPTS="${CATALINA_OPTS} -Xloggc:${MIDDLEWARE_LOGS}/gc.log -XX:+PrintGCDetails -XX:+PrintGCDateStamps"
#ENV CATALINA_OPTS="${CATALINA_OPTS} -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=${MIDDLEWARE_LOGS}/java.hprof"
#ENV CATALINA_OPTS="${CATALINA_OPTS} -Djava.awt.headless=true"
#ENV CATALINA_OPTS="${CATALINA_OPTS} -Dsun.net.client.defaultConnectTimeout=10000"
#ENV CATALINA_OPTS="${CATALINA_OPTS} -Dsun.net.client.defaultReadTimeout=30000"
ENV CATALINA_OPTS="${CATALINA_OPTS} -DJM.LOG.PATH=${MIDDLEWARE_LOGS}"
ENV CATALINA_OPTS="${CATALINA_OPTS} -DJM.SNAPSHOT.PATH=${MIDDLEWARE_SNAPSHOTS}"
#ENV CATALINA_OPTS="${CATALINA_OPTS} -Dfile.encoding=${JAVA_FILE_ENCODING}"
ENV CATALINA_OPTS="${CATALINA_OPTS} -Dhsf.publish.delayed=true"
ENV CATALINA_OPTS="${CATALINA_OPTS} -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8000"

ADD start.sh /home/admin/start.sh
ADD tomcat7.tar.gz /opt/
RUN mkdir -p /opt/nginx
RUN apt-get update \
	&& chmod +x /opt/tomcat7/bin/*.sh

ADD nginx.conf /opt/nginx/nginx.conf
RUN chmod +x /home/admin/start.sh
RUN chmod 777 /opt/tomcat7/webapps

