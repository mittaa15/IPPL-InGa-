<?php
$koneksi = mysqli_connect("localhost", "root", "", "db_simkbs3");

if (!$koneksi) {
    die("Koneksi Gagal: " . mysqli_connect_error());
}

$recaptcha_secret = "6Ld4edsoAAAAAFEgP66J5N3Z3xC70d8JTJ3njPr9"; 
$recaptcha_response = $_POST['g-recaptcha-response'];

$url = 'https://www.google.com/recaptcha/api/siteverify';
$data = array(
    'secret' => $recaptcha_secret,
    'response' => $recaptcha_response
);

$options = array(
    'http' => array (
        'method' => 'POST',
        'content' => http_build_query($data)
    )
);

$context  = stream_context_create($options);
$verify = file_get_contents($url, false, $context);
$captcha_success = json_decode($verify);

if ($captcha_success->success == false) {
    // Jika reCAPTCHA tidak terverifikasi, munculkan pesan atau lakukan tindakan lain.
    die("reCAPTCHA tidak terverifikasi. Silakan kembali dan coba lagi.");
} else if ($captcha_success->success == true) {
    // Jika reCAPTCHA terverifikasi, lanjutkan dengan pemrosesan formulir.

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

    // Modifikasi query untuk mengizinkan NIK yang sama
    $query = "INSERT INTO tabel_form VALUES('$jenis_surat','$nama','$nik','$tempat_lahir','$tanggal_lahir',
    '$alamat','$email','$pekerjaan','$agama','$status_perkawinan','$jenis_kelamin','$submit')
    ON DUPLICATE KEY UPDATE nama='$nama', tempat_lahir='$tempat_lahir', tanggal_lahir='$tanggal_lahir',
    alamat='$alamat', email='$email', pekerjaan='$pekerjaan', agama='$agama', 
    status_perkawinan='$status_perkawinan', jenis_kelamin='$jenis_kelamin', submit='$submit'";

    mysqli_query($koneksi, $query);

    mysqli_close($koneksi);

    // Setelah data berhasil disimpan, arahkan pengguna ke halaman pemberitahuan
    header("Location: notifikasi.php");
    exit(); // Pastikan untuk keluar dari skrip setelah melakukan pengalihan
}
?>
