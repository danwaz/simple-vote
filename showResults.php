<?php
	
	require_once( dirname(__FILE__) . '/config/config.php' ) ;

	$queryVotes = "SELECT video, COUNT(*) as votes FROM test GROUP BY video";
	$resultVotes = mysqli_query($mysqli, $queryVotes);

	$rows = [];
	while($r = mysqli_fetch_assoc($resultVotes)){
		$rows[]= $r;
	}

	exit(json_encode($rows));
?>