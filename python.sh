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
sleep 1 m
# Running python script
echo "========Running python script=========="
git clone git@github.com:alexphilip5/pythonscript.git
cd pythonscript/
pip -r install requirements.txt
chmod u+x *
python3 icd_scrap_script_for_lambda.py &
echo "ICD Script ran successfully"
python3 facility_script.py &
echo "Facilitator Script ran successfully"
python3 provider_script.py &
echo "Provider Script ran successfully"
