#! /bin/bash
yum install httpd git -y
systemctl start httpd
systemctl enable httpd
cd /var/www/html
git clone https://github.com/sai99516/terraform-3-tier-architecture.git
mv terraform-3-tier-architecture/* .

