#!/bin/bash
export Path=$PATH:/usr/local/bin
sudo -1
exec > >(tee /var/log/user-data.log logger -t user-data -s 2>/dev/console) 2>&1
yum install -y httpd
echo "<html><h1>Bienvenido al mundo de terraform<p></p>Arre</h2></html>" > /var/www/html/index.html
systemctl start httpd
systemctl enable httpd
echo "aprendiendo terraform en platzi" > hola.txt