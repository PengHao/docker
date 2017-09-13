echo $1
timestamp=`date +%s`
echo $timestamp
#docker rmi -f wolfpeng/project:1.0.0
mv DockerfileProject Dockerfile
docker build -t wolfpeng/$1:${timestamp} .
mv Dockerfile DockerfileProject
docker run -i -t -p80:80 wolfpeng/$1:${timestamp}
