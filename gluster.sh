GLUSTER_IP=$(ifconfig eth0 | grep "inet " | awk -F" " '{print $2}')

yum install -y centos-release-gluster

yum install -y glusterfs-server

systemctl enable glusterd

systemctl start glusterd

# mkdir -p /gluster/{media,skin}

# gluster volume create media_store  $GLUSTER_IP:/gluster/media force;
# gluster volume start media_store;


# gluster volume create skin_store  $GLUSTER_IP:/gluster/skin force;
# gluster volume start skin_store;

