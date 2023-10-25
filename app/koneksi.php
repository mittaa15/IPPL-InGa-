<?php

$mysqli = new mysqli("localhost", "root", "", "db_simkbs3");

if (!$mysqli) {
    echo "Koneksi bermasalah !";
}
