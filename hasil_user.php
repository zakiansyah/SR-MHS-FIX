<?php
require_once('includes/init.php');

if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

if (!isset($_SESSION['user_id'])) {
    header('Location: login.php');
    exit;
}

$user_id = intval($_SESSION['user_id']);
$user_role = get_role();

if ($user_role === 'admin' || $user_role === 'user') {
    $page = "Hasil";
    require_once('template/header.php');

    // Query untuk mengambil data hasil
    $stmt = $koneksi->prepare("
        SELECT hasil.*, alternatif.nama 
        FROM hasil 
        JOIN alternatif ON hasil.id_alternatif = alternatif.id_alternatif 
        WHERE alternatif.id_user = ? 
        ORDER BY hasil.nilai DESC
    ");
    $stmt->bind_param("i", $user_id);
    $stmt->execute();
    $result = $stmt->get_result();

    // Inisialisasi variabel
    $rows = array();
    $total = 0;
    $tepat = 0;
    $tidak = 0;

    // Proses data
    while ($data = $result->fetch_assoc()) {
        $rows[] = $data;
        $total++;
        if ($data['nilai'] > 0.5) {
            $tepat++;
        } else {
            $tidak++;
        }
    }
    $stmt->close();

    // Hitung persentase
    $persen_tepat = $total > 0 ? ($tepat / $total * 100) : 0;
    $persen_tidak = $total > 0 ? ($tidak / $total * 100) : 0;
?>

<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-warning"><i class="fa fa-table"></i> Persentase Kelulusan</h6>
    </div>
    <div class="card-body">
        <p>Total = <?= $total ?> mahasiswa</p>
        <p class="text-success">
            Mahasiswa lulus tepat waktu = <?= $tepat ?> mahasiswa (<?= number_format($persen_tepat, 2) ?>%)
        </p>
        <p class="text-danger">
            Mahasiswa tidak lulus tepat waktu = <?= $tidak ?> mahasiswa (<?= number_format($persen_tidak, 2) ?>%)
        </p>
    </div>
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
                    foreach ($rows as $data) {
                        $no++;
                        $hasil_rekomendasi = $data['nilai'] > 0.5 ? 'Tepat Waktu' : 'Tidak Tepat Waktu';
                        $button_class = $data['nilai'] > 0.5 ? 'btn-success' : 'btn-danger';
                    ?>
                        <tr align="center">
                            <td align="left"><?= htmlspecialchars($data['nama']) ?></td>
                            <td><?= htmlspecialchars(number_format($data['nilai'], 2)) ?></td>
                            <td><?= $no ?></td>
                            <td><button class="btn <?= $button_class ?> btn-sm"><?= $hasil_rekomendasi ?></button></td>
                        </tr>
                    <?php } ?>
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