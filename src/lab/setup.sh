#copy the required files
cp /var/www/scripts/ldapfiles/* /usr/sbin/
echo $?>a.txt
cp -r /var/www/scripts/usrldapscripts /usr/share/ldapscripts
echo $?>>a.txt
cp -r /var/www/scripts/etcldapscripts /etc/ldapscripts

echo $?>>a.txt

#change permissions
chmod -R 777 /usr/share/ldapscripts

echo $?>>a.txt
chmod -R 777 /etc/ldapscripts

echo $?>>a.txt
chmod -R 777 /var/log	

echo $?>>a.txt
chmod 777 /usr/sbin/ldapadduser

echo $?>>a.txt
#install dependencies
apt-get install -y libssh2-php
echo $?>>a.txt
apt-get install -y php5-ldap
echo $?>>a.txt
/etc/init.d/apache2 restart

echo $?>>a.txt



