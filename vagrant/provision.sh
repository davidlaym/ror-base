
sudo -E apt-get -q -y update
sudo -E apt-get -q -y install apache2
sudo -E apt-get -q -y autoremove

sudo service apache2 stop
a2dissite 000-default

sudo rm /etc/apache2/sites-available/*.conf
sudo cp -Rf /vagrant/config/apache2/apache2.conf /etc/apache2
sudo cp -Rf /vagrant/config/apache2/ports.conf /etc/apache2
sudo cp -Rf /vagrant/config/apache2/sites-available/*.conf /etc/apache2/sites-available

a2ensite rails-dev

sudo service apache2 start
