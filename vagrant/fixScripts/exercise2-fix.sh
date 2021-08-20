#!/bin/bash
#add fix to exercise2 here
#hosts file contains www.ascii-art.de which forward it to local host.
#the following command will remove this line from hosts file:
sudo sed -i 's/www.ascii-art.de/trash/' /etc/hosts

