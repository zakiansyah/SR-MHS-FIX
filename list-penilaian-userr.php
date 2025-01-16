<?php require_once('includes/init.php'); ?>

<?php
$page = "Penilaian";
require_once('template/header.php');

$id_user = $_SESSION['user_id']; // Ambil ID user yang sedang login

// Ambil data pengguna
$user_query = mysqli_query($koneksi, "SELECT * FROM user WHERE id_user = '$id_user'");
$user = mysqli_fetch_assoc($user_query);

// Ambil data alternatif berdasarkan nama pengguna
$alternatif_query = mysqli_query($koneksi, "SELECT * FROM alternatif_user WHERE nama = '{$user['nama']}'");
$alternatif = mysqli_fetch_assoc($alternatif_query);

if (isset($_POST['tambah']) || isset($_POST['edit'])) {
    $id_alternatif_user = isset($alternatif['id_alternatif_user']) ? $alternatif['id_alternatif_user'] : null;
    $id_kriteria = $_POST['id_kriteria'];
    $nilai = $_POST['nilai'];

    if (!$id_kriteria) {
        $errors[] = 'ID kriteria tidak boleh kosong';
    }
    if (!$nilai) {
        $errors[] = 'Nilai kriteria tidak boleh kosong';
    }

    if (empty($errors)) {
        if (!$id_alternatif_user) {
            // Buat data alternatif baru jika belum ada
            $nama = $user['nama'];
            $id_user = $user['id_user']; // Ambil id_user dari data user yang sedang login
            mysqli_query($koneksi, "INSERT INTO alternatif_user (id_alternatif_user, id_user, nama) VALUES ('', '$id_user', '$nama')");
            $id_alternatif_user = mysqli_insert_id($koneksi);
        }

        // Hapus penilaian lama jika ada
        mysqli_query($koneksi, "DELETE FROM penilaian_user WHERE id_alternatif_user = '$id_alternatif_user'");

        $i = 0;
        foreach ($nilai as $key) {
            $simpan = mysqli_query($koneksi, "INSERT INTO penilaian_user (id_penilaian_user, id_alternatif_user, id_kriteria, nilai) VALUES ('', '$id_alternatif_user', '{$id_kriteria[$i]}', '$key')");
            $i++;
        }
        $sts[] = $simpan ? 'Data berhasil disimpan' : 'Data gagal disimpan';
    }
}
?>

<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800"><i class="fas fa-fw fa-edit"></i> Penilaian Diri</h1>
</div>

<?php if (!empty($sts)) : ?>
    <div class="alert alert-info">
        <?php foreach ($sts as $st) : ?>
            <?php echo $st; ?>
        <?php endforeach; ?>
    </div>
<?php endif; ?>

