#!/bin/bash
wget https://raw.githubusercontent.com/node-red/raspbian-deb-package/master/resources/update-nodejs-and-nodered
chmod +x update-nodejs-and-nodered
sudo cp update-nodejs-and-nodered /usr/bin
