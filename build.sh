#! /bin/bash

docker stop mosquitto && docker rm mosquitto

sudo rm mosquitto/mosquitto.conf
cp mosquitto.conf mosquitto/mosquitto.conf

docker-compose up -d --build

docker exec mosquitto cp /passwd.sh /set_passwd.sh

docker exec mosquitto chmod +x set_passwd.sh

docker exec mosquitto ./set_passwd.sh

docker restart mosquitto

