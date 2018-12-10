#!/bin/bash
VH=$(echo $1 | cut -d'.' -f1)
domNm=$(echo $1 | cut -d'.' -f2-)

echo $VH
echo $domNm



if [ "$domNm" == "joran-trompet.sb.uclllabs.be" ]; then

        echo "goed"
        mkdir -p /var/www/html/$VH


        touch /var/www/html/$VH/index.html
        		echo "
        			<html>
					  <head>
					    <title>$VH</title>
					  </head>
					  <body>
					    <p>$VH</p>
					  </body>
				</html>
				" >> /var/www/html/$VH/index.html



	touch /etc/apache2/sites-available/$VH.conf
        echo "
				<VirtualHost *:80>

				        ServerAdmin root@joran-trompet.sb.uclllabs.be
				        ServerName $VH.joran-trompet.sb.uclllabs.be
				        DocumentRoot /var/www/html/$VH
				        ErrorLog ${APACHE_LOG_DIR}/error.log
				        CustomLog ${APACHE_LOG_DIR}/access.log combined

				</VirtualHost>" >> /etc/apache2/sites-available/$VH.conf


	/etc/scripts/dns_add_record -t A $VH 193.191.177.158 $domNm
	a2ensite $VH.conf
	systemctl restart bind9
	systemctl reload apache2


	echo "Stap 1 OK"

else
	echo "Domain name is niet correct!"
	exit 1

fi
