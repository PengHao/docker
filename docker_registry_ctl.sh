REGISTRY_PATH=/mnt/docker/registry
start_registry(){
  sudo docker run -d -p 5000:5000 -v ${REGISTRY_PATH}:/var/lib/registry registry
}

stop_registry(){
  sudo docker stop registry
}

restart_registry(){
  stop_registry
  start_registry
}


if [ "${1}x" = "startx" ]; then
echo start
start_registry
elif [ "${1}x" = "stopx" ]; then
echo stop
stop_registry
elif [ "${1}x" = "retartx" ]; then
echo restart
restart_registry
else
echo arg is start, stop, restart
fi
