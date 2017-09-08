mv DockerfileWebx Dockerfile
docker build -t wolfpeng/webx:1.0.2 .
mv Dockerfile DockerfileWebx
./startdocker.sh
