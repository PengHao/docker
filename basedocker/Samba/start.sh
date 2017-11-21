#docker run -d -it -p 139:139 445:445 137:137 138:138 -v log:/log registry.wolfpeng.com:5000/wolfpeng/samba:1.0.0 /bin/bash ./home/start.sh
#I
PT=/mnt/i
DOCKER_PT=/mnt/share/pt
#G
MUSIC=/mnt/g
DOCKER_MUSIC=/mnt/share/music
#H
MOVIE=/mnt/h
DOCKER_MOVIE=/mnt/share/movie
#E
COMMON=/mnt/e
DOCKER_COMMON=/mnt/share/common

docker run  -d -it \
	-p 139:139 \
	-p 445:445 \
	-p 137:137 \
	-p 138:138 \
	-v ${PT}:${DOCKER_PT} \
	-v ${MUSIC}:${DOCKER_MUSIC} \
	-v ${MOVIE}:${DOCKER_MOVIE} \
	-v ${COMMON}:${DOCKER_COMMON} \
	wolfpeng/samba:1.0.1
#	${REGISTRY_PATH}:/wolfpeng/samba:1.0.1