<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-warning"><i class="fa fa-table"></i> Penilaian Anda</h6>
    </div>
    <div class="card-body">
        <?php if ($alternatif || !$alternatif) : ?>
            <div class="table-responsive">
                <table class="table table-bordered" width="100%" cellspacing="0">
                    <thead class="bg-orange text-white">
                        <tr align="center">
                            <th>Nama</th>
                            <th width="15%">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr align="center">
                            <td align="left"><?= $alternatif ? $alternatif['nama'] : $user['nama'] ?></td>
                            <?php
                            $id_alternatif_user = $alternatif['id_alternatif_user'] ?? null;
                            $q = $id_alternatif_user ? mysqli_query($koneksi, "SELECT * FROM penilaian_user WHERE id_alternatif_user='$id_alternatif_user'") : null;
                            $cek_tombol = $q ? mysqli_num_rows($q) : 0;
                            ?>
                            <td>
                                <?php if ($cek_tombol == 0) { ?>
                                    <a data-toggle="modal" href="#setPenilaian" class="btn btn-success btn-sm"><i class="fa fa-plus"></i> Input</a>
                                <?php } else { ?>
                                    <a data-toggle="modal" href="#editPenilaian" class="btn btn-warning btn-sm"><i class="fa fa-edit"></i> Edit</a>
                                <?php } ?>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- Modal Input Penilaian -->
            <div class="modal fade" id="setPenilaian" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="myModalLabel"><i class="fa fa-plus"></i> Input Penilaian</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <form action="" method="post">
                            <div class="modal-body">
                                <?php
                                $q2 = mysqli_query($koneksi, "SELECT * FROM kriteria ORDER BY kode_kriteria ASC");
                                while ($d = mysqli_fetch_array($q2)) {
                                ?>
                                    <input type="hidden" name="id_kriteria[]" value="<?= $d['id_kriteria'] ?>">
                                    <div class="form-group">
                                        <label class="font-weight-bold">(<?= $d['kode_kriteria'] ?>) <?= $d['nama'] ?></label>
                                        <?php if ($d['ada_pilihan'] == 1) { ?>
                                            <select name="nilai[]" class="form-control" required>
                                                <option value="">--Pilih--</option>
                                                <?php
                                                $id_kriteria = $d['id_kriteria'];
                                                $q3 = mysqli_query($koneksi, "SELECT * FROM sub_kriteria WHERE id_kriteria = '$id_kriteria' ORDER BY nilai ASC");
                                                while ($d3 = mysqli_fetch_array($q3)) {
                                                ?>
                                                    <option value="<?= $d3['id_sub_kriteria'] ?>"><?= $d3['nama'] ?></option>
                                                <?php } ?>
                                            </select>
                                        <?php } else { ?>
                                            <input type="number" name="nilai[]" class="form-control" step="0.001" required>
                                        <?php } ?>
                                    </div>
                                <?php } ?>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-warning" data-dismiss="modal"><i class="fa fa-times"></i> Batal</button>
                                <button type="submit" name="tambah" class="btn btn-success"><i class="fa fa-save"></i> Simpan</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <!-- Modal Edit Penilaian -->
            <div class="modal fade" id="editPenilaian" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="myModalLabel"><i class="fa fa-edit"></i> Edit Penilaian</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <form action="" method="post">
                            <div class="modal-body">
                                <?php
                                $q2 = mysqli_query($koneksi, "SELECT * FROM kriteria ORDER BY kode_kriteria ASC");
                                while ($d = mysqli_fetch_array($q2)) {
                                    $id_kriteria = $d['id_kriteria'];
                                    $q4 = $id_alternatif_user ? mysqli_query($koneksi, "SELECT * FROM penilaian_user WHERE id_alternatif_user='$id_alternatif_user' AND id_kriteria='$id_kriteria'") : null;
                                    $d4 = $q4 ? mysqli_fetch_array($q4) : null;
                                ?>
                                    <input type="hidden" name="id_kriteria[]" value="<?= $d['id_kriteria'] ?>">
                                    <div class="form-group">
                                        <label class="font-weight-bold">(<?= $d['kode_kriteria'] ?>) <?= $d['nama'] ?></label>
                                        <?php if ($d['ada_pilihan'] == 1) { ?>
                                            <select name="nilai[]" class="form-control" required>
                                                <option value="">--Pilih--</option>
                                                <?php
                                                $q3 = mysqli_query($koneksi, "SELECT * FROM sub_kriteria WHERE id_kriteria = '$id_kriteria' ORDER BY nilai ASC");
                                                while ($d3 = mysqli_fetch_array($q3)) {
                                                ?>
                                                    <option value="<?= $d3['id_sub_kriteria'] ?>" <?= $d4 && $d3['id_sub_kriteria'] == $d4['nilai'] ? 'selected' : '' ?>><?= $d3['nama'] ?></option>
                                                <?php } ?>
                                            </select>
                                        <?php } else { ?>
                                            <input type="number" name="nilai[]" class="form-control" step="0.001" value="<?= $d4['nilai'] ?? '' ?>" required>
                                        <?php } ?>
                                    </div>
                                <?php } ?>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-warning" data-dismiss="modal"><i class="fa fa-times"></i> Batal</button>
                                <button type="submit" name="edit" class="btn btn-success"><i class="fa fa-save"></i> Update</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        <?php else : ?>
            <p class="text-center">Data alternatif untuk pengguna ini tidak ditemukan.</p>
        <?php endif; ?>
    </div>
</div>

<?php
require_once('template/footer.php');
?>