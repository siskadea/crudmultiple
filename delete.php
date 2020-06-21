<?php  
	$connect = mysqli_connect("localhost", "root", "", "siakadk13master2");
	$sql = "DELETE FROM nilai_keterampilan WHERE id_nk = '".$_POST["id_nk"]."'";  
	if(mysqli_query($connect, $sql))  
	{  
		echo 'Data Deleted';  
	}  
 ?>