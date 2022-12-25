Laptop Online shop using php and mysql

# ⚙️ Technology Used
1. HTML5
2. CSS3
3. Core/Procedural PHP programming language
4. MySQL Relational Database


# 🧰 Features
1. Visitors/Users can browse all the Categories and Laptop Items. 
2. They also can order easily from the website.
3. Admin can Manage Admin, Caegories and Laptop/device Items
4. Admin can also Manage and Track device Order and Delivery


## 📖  How to Download the Project and Run on your PC?

### Pre-Requisites:

1. Download and Install XAMPP

[Click Here to Download](https://www.apachefriends.org/index.html)

2. Install any Text Editor (Sublime Text or Visual Studio Code or Atom or Brackets)

### Installation

1. Download as as Zip or Clone this project
2. Move this project to Root Directory
```
Local Disc C: -> xampp -> htdocs -> 'this project'
 
```
*Local Disk C is the location where xampp was installed*

3. Open XAMPP Control Panel and Start 'Apache' and 'MySQL'

4. Import Database

a. Open 'phpmyadmin' in your browser
b. Create a Database
c. Import the SQL file provided with this project

5. Make Changes to settings

Go to 'config' folder and Open 'constants.php' file. Then make changes on following constants
```php
<?php 
//Start Session
session_start();

//Create Constants to Store Non Repeating Values
define('SITEURL', 'http://localhost/website/'); //Update the home URL of the project if you have changed port number or it's live on server
define('LOCALHOST', 'localhost');
define('DB_USERNAME', 'infoogeek');
define('DB_PASSWORD', '');
define('DB_NAME', 'laptop_shop');
    
$conn = mysqli_connect(LOCALHOST, DB_USERNAME, DB_PASSWORD) or die(mysqli_error()); //Database Connection
$db_select = mysqli_select_db($conn, DB_NAME) or die(mysqli_error()); //SElecting Database 

?>
```

6. Now, Open the project in your browser. It should run perfectly.




In Linux/Arch

#### in linux/Arch
1. Download apache and mariadb, php and php-apache
pacman -Syu
pacman -S php php-apache
pacman -S mariadb apache

set up the LAMP(Linux Apache Mysql/Mariadb Php) : https://forum.manjaro.org/t/howto-install-apache-mariadb-mysql-php-lamp/13000?page=2


root directory for apache is 
/srv/http

start mariadb or mysql using : sudo systemctl start mariadb
start apache server : sudo systemctl start httpd

go to localhost and dir name 
if in /srv/http the folder is website then got to localhost/website to get to the home page 
and localhost/website/admin to get to the admin login page

import the sql file for database 
1) make a database in maraidb/mysql

	mysql -u usernamae -p
	create database laptop_shop;
	quit
	then, 
	import the database file from this peoject to the database on your machine
	mysql -u username -p  laptop_shop < sqlfie.sql
				(note: to export from local db to a file : mysqldump -u username -p local_db > dbfile.sql)
	
	then you're good to go
	after editing in config/constants.php


Made by Yog Raj Dhakal(Loma) - MU
