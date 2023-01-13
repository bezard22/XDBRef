#!/bin/bash
# mysql/install.sh

sudo pat update
sudo apt install mysql-server
sudo systemctl start mysql.service