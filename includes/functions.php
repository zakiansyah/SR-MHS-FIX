<?php
// Pastikan session dimulai di awal file
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

function redirect_to($url = '', $message = '') {
    if (!empty($message)) {
        echo $message;
    }
    header('Location: ' . $url);
    exit();
}


function cek_login($role = array()) {
    if (session_status() === PHP_SESSION_NONE) {
        session_start();
    }
    // Debug: Print session data
    error_log('Session Data: ' . print_r($_SESSION, true));

    if (isset($_SESSION['user_id']) && isset($_SESSION['role']) && in_array($_SESSION['role'], $role)) {
        return true;
    } else {
        redirect_to("login.php");
    }
}



// function cek_login($role = array()) {
//     // Pastikan session user_id dan role diatur
//     if (isset($_SESSION['user_id']) && isset($_SESSION['role']) && in_array($_SESSION['role'], $role)) {
//         // User telah login dengan role yang valid
//         return true;
//     } else {
//         // Arahkan ke halaman login jika belum login atau role tidak sesuai
//         redirect_to("login.php");
//     }
// }

function get_role() {
    if (isset($_SESSION['user_id']) && isset($_SESSION['role'])) {
        if ($_SESSION['role'] == '1') {
            return 'admin';
        } else {
            return 'user';
        }
    } else {
        return false;
    }
}
