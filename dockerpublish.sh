REG_HOST=127.0.0.1:5000
TAG=$1
REMOTE_TAG_NAME=$2
sudo docker tag ${TAG} ${REG_HOST}/${REMOTE_TAG_NAME} 
sudo docker push ${REG_HOST}/${REMOTE_TAG_NAME}