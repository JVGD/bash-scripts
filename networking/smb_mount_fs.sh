# Accessing to SMB resources
# smbclient -L malaga.virtuallylive.es -U jvargas

# Mounting SMB into mountpoint, if error: operation not permited, change
# vers=1.0, 2.0 or 3.0 
sudo mount.cifs //malaga.virtuallylive.es/Research ./nas -o username=jvargas,vers=2.0

