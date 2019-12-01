#/bin/bash

a=$(lsb_release -i)
b=$(uname -r)
c=$(lsb_release -r)
c=${b::10}

if [ "$a" != "Distributor ID:	CentOS" ];then
   echo "当前系统不是CentOS"
   exit 1
fi

if [ "$b" == "2.6.32-504.3.3.el6.x86_64" ];then
   echo "内核已更换！"
elif [ "$b" == "3.10.0-229.1.2.el7.x86_64" ];then
   echo "内核已更换！" 
else Install_Kernel
fi

Install_Kernel(){
if [ "$c" == "Release:	6" ];then
   wget --no-check-certificate https://github.com/xiyangdiy/TCP/blob/master/ServerSpeeder/Kernel/CentOS%206/kernel-2.6.32-504.3.3.el6.x86_64.rpm
   wget --no-check-certificate https://github.com/xiyangdiy/TCP/blob/master/ServerSpeeder/Kernel/CentOS%206/kernel-firmware-2.6.32-504.3.3.el6.noarch.rpm
   sleep 2
   rpm -ivh kernel-firmware-2.6.32-504.3.3.el6.noarch.rpm --force
   sleep 2   
   rpm -ivh kernel-2.6.32-504.3.3.el6.x86_64.rpm --force  
   
   echo "内核更换完成,需要重启!"   
   read -n 1 -p "请按回车键确认重启,或按Ctrl+C取消。" INP
   if [ "$INP" == '' ] ; then
      reboot
   fi

elif [ "$c" == "Release:	7" ];then
   wget --no-check-certificate https://github.com/xiyangdiy/TCP/blob/master/ServerSpeeder/Kernel/CentOS%207/kernel-3.10.0-229.1.2.el7.x86_64.rpm
   sleep 2
   rpm -ivh kernel-3.10.0-229.1.2.el7.x86_64.rpm --force  
   
   echo "内核更换完成,需要重启!"   
   read -n 1 -p "请按回车键确认重启,或按Ctrl+C取消。" INP
   if [ "$INP" == '' ] ; then
      reboot
   fi
fi
}