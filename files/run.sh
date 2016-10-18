#!/bin/sh

# create all mysql neccessary database
if [ ! -f /var/lib/mysql/ibdata1 ]
  then
    mysql_install_db
fi
#if [ ! -f /var/lib/mysql/ibdata1 ] ; then mysql_install_db ; fi
#mysql_install_db

# start mysql
mysqld --skip-grant-tables