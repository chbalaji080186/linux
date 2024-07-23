DIR_SRC=10.164.35.4
DIR_TGT=/mnt/prodefs 
echo Mounting $DIR_SRC:/ to $DIR_TGT
# Mount EFS file system
mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2 $DIR_SRC:/ $DIR_TGT
chmod go+rw $DIR_TGT
# Backup fstab
cp -p /etc/fstab /etc/fstab.back-$(date +%F)
# Append line to fstab
echo -e "$DIR_SRC:/ \t\t $DIR_TGT \t\t nfs4 nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2 0 0" | tee -a /etc/fstab

