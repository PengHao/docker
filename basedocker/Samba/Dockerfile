FROM wolfpeng/samba:1.0.0
MAINTAINER WolfPeng penghao345@gmail.com
ADD smb.conf /etc/samba/
ADD addsmbuser.sh /home/addsmbuser.sh
RUN mkdir /mnt/share
#I
RUN mkdir /mnt/share/pt
#G
RUN mkdir /mnt/share/music
#H
RUN mkdir /mnt/share/movie
#E
RUN mkdir /mnt/share/common
RUN chmod 777 /mnt/share
RUN chmod +x /home/addsmbuser.sh
RUN /bin/sh -c /home/addsmbuser.sh
ENTRYPOINT /etc/init.d/smbd start && /bin/bash
