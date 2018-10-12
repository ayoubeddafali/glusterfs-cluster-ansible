yum install -y centos-release-gluster
yum install -y glusterfs-server

systemctl start glusterd

rm -rf /home/myshop/public_html/media/*
rm -rf /home/myshop/public_html/skin/*

mkdir -p /home/myshop/public_html/media/
mkdir -p /home/myshop/public_html/skin/

mount -t glusterfs $1:/media_store /home/myshop/public_html/media;
mount -t glusterfs $1:/skin_store /home/myshop/public_html/skin;

echo "$1:/media_store /home/myshop/public_html/media glusterfs defaults,_netdev 0 0" >> /etc/fstab;
echo "$1:/skin_store /home/myshop/public_html/skin  glusterfs defaults,_netdev 0 0" >> /etc/fstab;