##下载：  
wget --no-check-certificate https://raw.githubusercontent.com/xiyangdiy/Save/master/Kernel/CentOS%206/kernel-firmware-2.6.32-504.3.3.el6.noarch.rpm  
wget --no-check-certificate https://raw.githubusercontent.com/xiyangdiy/Save/master/Kernel/CentOS%206/kernel-2.6.32-504.3.3.el6.x86_64.tar.gz.001  
wget --no-check-certificate https://raw.githubusercontent.com/xiyangdiy/Save/master/Kernel/CentOS%206/kernel-2.6.32-504.3.3.el6.x86_64.tar.gz.002  
cat kernel-2.6.32-504.3.3.el6.x86_64.tar.gz* | tar zx  
rm -f kernel-2.6.32-504.3.3.el6.x86_64.tar.gz*  
##安装：  
rpm -ivh kernel-firmware-2.6.32-504.3.3.el6.noarch.rpm  
rpm -ivh kernel-2.6.32-504.3.3.el6.x86_64.rpm  
