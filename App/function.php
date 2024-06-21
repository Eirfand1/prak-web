<?php

include('db/koneksi.php');


function insertGuru($nuptk, $nama_lengkap, $golongan, $gender) {
    $connection = $GLOBALS['connection'];
    
    $query = "INSERT INTO tbl_guru (nuptk, nama, golongan, jenis_kelamin) VALUES (?, ?, ?, ?)";
    
    $stmt = $connection->prepare($query);
    $stmt->bind_param("ssss", $nuptk, $nama_lengkap, $golongan, $gender);
    
    if ($stmt->execute()) {
        header("location: ../index.php");
    } else {
        echo "Data Gagal Disimpan!";
    }
    
    $stmt->close();
}

function updateGuru($nama_lengkap, $golongan, $gender, $id_guru) {
    $connection = $GLOBALS['connection'];
    
    $query = "UPDATE tbl_guru SET nama = ?, golongan = ?, jenis_kelamin = ? WHERE idguru = ?";
    
    $stmt = $connection->prepare($query);
    $stmt->bind_param("sssi", $nama_lengkap, $golongan, $gender, $id_guru);
    
    // Kondisi pengecekan apakah data berhasil diupdate atau tidak
    if ($stmt->execute()) {
        // Redirect ke halaman index.php
        header("location: ../index.php");
    } else {
        // Pesan error gagal update data
        echo "Data Gagal Diupdate!";
    }
    
    $stmt->close();
}

function deleteGuru($id){
   $connection = $GLOBALS['connection'];
   
   $query = "DELETE FROM tbl_guru WHERE idguru = '$id'";
   
   if($connection->query($query)) {
      header("location: ../index.php");
   } else {
      echo "DATA GAGAL DIHAPUS!";
   }
}

