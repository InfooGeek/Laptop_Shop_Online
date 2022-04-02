<?php 
    //Start Session
    session_start();


    //Create Constants to Store Non Repeating Values
    define('SITEURL', 'http://yograjlaptop.byethost14.com/');
    define('LOCALHOST', 'sql212.byethost14.com');
    define('DB_USERNAME', 'b14_31428751');
    define('DB_PASSWORD', 'Wczf@328');
    define('DB_NAME', 'b14_31428751_laptop_shop');
    
    $conn = mysqli_connect(LOCALHOST, DB_USERNAME, DB_PASSWORD) or die(mysqli_error()); //Database Connection
    $db_select = mysqli_select_db($conn, DB_NAME) or die(mysqli_error()); //SElecting Database


?>
