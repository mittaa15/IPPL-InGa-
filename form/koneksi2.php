<?php
$koneksi = mysqli_connect("localhost", "root", "", "db_simkbs3");

if (!$koneksi) {
    die("Koneksi Gagal: " . mysqli_connect_error());
}

$jenis_surat = $_POST['jenis_surat'];
$nama = $_POST['nama'];
$nik = $_POST['nik']; // Sesuaikan dengan nama input di formulir
$tempat_lahir = $_POST['tempat_lahir']; // Sesuaikan dengan nama input di formulir
$tanggal_lahir = $_POST['tanggal_lahir']; // Sesuaikan dengan nama input di formulir
$alamat = $_POST['alamat'];
$email = $_POST['email'];
$pekerjaan = $_POST['pekerjaan'];
$agama = $_POST['agama'];
$status_perkawinan = $_POST['status_perkawinan']; // Sesuaikan dengan nama input di formulir
$jenis_kelamin = $_POST['jenis_kelamin']; // Sesuaikan dengan nama input di formulir
$submit = $_POST['submit'];

$query = "INSERT INTO tabel_form VALUES('$jenis_surat','$nama','$nik','$tempat_lahir','$tanggal_lahir',
'$alamat','$email','$pekerjaan','$agama','$status_perkawinan','$jenis_kelamin','$submit')";

mysqli_query($koneksi, $query);

mysqli_close($koneksi);

// Setelah data berhasil disimpan, arahkan pengguna ke halaman pemberitahuan
header("Location: notifikasi.php");
exit(); // Pastikan untuk keluar dari skrip setelah melakukan pengalihan
?>
