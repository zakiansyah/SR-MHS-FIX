<?php
require_once('includes/init.php');

$errors = array();
$sukses = false;

if (isset($_POST['submit'])) {
    // Ambil data dari form
    $username = trim($_POST['username']);
    $password = trim($_POST['password']);
    $password2 = trim($_POST['password2']);
    $nama = trim($_POST['nama']);
    $email = trim($_POST['email']);
    $role = 2; // Default role: User

    // Validasi form
    if (empty($username)) {
        $errors[] = 'Username tidak boleh kosong.';
    }

    if (empty($password)) {
        $errors[] = 'Password tidak boleh kosong.';
    }

    if ($password !== $password2) {
        $errors[] = 'Password dan konfirmasi password tidak sama.';
    }

    if (empty($nama)) {
        $errors[] = 'Nama tidak boleh kosong.';
    }

    if (empty($email)) {
        $errors[] = 'Email tidak boleh kosong.';
    }

    // Cek apakah username sudah digunakan
    if (!empty($username)) {
        $query = mysqli_query($koneksi, "SELECT * FROM user WHERE username = '$username'");
        if (mysqli_num_rows($query) > 0) {
            $errors[] = 'Username sudah digunakan.';
        }
    }

    // Jika tidak ada error, simpan ke database
    if (empty($errors)) {
        $hashed_password = sha1($password); // Enkripsi password
        $query = "INSERT INTO user (username, password, nama, email, role) 
                  VALUES ('$username', '$hashed_password', '$nama', '$email', '$role')";

        if (mysqli_query($koneksi, $query)) {
            $sukses = true;
        } else {
            $errors[] = 'Gagal menyimpan data: ' . mysqli_error($koneksi);
        }
    }
}
?>

<?php
$page = "Register";
require_once('template/header_register.php'); // Header HTML
?>

<body class="bg-gradient-primary">
<nav class="navbar navbar-expand-lg navbar-dark bg-white shadow-lg pb-3 pt-3 font-weight-bold">
            <div class="container">
                <a class="navbar-brand text-primary" style="font-weight: 900;" href="login.php"> <i class="fa fa-database mr-2 rotate-n-15"></i> Sistem Rekomendasi Mahasiswa Berpotensi Lulus Tepat Waktu Metode SMART</a>
            </div>
        </nav>


<div class="d-flex justify-content-center align-items-center vh-100">
    <div class="col-xl-5 col-lg-5 col-md-5">
        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Register Account</h1>
                            </div>
                            
                            <!-- Alert Sukses -->
                            <?php if ($sukses): ?>
                                <div class="alert alert-success text-center">
                                    <strong>Berhasil!</strong> Akun Anda telah terdaftar. Silakan <a href="login.php" class="alert-link">login</a>.
                                </div>
                            <?php endif; ?>
                            
                            <!-- Alert Gagal -->
                            <?php if (!empty($errors)): ?>
                                <?php foreach ($errors as $error): ?>
                                    <div class="alert alert-danger text-center"> <?php echo $error; ?> </div>
                                <?php endforeach; ?>
                            <?php endif; ?>

                            <form class="user" action="register.php" method="post">
                                <div class="form-group">
                                    <input type="text" name="username" class="form-control form-control-user" placeholder="Username" required />
                                </div>
                                <div class="form-group">
                                    <input type="password" name="password" class="form-control form-control-user" placeholder="Password" required />
                                </div>
                                <div class="form-group">
                                    <input type="password" name="password2" class="form-control form-control-user" placeholder="Konfirmasi Password" required />
                                </div>
                                <div class="form-group">
                                    <input type="text" name="nama" class="form-control form-control-user" placeholder="Nama Lengkap" required />
                                </div>
                                <div class="form-group">
                                    <input type="email" name="email" class="form-control form-control-user" placeholder="Email" required />
                                </div>
                                <button type="submit" name="submit" class="btn btn-primary btn-user btn-block">
                                    <i class="fas fa-fw fa-user-plus mr-1"></i> Daftar
                                </button>
                            </form>
                            <a href="login.php" class="btn btn-secondary btn-user btn-block btn-oval mt-3">
                                <i class="fas fa-fw fa-sign-in-alt mr-1"></i> Kembali ke Login
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

<?php
require_once('template/footer.php'); // Footer HTML
?>
