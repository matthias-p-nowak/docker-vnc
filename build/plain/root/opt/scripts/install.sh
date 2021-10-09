#!/bin/bash
set -eEx

useradd me
usermod -a -G wheel me
chpasswd <<EOD
me:a4
EOD
mkdir /home/me/.vnc
chown -R me:me /home/me

chmod a+x /opt/scripts/*.sh | echo "no shell scripts"
chmod a+x /opt/scripts/*.py | echo "no python scripts"

ln -sfTv /usr/share/zoneinfo/Europe/Oslo /etc/localtime
