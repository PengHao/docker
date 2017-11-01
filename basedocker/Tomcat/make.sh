
docker build -t wolfpeng/tomcat7:1.0.0 .
docker run -t -i -p 8080:80 wolfpeng/tomcat7:1.0.0
