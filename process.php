<?php
	$conn = new mysqli("localhost","id10307754_crudhotdog1","crudhotdog","id10307754_crudhotdog");
	if ($conn->connect_error){
		die("Connection Failed" .$conn->connect_error);
	}

	$result = array('error'=>false);
	$action = '';

	if(isset($_GET['action'])){
		$action = $_GET['action'];
	}

	if($action == 'read'){
		$sql = $conn->query("SELECT * FROM hotdogs");
		$hotdogs = array();
		while($row = $sql->fetch_assoc()){
			array_push($hotdogs, $row);
		}
		$result['hotdogs'] = $hotdogs;
	}

	if($action == 'create'){
		$name = $_POST['name'];
		$bun = $_POST['bun'];
		$sausage = $_POST['sausage'];
		$vegetables = $_POST['vegetables'];
		$sauce = $_POST['sauce'];
		$sql = $conn->query("INSERT INTO hotdogs (name,bun,sausage,vegetables,sauce) VALUES('$name','$bun','$sausage','$vegetables','$sauce')");

	if($sql){
		$result['massage'] = "HotDog Added!";
	}
	else{
		$result['error'] = true;
		$result['massage'] = "Fail";
	}
}

	if($action == 'update'){
		$id = $_POST['id'];
		$name = $_POST['name'];
		$bun = $_POST['bun'];
		$sausage = $_POST['sausage'];
		$vegetables = $_POST['vegetables'];
		$sauce = $_POST['sauce'];
		$sql = $conn->query("UPDATE hotdogs SET name='$name',bun='$bun',sausage='$sausage',vegetables='$vegetables',sauce='$sauce' WHERE id='$id'");

	if($sql){
		$result['massage'] = "HotDog Updated!";
	}
	else{
		$result['error'] = true;
		$result['massage'] = "Fail";
	}
}

if($action == 'delete'){
		$id = $_POST['id'];
		
		$sql = $conn->query("DELETE FROM hotdogs WHERE id='$id'");

	if($sql){
		$result['massage'] = "HotDog Deleted!";
	}
	else{
		$result['error'] = true;
		$result['massage'] = "Fail";
	}
}

	$conn->close();
	echo json_encode($result);
?> 