<?php
$connect = mysqli_connect( 'localhost', 'root', '', 'siakadk13master2' );

$output = '';

$output .= '  
      <div class="table-responsive">  
           <table class="table table-bordered">  
                <tr>  
                <th>ID</th>
                <th>NIS</th>
                <th>id mapel</th>
                <th>KKM</th>
                <th>N-1</th>
                <th>N-2</th>
                <th>N-3</th>
                <th>N-4</th>
                <th>N-5</th>
                <th>N-6</th>
                <th>N-7</th>
                <th>N-8</th>
                <th>HP TS</th>
                <th>HP AS</th>
                <th>N-A</th>
                <th>Predikat</th>  
                </tr>';

//NAMPILKAN
$sql  = "SELECT *
 FROM anggota_kelas m 
 JOIN siswa s ON s.nis = m.nis
 JOIN nilai_keterampilan nk ON s.nis=nk.nis
 JOIN kelas k ON k.id_kelas = m.id_kelas
 WHERE k.nama_kelas = '7I'";

$result = mysqli_query( $connect, $sql );
$rows = mysqli_num_rows( $result );
if ( $rows > 0 ) {

    //   if ( $rows > 10 )
    // {
    // 	  $delete_records = $rows - 10;
    // 	  $delete_sql = "DELETE FROM nilai_keterampilan LIMIT $delete_records";
    // 	  mysqli_query( $connect, $delete_sql );
    //   }
    $q = mysqli_query( $connect, 'SELECT max(id_nk) as kodeTerbesar FROM nilai_keterampilan' );
    $data = mysqli_fetch_array( $q );
    $kodeP = $data['kodeTerbesar'];
    $urutan = ( int ) substr( $kodeP, 2, 3 );
    //     while( $row = mysqli_fetch_assoc( $result ) ) {       

    while( $row = mysqli_fetch_array( $result ) ) {

        $urutan++;
        $huruf = 'NK';
        $kodeP = $huruf . sprintf( '%03s', $urutan );
        $output .= '  
                <tr>  
                     <td>'.$row['id_nk'].'</td>  
                     <td class="nis" data-id1="'.$row['id_nk'].'" contenteditable>'.$row['nis'].'</td>  
                     <td class="id_mapel" data-id2="'.$row['id_nk'].'" contenteditable>'.$row['id_mapel'].'</td>  
                     <td class="kkm_nk" data-id3="'.$row['id_nk'].'" contenteditable>'.$row['kkm_nk'].'</td> 
                     <td class="n1" data-id4="'.$row['id_nk'].'" contenteditable>'.$row['n1'].'</td>  
                     <td class="n2" data-id5="'.$row['id_nk'].'" contenteditable>'.$row['n2'].'</td>  
                     <td class="n3" data-id6="'.$row['id_nk'].'" contenteditable>'.$row['n3'].'</td>  
                     <td class="n4" data-id7="'.$row['id_nk'].'" contenteditable>'.$row['n4'].'</td>  
                     <td class="n5" data-id8="'.$row['id_nk'].'" contenteditable>'.$row['n5'].'</td>  
                     <td class="n6" data-id9="'.$row['id_nk'].'" contenteditable>'.$row['n6'].'</td>  
                     <td class="n7" data-id10="'.$row['id_nk'].'" contenteditable>'.$row['n7'].'</td>  
                     <td class="n8" data-id11="'.$row['id_nk'].'" contenteditable>'.$row['n8'].'</td>  
                     <td class="nts" data-id12="'.$row['id_nk'].'" contenteditable>'.$row['nts'].'</td>  
                     <td class="nas" data-id13="'.$row['id_nk'].'" contenteditable>'.$row['nas'].'</td> 
                     <td class="nilai_nk" data-id14="'.$row['id_nk'].'" contenteditable>'.$row['nilai_nk'].'</td> 
                     <td class="predikat_nk" data-id15="'.$row['id_nk'].'" contenteditable>'.$row['predikat_nk'].'</td> 
                </tr>  
           ';

    }

    //  $output .= ' 
     // tombol delete<td><button type="button" name="delete_btn" data-id5="'.$kodeP.'" class="btn btn-xs btn-danger btn_delete">x</button></td>  
 
     //       <tr>  
     //            <td>'.$row['id_nk'].'</td> 
     //            <td id="nis" contenteditable>'.$row['nis'].'</td>  
     //            <td id="id_mapel" contenteditabl>'.$row['id_mapel'].'</td> 
     //            <td id="kkm_nk" contenteditable>'.$row['kkm_nk'].'</td>  
     //            <td id="n1" contenteditabl>'.$row['n1'].'</td>  
     //            <td><button type="button" name="btn_add" id="btn_add" class="btn btn-xs btn-success">add</button></td>  
     //       </tr>  
     //  ';

} else {

    $query = "SELECT *
     FROM anggota_kelas m 
     JOIN siswa s ON s.nis = m.nis
     -- JOIN nilai_keterampilan nk ON s.nis=nk.nis
     -- JOIN kelas k ON k.id_kelas = m.id_kelas
     WHERE m.id_kelas = '7I'";
    $r = mysqli_query( $connect, $query );
    if ( $row = mysqli_num_rows( $r )>0 ) {
        $q = mysqli_query( $connect, 'SELECT max(id_nk) as kodeTerbesar FROM nilai_keterampilan' );
        $data = mysqli_fetch_array( $q );
        $kodeP = $data['kodeTerbesar'];
        $urutan = ( int ) substr( $kodeP, 2, 3 );

        while( $row = mysqli_fetch_array( $r ) ) {
            $urutan++;
            $huruf = 'NK';
            $kodeP = $huruf . sprintf( '%03s', $urutan );
          //   $output .= '
		// 		<tr>  
		// 			<td name="id_nk[]" id="id_nk">'.$kodeP.'</td>  
          //                <td name="nis[]" id="nis" contenteditable>'.$row['nis'].'</td>  
		// 			<td name="id_mapel[]" id="id_mapel" contenteditable></td> 
		// 			<td name="kkm_nk[]" id="kkm_nk" contenteditable></td> 
		// 			<td name="n1[]" id="n1" contenteditable></td>  
		// 			<td name="n2[]" id="n2" contenteditable></td>  
		// 			<td name="n3[]" id="n3" contenteditable></td>  
		// 			<td name="n4[]" id="n4" contenteditable></td>  
		// 			<td name="n5[]" id="n5" contenteditable></td>  
		// 			<td name="n6[]" id="n6" contenteditable></td>  
          //                <td name="n7[]" id="n7" contenteditable></td>
		// 			<td name="n8[]" id="n8" contenteditable></td>  
		// 			<td name="nts[]" id="nts" contenteditable></td>  
		// 			<td name="nas[]" id="nas" contenteditable></td>  
		// 			<td name="id_nk[]" id="nilai_nk" contenteditable></td>  
		// 			<td name="predikat_nk" id="predikat_nk" contenteditable></td>    
          // 	   </tr>';
          $output .= '
				<tr>  
					<td><input type="text" name="id_nk[]" id="id_nk" value="'.$kodeP.'"></td>  
                         <td><input type="text" name="nis[]" id="nis" value="'.$row['nis'].'"></td>  
					<td><input type="text" name="id_mapel[]" id="id_mapel" contenteditable></td> 
					<td><input type="text" name="kkm_nk[]" id="kkm_nk" contenteditable></td> 
					<td><input type="text" name="n1[]" id="n1" contenteditable></td>  
					<td><input type="text" name="n2[]" id="n2" contenteditable></td>  
					<td><input type="text" name="n3[]" id="n3" contenteditable></td>  
					<td><input type="text" name="n4[]" id="n4" contenteditable></td>  
					<td><input type="text" name="n5[]" id="n5" contenteditable></td>  
					<td><input type="text" name="n6[]" id="n6" contenteditable></td>  
                         <td><input type="text" name="n7[]" id="n7" contenteditable></td>
					<td><input type="text" name="n8[]" id="n8" contenteditable></td>  
					<td><input type="text" name="nts[]" id="nts" contenteditable></td>  
					<td><input type="text" name="nas[]" id="nas" contenteditable></td>  
					<td><input type="text" name="id_nk[]" id="nilai_nk" contenteditable></td>  
					<td><input type="text" name="predikat_nk[]" id="predikat_nk" contenteditable></td>    
			   </tr>';

        }
        $output .= '
               <tr>
                    
                    <td><button type="button" name="btn_add" id="btn_add" class="btn btn-xs btn-success">+</button></td>  
                    <td colspan="15"></td>
                    </tr>';
    }

}

$output .= '</table>  
      </div>';

echo $output;

?>