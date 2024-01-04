#!/bin/sh


echo "password_file /mosquitto/config/passwd_file" >> "/mosquitto/config/mosquitto.conf"
echo "-- Config path password_file [ok]"
cp /etc/mosquitto/passwd.txt /mosquitto/config/passwd_file

echo "-- Create passwd_file [ok]"
chmod 0700 /mosquitto/config/passwd_file

echo "-- Set permission passwd_file [ok]"
mosquitto_passwd -U /mosquitto/config/passwd_file

echo "-- hash password [OK]"

