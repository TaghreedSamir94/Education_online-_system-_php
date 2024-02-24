<?php

$servername = "localhost";
$user ="root";
$pass = "";

try{
    $dsn=new PDO("mysql:host=$servername;dbname=education_system",$user,$pass);
    $dsn->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
}
catch(PDOException $e){
    echo "Error".$e->getMessage();
}





?>