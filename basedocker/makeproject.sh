mv DockerfileProject Dockerfile
docker build -t wolfpeng/project:1.0.0 .
mv Dockerfile DockerfileProject
docker run -i -t -p80:80 wolfpeng/project:1.0.0
