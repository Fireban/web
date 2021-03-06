#!/bin/sh
echo Y | sudo add-apt-repository main
echo Y | sudo add-apt-repository universe
echo Y | sudo add-apt-repository restricted
echo Y | sudo add-apt-repository multiverse
echo Y | sudo apt-get update
echo Y | sudo apt-get upgrade
echo Y | sudo apt-get install python
echo Y | sudo apt-get install python3
echo Y | sudo apt-get install gdb
echo Y | sudo apt-get install ssh
echo Y | sudo apt-get install net-tools
echo Y | sudo apt-get install git
echo Y | sudo apt-get install clang
echo Y | sudo apt-get install cmake
echo Y | sudo apt-get install lldb
echo Y | sudo apt-get install vim
echo Y | sudo apt-get install fail2ban
echo Y | sudo apt-get install python-pip
echo Y | sudo python -m pip uninstall pip
echo Y | sudo apt-get install python-pip --reinstall
sudo ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime
echo Y | sudo apt-get upgrade
echo Y | sudo apt-get install python3-pip
echo Y | sudo apt-get install nginx
echo Y | sudo apt-get install libnginx-mod-rtmp
echo Y | apt-get install gunicorn
sudo service nginx restart
echo Y | sudo apt-get install mariadb-server
echo Y | sudo apt-get install libmysqlclient-dev
echo Y | sudo apt-get install ffmpeg
echo Y | sudo apt-get install curl
sudo curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
echo Y | sudo apt update
echo Y | sudo apt install yarn
sudo mkdir /var/www/record
sudo mkdir /var/www/record/tic
sudo mkdir /var/www/record/stream
sudo chown -R www-data /var/www/record
sudo mkdir /var/www/detect
sudo chmod -R 777 /var/www/detect
sudo mkdir /var/www/output
sudo mkdir /var/www/output/origin
sudo mkdir /var/www/output/result
sudo chmod -R 777 /var/www/output
sudo mkdir /var/www/api
sudo mkdir /var/www/api/stream
sudo mkdir /var/www/api/stream/live
sudo mkdir /var/www/api/stream/tic
sudo chown -R www-data /var/www/api/stream
sudo mv ./nginx_conf/fireban_nginx_conf /etc/nginx/sites-available/
sudo mv ./nginx_conf/nginx.conf /etc/nginx/
sudo ln -s /etc/nginx/sites-available/fireban_nginx_conf /etc/nginx/sites-enabled/
sudo rm /etc/nginx/sites-enabled/default
sudo rm /etc/nginx/sites-available/default
sudo service nginx restart
sudo mv ./gunicorn.service /etc/systemd/system/
sudo mkdir /home/webmaster
sudo mv ./fireban /home/webmaster
sudo mv ./front /home/webmaster
sudo mv ./stream /home/webmaster
sudo mkdir /home/webmaster/fireban/run
pip3 install gunicorn
pip3 install Django gunicorn
pip3 install mysqlclient
pip3 install Cython
echo Y | sudo apt-get install libtiff5-dev libjpeg8-dev zlib1g-dev libfreetype6-dev liblcms2-dev libwebp-dev tcl8.6-dev tk8.6-dev python-tk
pip3 install -r /home/webmaster/fireban/requirement.txt
sudo service gunicorn restart
echo Y | sudo apt install libssl1.0-dev
echo Y | sudo apt install nodejs-dev
echo Y | sudo apt install node-gyp
echo Y | sudo apt install npm
npm install -g n
n stable
