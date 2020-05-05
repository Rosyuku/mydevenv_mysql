drop database if exists testdb;
create database testdb default character set utf8;

drop user if exists 'app_user'@'web-server';
create user 'app_user'@'web-server' identified WITH mysql_native_password by 'app_p@ssw0rd';

grant all privileges on testdb.* to 'app_user'@'web-server';