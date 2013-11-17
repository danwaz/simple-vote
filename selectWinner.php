<?php

	require_once( dirname(__FILE__) . '/config/config.php' ) ;

	$queryWinner = "SELECT DISTINCT email, ref FROM test ORDER BY RAND() LIMIT 1";
	$resultWinner = mysqli_query($mysqli, $queryWinner);

	$winner = mysqli_fetch_assoc($resultWinner);

	exit(json_encode($winner));

?>