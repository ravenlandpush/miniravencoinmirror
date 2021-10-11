# miniravencoinmirror

Orchestration to Mirror the Entire Ravencoin Pinset using Ravenclause Bootstrap, written by push adam@ravenclause.com. Assumes you have a working IPFS environment and Linux machine running Redhat, CentOS, Debian (may work on many other Linux OS) with github installed.

# Usage

In your IPFS environment simply type the following commands to initiate the ravencoin bootstrap. 

```
yum install github;
git clone https://github.com/ravenlandpush/miniravencoinmirror

chmod +x miniravenmirror.sh
cd miniravencoinmirror && ./miniravenmirror.sh
```

# Cron

```
cd miniravencoinmirror
# run on tuesday and thursday at 4AM

sudo echo "0 4 * * 2,4 youripfsuser $PWD/miniravencoinmirror/miniravenmirror.sh" > /etc/cron.d/miniravencoinmirror```
