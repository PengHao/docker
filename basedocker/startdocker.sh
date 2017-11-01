#docker run -i -t --net=bridge wolfpeng/webx:1.0.0
#docker run -i -t -p80:80 wolfpeng/tomcat7:1.0.0 

LOGPATH=/logs
docker run -d -it -p 8080:80 -v log:/log registry.wolfpeng.com:5000/wolfpeng/account:latest /bin/bash ./home/start.sh
