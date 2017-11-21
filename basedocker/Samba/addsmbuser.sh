groupadd wolfpeng -g 6000
useradd wolfpeng -u 6000 -g 6000 -s /sbin/nologin -d /dev/null
mkdir /home/wolfpeng
chown -R wolfpeng:wolfpeng /home/wolfpeng
passwd=wolfpeng && (echo $passwd;echo $passwd) | smbpasswd -a -s wolfpeng
