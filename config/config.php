<?php
	//Database configuration
	$config['db_host'] = 'localhost';
	$config['db_user'] = 'root';
	$config['db_password'] = '';
	$config['db_database'] = "mysql_test";

	//connect to Database
	$mysqli = mysqli_connect($config['db_host'], $config['db_user'], $config['db_password'], $config['db_database']);

	if (mysqli_connect_errno($mysqli)) {
		error_log("Failed to connect to MySQL: " . mysqli_connect_error());
	}
?>