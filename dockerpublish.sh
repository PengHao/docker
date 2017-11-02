REG_HOST=registry.wolfpeng.com:5000

push(){
  TAG=$2
  REMOTE_TAG_NAME=$3
  
  sudo docker tag ${TAG} ${REG_HOST}/${REMOTE_TAG_NAME} 
  sudo docker push ${REG_HOST}/${REMOTE_TAG_NAME}
}

list(){
  REMOTE_TAG_NAME=$2
  curl -I -X GET "http://${REG_HOST}/v2/${REMOTE_TAG_NAME}/tags/list"

}

if [ "${1}x" = "pushx" ]; then
echo push
push
elif [ "${1}x" = "rmx" ]; then
echo rm
rm
elif [ "${1}x" = "listx" ]; then
echo list
list
else
echo arg is push, rm
fi
 
