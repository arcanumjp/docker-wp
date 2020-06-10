
#set -e

#find /var/lib/mysql -type f -exec touch {} \;

#if [ ! -f timezone_applied ];then
#  mysqld &
#  sleep 3
#  mysql -uroot -D mysql < timezone.sql
#  mysqladmin shutdown -uroot
#  touch timezone_applied
#fi

#mysqld

#sleep 3
#service mysql start
#sleep 3
#mysql < initdb.sql



echo "daemon off;" >> /etc/nginx/nginx.conf
service nginx start



#while true
#do
#    sleep 10
#done

