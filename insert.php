<?php
$connect = mysqli_connect( 'localhost', 'root', '', 'siakadk13master2' );
$id_nk= $_POST["id_nk"]; 
$nis = $_POST["nis"];
$kkm_nk = $_POST["kkm_nk"];
$n1 = $_POST["n1"];
$n2 = $_POST["n2"];
$i=0;
$count=count($id_nk);

// if(isset($id_nk[$i])){
    while($i < $count){
        // if(isset($id_nk[$i])){
        $sql = "INSERT INTO nilai_keterampilan (id_nk, nis, kkm_nk, n1, n2) 
        VALUES('$id_nk[$i]', '$nis[$i]', '$kkm_nk[$i]', '$n1[$i]', '$n2[$i]')";
        
        // }
        $result=(mysqli_query($connect,$sql));
        $i++;
        echo ($sql);
    }
// }


// $sql = "INSERT INTO nilai_keterampilan (id_nk, nis, id_mapel, kkm_nk, n1, n2, n3, n4, n5, n6, n7, n8, nts, nas) 
// VALUES('".$_POST['id_nk']."', '".$_POST['nis']."', '".$_POST['id_mapel']."', '".$_POST['kkm_nk']."',
// '".$_POST['n1']."', '".$_POST['n2']."', '".$_POST['n3']."', '".$_POST['n4']."',
// '".$_POST['n5']."', '".$_POST['n6']."', '".$_POST['n7']."', '".$_POST['n8']."',
// '".$_POST['nts']."', '".$_POST['nas']."',)";

// $sql = "INSERT INTO nilai_keterampilan (id_nk, nis, id_mapel, kkm_nk, n1, n2, n3, n4, n5, n6, n7, n8, nts, nas) 
// VALUES('".$_POST['id_nk']."', '".$_POST['nis']."', '".$_POST['id_mapel']."', '".$_POST['kkm_nk']."',
// '".$_POST['n1']."', '".$_POST['n2']."', '".$_POST['n3']."', '".$_POST['n4']."',
// '".$_POST['n5']."', '".$_POST['n6']."', '".$_POST['n7']."', '".$_POST['n8']."',
// '".$_POST['nts']."', '".$_POST['nas']."')";
// if (isset($_POST["id_nk"]) && !empty($_POST["id_nk"])) {

    // while($count > 0){
    //     // if(isset($id_nk[$i])){
    //     $sql = "INSERT INTO nilai_keterampilan (id_nk, nis, kkm_nk, n1, n2) 
    //     VALUES('$id_nk[$i]', '$nis[$i]', '$kkm_nk[$i]', '$n1[$i]', '$n2[$i]')";
        
    //     // }
    //     $result=(mysqli_query($connect,$sql));
    //     $i++;
    //     echo ($sql);
    // }
// }
// foreach ($_POST["id_nk"] AS $key => $item){               
//     $query1 =$connect->prepare("INSERT INTO nilai_keterampilan
//     (id_nk, nis, kkm_nk) VALUES (:id_nk, :nis, :kkm_nk)");
//     $query1->bindParam(':nis',$_POST["nis"][$key]);
//     $query1->bindParam(':kkm_nk',$_POST["kkm_nk"][$key]);
//     $query1->bindParam(':id_nk',$item);
//     $query1->execute();
//     $msg1 = 'Menu has inserted';     
// }    

// if ( mysqli_query( $connect, $sql ) ) {

//     echo 'Data Inserted';

// }

?>