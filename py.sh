#! /bin/bash
# python 版本

version='3.7.3'
echo '一键安装python3.x程序'

#安装环境包
#yum install vim -y
yum -y install zlib zlib-devel 
yum -y install bzip2 bzip2-devel
#yum -y install ncurses ncurses-devel
yum -y install readline readline-devel
yum -y install openssl openssl-devel
yum -y install openssl-static
yum -y install xz lzma xz-devel
yum -y install sqlite sqlite-devel
yum -y install gdbm gdbm-devel
yum -y install tk tk-devel
yum -y install libffi libffi-devel
yum -y install zlib* libffi-devel
yum install gcc* glien* -y

wget https://www.python.org/ftp/python/$version/Python-$version.tgz

tar -xvf Python-$version.tgz
mkdir /usr/local/python3
#进入python 目录
cd Python-$version

#配置参数
./configure --prefix=/usr/local/python3 && make && make install

if test $[python3 -V]==0; then echo '安装成功'; else echo'安装出错！';fi

#建立软链接
ln -s /usr/local/python3/bin/python3.7 /usr/bin/python3
ln -s /usr/local/python3/bin/pip3.7 /usr/bin/pip3
PATH=$PATH:/usr/bin/python3
echo '安装完成'
read -p '回车查看版本' V
python3 -V

