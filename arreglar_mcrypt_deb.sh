sudo apt-get install mcrypt php5-mcrypt
sudo ln -s /etc/php5/conf.d/mcrypt.ini /etc/php5/mods-available
sudo php5enmod mcrypt
#sudo service php5-fpm restart
#sudo service nginx restart
sudo service apache2 restart
#si falla
#sudo updatedb 
#locate mcrypt.ini
#locate mcrypt.so
#Editar mcrypt.ini
#extension=/usr/lib/php5/20121212/mcrypt.so
#luego
#sudo php5enmod mcryp
#si no funciona remapear alias
#ls -al /etc/php5/cli/conf.d/20-mcrypt.ini
#ls -al /etc/php5/apache2/conf.d/20-mcrypt.ini
#sudo ln -s /etc/php5/mods-available/mcrypt.ini /etc/php5/cli/conf.d/20-mcrypt.ini
#sudo ln -s /etc/php5/mods-available/mcrypt.ini /etc/php5/apache2/conf.d/20-mcrypt.ini
