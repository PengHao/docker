#I
PT=/mnt/pt
DOCKER_PT=/mnt/share/pt
#G
MUSIC=/mnt/music
DOCKER_MUSIC=/mnt/share/music
#H
MOVIE=/mnt/movie
DOCKER_MOVIE=/mnt/share/movie
#E
COMMON=/mnt/common
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
	${REGISTRY_PATH}:/wolfpeng/samba:1.0.1
