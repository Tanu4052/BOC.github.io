<?php

	$servername = 'localhost';
	$username = 'root';
	$password = 'root';
	$dbname =  'BOC bank';

	 $conn = mysqli_connect($servername,$password, $username, $dbname);

	if(!$conn){
		die("Could not connect to the database due to the following error --> ".mysqli_connect_error());
	}

?>