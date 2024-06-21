<?php

include('function.php');

//get id
$id = $_GET['id'];

deleteGuru($id);
// $query = "DELETE FROM tbl_guru WHERE idguru = '$id'";

// if($connection->query($query)) {
//     header("location: index.php");
// } else {
//     echo "DATA GAGAL DIHAPUS!";
// }

?>