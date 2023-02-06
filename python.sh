#! /bin/bash
#Installing all the dependencies
set -x
yum -y groupinstall "Development Tools"
sleep 1 m
yum -y install gcc openssl-devel bzip2-devel libffi-devel
sleep 1 m
cd /root
#Installing python from source code
wget https://www.python.org/ftp/python/3.8.4/Python-3.8.4.tgz
sleep 1 m
tar -xvf Python-3.8.4.t! /bin/bash
#Installing all the dependencies
set -x
yum -y groupinstall "Development Tools"
sleep 1 m
yum -y install gcc openssl-devel bzip2-devel libffi-devel
sleep 1 m
cd /root
#Installing python from source code
wget https://www.python.org/ftp/python/3.8.4/Python-3.8.4.tgz
sleep 1 m
tar -xvf Python-3.8.4.tgz
sleep 1 m
./configure --enable-optimizations --with-ensurepip=install
sleep 10 m
make -j 8
sleep 10 m
make altinstall
sleep 10 m
# Installing git
yum install git -y
sleep 1 mgz
sleep 1 m
./configure --enable-optimizations --with-ensurepip=install
sleep 10 m
make -j 8
sleep 10 m
make altinstall
sleep 10 m
# Installing git
yum install git -y
sleep 1 m
