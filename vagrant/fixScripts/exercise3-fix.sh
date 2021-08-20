#!/bin/bash
#add fix to exercise3 here
#apache2 http server has configuration file which contains deny all http request from all, this command will replace the : "deny from all" to "allow from all".
#after changing this line we should to restart apache2 service in order the configuration will be updated.
sudo sed -i 's/deny from all/allow from all/'   /etc/apache2/sites-available/default
sudo service apache2 restart
