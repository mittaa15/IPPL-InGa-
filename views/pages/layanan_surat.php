<?php
date_default_timezone_set("Asia/Bangkok");
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<title>Form Registration</title>
<link rel="stylesheet" href="styles.css">
<script>
function validateForm() {
    var nama = document.forms["registrationForm"]["nama"].value;
    var nik = document.forms["registrationForm"]["nik"].value;
    var tempat_lahir = document.forms["registrationForm"]["tempat_lahir"].value;
    var tanggal_lahir = document.forms["registrationForm"]["tanggal_lahir"].value;
    var alamat = document.forms["registrationForm"]["alamat"].value;
    var email = document.forms["registrationForm"]["email"].value;
    var pekerjaan = document.forms["registrationForm"]["pekerjaan"].value;
    var agama = document.forms["registrationForm"]["agama"].value;
    var status_perkawinan = document.forms["registrationForm"]["status_perkawinan"].value;
    var jenis_kelamin = document.forms["registrationForm"]["jenis_kelamin"].value;
    
    if (nama == "" || nik == "" || tempat_lahir == "" || tanggal_lahir == "" || alamat == "" || email == "" || pekerjaan == "" || agama == "" || status_perkawinan == "" || jenis_kelamin == "") {
        alert("Semua kolom harus diisi");
        return false;
    }
}
</script>
</head>
<body>
<form class="registrationForm" action="koneksi2.php" method="post" onsubmit="return validateForm()">
    <!-- Tambahkan atribut "required" pada setiap input yang diharuskan -->
    <label for="nama">Nama Lengkap</label>
    <input type="text" name="nama" autocomplete="off" required><br>
	
	<label for="nama">NIK</label>
    <input type="text" name="nik" autocomplete="off" required><br>

    <label for="tempat_lahir">Tempat Lahir</label>
    <input type="text" name="tempat_lahir" autocomplete="off" required><br>

    <label for="tanggal_lahir">Tanggal Lahir</label>
    <input type="date" name="tanggal_lahir" required><br>
	
	<label for="email">Alamat</label>
    <input type="text" name="alamat" autocomplete="off" required><br>
	
	<label for="email">Email</label>
    <input type="email" name="email" autocomplete="off" required><br>
	
	<label for="email">Pekerjaan</label>
    <input type="text" name="pekerjaan" autocomplete="off" required><br><br>

    <label for="agama">Agama</label>
    <select name="agama" required>
		<option value="Tidak Ada"></option>
        <option value="Islam">Islam</option>
        <option value="Kristen">Kristen</option>
        <option value="Buddha">Buddha</option>
        <option value="Hindu">Hindu</option>
        <option value="Konghucu">Konghucu</option>
    </select><br><br>

    <label for="status_perkawinan">Status Perkawinan</label>
    <select name="status_perkawinan" required>
		<option value="Tidak Ada"></option>
        <option value="Kawin">Kawin</option>
        <option value="Belum Kawin">Belum Kawin</option>
    </select><br><br>
	
	<label for="jenis_kelamin">Jenis Kelamin</label>
    <input type="radio" name="jenis_kelamin" value="Pria" required>Pria
    <input type="radio" name="jenis_kelamin" value="Wanita" required>Wanita<br><br>
	
	<button type="submit" name="submit" value="<?php echo date("h:i:sa"); ?>">Submit</button>
</form>
</body>
</html>
