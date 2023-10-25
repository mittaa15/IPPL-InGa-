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
    <header>
    </header>
