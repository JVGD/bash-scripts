# Accessing to SMB resources
# smbclient -L malaga.virtuallylive.es -U jvargas

# Mounting with right permissions
sudo mount -t cifs -o username=jvargas,uid=$(id -u),gid=$(id -g),vers=2.0 //malaga.virtuallylive.es/Research ./nas


