# Mini Ravencoin Mirror
# Description:
# used for really small nodes that want to run a mirror of files but
# don't have disk space above 20 or so GB
# only a few large files are missing to achieve this feat.

# by push, 10/10/2021
# and with the extended love and support
# of the whole Ravencoin Community

# retrieve latest filesize list
wget https://bootstrap.ravenclause.com/mirror/ravencoinipfs_cluster_under50MB.txt -O ravencoinipfs_cluster_under50MB.txt

echo "Preparing to mirror assets"

cat ravencoinipfs_cluster_under100MB.txt | sed 's/^[[:space:]]*//g' > uniq.txt

# Lets go Ravencoining!
while read p; do
        echo "Pinning/Starting Download for Ravencoin://$p"
ipfs pin add $p --timeout 500s 
done < uniq.txt
