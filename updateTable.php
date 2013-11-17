<?php 
	
	require_once( dirname(__FILE__) . '/config/config.php' ) ;

	$email = $_POST['email'];
	$video = $_POST['video'];
	$ref = $_POST['ref'];

	//queries
	$queryCheck = "SELECT * FROM test WHERE email = '$email' AND video = '$video' AND ref = '$ref'";
	$queryAddRow = "INSERT INTO test (email, video, ref) VALUES ( '$email', '$video', '$ref')";

	if(isset($email) && isset($video) && isset($ref)){
		$resultCheck = mysqli_query($mysqli, $queryCheck);
		if($resultCheck->num_rows == 0){
			$resultAdd = mysqli_query($mysqli, $queryAddRow);
			exit('vote counted!');
		} else {
			exit('already voted!');
		}
	}

	exit('something went wrong');

?>