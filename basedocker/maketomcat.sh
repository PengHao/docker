mv DockerfileTomcat Dockerfile
docker build -t wolfpeng/tomcat7:1.0.0 .
mv Dockerfile DockerfileTomcat
./startdocker.sh
