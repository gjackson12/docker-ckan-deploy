#/bin/bash

redis-server --daemonize yes

sudo service apache2 start
sudo service nginx start

while /bin/true
do
sleep 3600
done

