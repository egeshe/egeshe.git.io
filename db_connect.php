<?php

$host				= "localhost";
$user				= "shop_user";
$pass				= "admin123";
$database			= "jmihshop";

$link = mysqli_connect($host, $user, $pass, $database) or die("Ошибка " . mysqli_error($link));

mysqli_close($link);

?>