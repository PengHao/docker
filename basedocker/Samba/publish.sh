#REGISTRY=registry.wolfpeng.com:5000
REGISTRY=192.168.31.211:5000


#docker build -t wolfpeng/samba:1.0.0 .
docker tag wolfpeng/samba:1.0.1 ${REGISTRY}/wolfpeng/samba_wolfpeng:1.0.0
docker push ${REGISTRY}/wolfpeng/samba_wolfpeng:1.0.0
