<?php
$connect = mysqli_connect( 'localhost', 'root', '', 'siakadk13master2' );
$id_nk = $_POST['id_nk'];

$text = $_POST['text'];

$column_name = $_POST['column_name'];

$sql = 'UPDATE nilai_keterampilan SET '.$column_name."='".$text."' WHERE id_nk='".$id_nk."'";

if ( mysqli_query( $connect, $sql ) )
{

    echo 'Data Updated';

}

?>