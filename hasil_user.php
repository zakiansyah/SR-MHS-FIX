<?php
require_once('includes/init.php');

// Mulai sesi jika belum dimulai
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

// Periksa apakah user sudah login
if (!isset($_SESSION['user_id'])) {
    header('Location: login.php');
    exit;
}

$user_id = intval($_SESSION['user_id']); // Mengambil id_user dari sesi dan memastikan tipe data integer
$user_role = get_role(); // Ambil role pengguna (pastikan fungsi get_role() sudah diimplementasikan dengan benar)

// Hanya pengguna dengan role 'admin' atau 'user' yang dapat mengakses halaman ini
if ($user_role === 'admin' || $user_role === 'user') {
    $page = "Hasil";
    require_once('template/header.php');
    ?>

    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800"><i class="fas fa-fw fa-chart-area"></i> Data Hasil Akhir</h1>
    </div>

    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-warning"><i class="fa fa-table"></i> Hasil Akhir Perankingan</h6>
        </div>

        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" width="100%" cellspacing="0">
                    <thead class="bg-orange text-white">
                        <tr align="center">
                            <th>Nama Alternatif</th>
                            <th>Nilai</th>
                            <th width="15%">Rank</th>
                            <th width="15%">Hasil Rekomendasi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $no = 0;
                        // Query untuk mengambil data hasil hanya untuk user yang sedang login
                        $stmt = $koneksi->prepare("
                            SELECT hasil.*, alternatif.nama 
                            FROM hasil 
                            JOIN alternatif ON hasil.id_alternatif = alternatif.id_alternatif 
                            WHERE alternatif.id_user = ? 
                            ORDER BY hasil.nilai DESC
                        ");
                        $stmt->bind_param("i", $user_id); // Menggunakan parameter binding untuk mencegah SQL Injection
                        $stmt->execute();
                        $result = $stmt->get_result();

                        while ($data = $result->fetch_assoc()) {
                            $no++;
                            $hasil_rekomendasi = $data['nilai'] > 0.5 ? 'Tepat Waktu' : 'Tidak Tepat Waktu';
                            $button_class = $data['nilai'] > 0.5 ? 'btn-success' : 'btn-danger';
                        ?>
                            <tr align="center">
                                <td align="left"><?= htmlspecialchars($data['nama']) ?></td>
                                <td><?= htmlspecialchars(number_format($data['nilai'], 2)) ?></td>
                                <td><?= $no; ?></td>
                                <td><button class="btn <?= $button_class ?> btn-sm"> <?= $hasil_rekomendasi ?> </button></td>
                            </tr>
                        <?php
                        }
                        $stmt->close(); // Tutup statement
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <?php
    require_once('template/footer.php');
} else {
    header('Location: login.php');
    exit;
}
?>