<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Squaring the Circle</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<h1>Squaring the Circle</h1>

	<?php
	try{
		$user = 'root';
		$password ='simplonco';

		$db = new PDO('mysql:host=localhost;dbname=webacademie', $user, $password);
	}  
	catch(Exception $e)
	{
		die('Erreur : '.$e->getMessage());
	}
	?>

</body>
</html>