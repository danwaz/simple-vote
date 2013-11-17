<?php

	require_once( dirname(__FILE__) . '/config/config.php' ) ;

	$queryVotes = "SELECT video, COUNT(*) as votes FROM test GROUP BY video";
	$resultVotes = mysqli_query($mysqli, $queryVotes);

	$rows = [];
	while($r = mysqli_fetch_assoc($resultVotes)){
		$rows[]= $r;
	}

	$fp = fopen('results.csv', 'w');

	$count = 0;
	foreach ($rows as $row) {
		if($count == 0){
			fputcsv($fp, array_keys($row));
		}
		fputcsv($fp, $row);
		$count++;
	}

	fclose($fp);

?>