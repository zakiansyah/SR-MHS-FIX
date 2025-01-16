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

if ($user_role === 'admin' || $user_role === 'user') {
    $page = "Perhitungan_user";
    require_once('template/header.php');

    mysqli_query($koneksi, "TRUNCATE TABLE hasil_user;");


$kriterias = array();
$q0 = mysqli_query($koneksi,"SELECT SUM(bobot) as total FROM kriteria");			
$total_b = mysqli_fetch_array($q0);
$q1 = mysqli_query($koneksi,"SELECT * FROM kriteria ORDER BY kode_kriteria ASC");			
while($krit = mysqli_fetch_array($q1)){
    $kriterias[$krit['id_kriteria']]['id_kriteria'] = $krit['id_kriteria'];
    $kriterias[$krit['id_kriteria']]['kode_kriteria'] = $krit['kode_kriteria'];
    $kriterias[$krit['id_kriteria']]['nama'] = $krit['nama'];
    $kriterias[$krit['id_kriteria']]['type'] = $krit['type'];
    $kriterias[$krit['id_kriteria']]['bobot'] = $krit['bobot'];
    $kriterias[$krit['id_kriteria']]['ada_pilihan'] = $krit['ada_pilihan'];
    $kriterias[$krit['id_kriteria']]['normalisasi'] = $krit['bobot']/$total_b['total'];
}

$alternatifs = array();
$q2 = mysqli_query($koneksi,"SELECT * FROM alternatif_user");			
while($alt = mysqli_fetch_array($q2)){
    $alternatifs[$alt['id_alternatif_user']]['id_alternatif_user'] = $alt['id_alternatif_user'];
    $alternatifs[$alt['id_alternatif_user']]['nama'] = $alt['nama'];
} 

//Matrix Keputusan (X)
$matriks_x = array();
foreach($kriterias as $kriteria):
    foreach($alternatifs as $alternatif):
        
        $id_alternatif_user = $alternatif['id_alternatif_user'];
        $id_kriteria = $kriteria['id_kriteria'];
        
        if($kriteria['ada_pilihan']==1){
            $q4 = mysqli_query($koneksi,"SELECT sub_kriteria.nilai FROM penilaian_user JOIN sub_kriteria WHERE penilaian_user.nilai=sub_kriteria.id_sub_kriteria AND penilaian_user.id_alternatif_user='$alternatif[id_alternatif_user]' AND penilaian_user.id_kriteria='$kriteria[id_kriteria]'");
            $data = mysqli_fetch_array($q4);
            $nilai = $data['nilai'];
        }else{
            $q4 = mysqli_query($koneksi,"SELECT nilai FROM penilaian_user WHERE id_alternatif_user='$alternatif[id_alternatif_user]' AND id_kriteria='$kriteria[id_kriteria]'");
            $data = mysqli_fetch_array($q4);
            $nilai = $data['nilai'];
        }
        
        $matriks_x[$id_kriteria][$id_alternatif_user] = $nilai;
    endforeach;
endforeach;

// Nilai Utility (U)
$nilai_u = array();
foreach ($kriterias as $kriteria):
    foreach ($alternatifs as $alternatif):
        $id_alternatif = $alternatif['id_alternatif_user']; // Pastikan ini sesuai dengan nama kolom yang benar
        $id_kriteria = $kriteria['id_kriteria'];
        $nilai = $matriks_x[$id_kriteria][$id_alternatif];
        $type_kriteria = $kriteria['type'];
        
        $nilai_max = @(max($matriks_x[$id_kriteria]));
        $nilai_min = @(min($matriks_x[$id_kriteria]));
        
        // Cek apakah nilai_max dan nilai_min sama
        if ($nilai_max == $nilai_min) {
            // Jika sama, set nilai utility ke 0 atau 1, tergantung pada konteks
            $u = 0; // atau 1, tergantung pada logika yang Anda inginkan
        } else {
            if ($type_kriteria == 'Benefit'):
                $u = ($nilai - $nilai_min) / ($nilai_max - $nilai_min);
            elseif ($type_kriteria == 'Cost'):
                $u = ($nilai_max - $nilai) / ($nilai_max - $nilai_min);
            endif;
        }
        
        $nilai_u[$id_kriteria][$id_alternatif] = $u;

    endforeach;
endforeach;

//Nilai Utility Terbobot (UB)
$nilai_ub = array();
foreach($kriterias as $kriteria):
    foreach($alternatifs as $alternatif):
        $id_alternatif_user = $alternatif['id_alternatif_user'];
        $id_kriteria = $kriteria['id_kriteria'];
        $u = $nilai_u[$id_kriteria][$id_alternatif_user];
        $normalisasi = $kriteria['normalisasi'];
        $nilai_ub[$id_kriteria][$id_alternatif_user] = $u*$normalisasi;
    endforeach;
endforeach;

//Perhitungan Nilai
$perhitungan = array();
foreach($alternatifs as $alternatif):
    $nilai_total = 0;
    foreach($kriterias as $kriteria):		
        $normalisasi = $kriteria['normalisasi'];
        $id_alternatif_user = $alternatif['id_alternatif_user'];
        $id_kriteria = $kriteria['id_kriteria'];
        
        $u = $nilai_u[$id_kriteria][$id_alternatif_user];
        $nilai_total += $normalisasi * $u;
    endforeach;
    $perhitungan[$alternatif['id_alternatif_user']]['id_alternatif_user'] = $alternatif['id_alternatif_user'];
    $perhitungan[$alternatif['id_alternatif_user']]['nama'] = $alternatif['nama'];
    $perhitungan[$alternatif['id_alternatif_user']]['nilai'] = $nilai_total;
endforeach;
?>

<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800"><i class="fas fa-fw fa-calculator"></i> Data Perhitungan</h1>
</div>

<div class="card shadow mb-4">
    <!-- /.card-header -->
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-warning"><i class="fa fa-table"></i> Matrix Keputusan (X)</h6>
    </div>

    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" width="100%" cellspacing="0">
                <thead class="bg-orange text-white">
                    <tr align="center">
                        <th width="5%" rowspan="2">No</th>
                        <th>Nama Alternatif</th>
                        <?php foreach ($kriterias as $kriteria): ?>
                            <th><?= $kriteria['kode_kriteria'] ?></th>
                        <?php endforeach ?>
                    </tr>
                </thead>
                <tbody>
                    <?php 
                        $no=1;
                        foreach ($alternatifs as $alternatif): ?>
                    <tr align="center">
                        <td><?= $no; ?></td>
                        <td align="left"><?= $alternatif['nama'] ?></td>
                        <?php
                        foreach ($kriterias as $kriteria):
                            $id_alternatif_user = $alternatif['id_alternatif_user'];
                            $id_kriteria = $kriteria['id_kriteria'];
                            echo '<td>';
                            echo $matriks_x[$id_kriteria][$id_alternatif_user];
                            echo '</td>';
                        endforeach
                        ?>
                    </tr>
                    <?php
                        $no++;
                        endforeach
                    ?>
                </tbody>
            </table>
        </div>
    </div>
</div>


<div class="card shadow mb-4">
    <!-- /.card-header -->
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-warning"><i class="fa fa-table"></i> Bobot Kriteria</h6>
    </div>

    <div class="card-body">
		<div class="table-responsive">
			<table class="table table-bordered" width="100%" cellspacing="0">
				<thead class="bg-orange text-white">
					<tr align="center">
						<?php foreach ($kriterias as $kriteria): ?>
						<th><?= $kriteria['kode_kriteria'] ?> (<?= $kriteria['type'] ?>)</th>
						<?php endforeach ?>
					</tr>
				</thead>
				<tbody>
					<tr align="center">
						<?php 
						
						foreach ($kriterias as $kriteria): ?>
						<td>
						<?php 
						echo $kriteria['bobot'];
						?>
						</td>
						<?php endforeach ?>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>

<div class="card shadow mb-4">
    <!-- /.card-header -->
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-warning"><i class="fa fa-table"></i> Normalisasi Bobot Kriteria</h6>
    </div>

    <div class="card-body">
		<div class="table-responsive">
			<table class="table table-bordered" width="100%" cellspacing="0">
				<thead class="bg-orange text-white">
					<tr align="center">
						<?php foreach ($kriterias as $kriteria): ?>
						<th><?= $kriteria['kode_kriteria'] ?> (<?= $kriteria['type'] ?>)</th>
						<?php endforeach ?>
					</tr>
				</thead>
				<tbody>
					<tr align="center">
						<?php 
						
						foreach ($kriterias as $kriteria): ?>
						<td>
						<?php 
						echo $kriteria['normalisasi'];
						?>
						</td>
						<?php endforeach ?>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>

    <!-- /.card-header -->
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-warning"><i class="fa fa-table"></i> Matriks Ternormalisasi (R)</h6>
    </div>

    <div class="card-body">
		<div class="table-responsive">
			<table class="table table-bordered" width="100%" cellspacing="0">
				<thead class="bg-orange text-white">
					<tr align="center">
						<th width="5%" rowspan="2">No</th>
						<th>Nama Alternatif</th>
						<?php foreach ($kriterias as $kriteria): ?>
							<th><?= $kriteria['kode_kriteria'] ?></th>
						<?php endforeach ?>
					</tr>
				</thead>
				<tbody>
					<?php 
						$no=1;
						foreach ($alternatifs as $alternatif): ?>
					<tr align="center">
						<td><?= $no; ?></td>
						<td align="left"><?= $alternatif['nama'] ?></td>
						<?php						
						foreach($kriterias as $kriteria):
							$id_alternatif = $alternatif['id_alternatif_user'];
							$id_kriteria = $kriteria['id_kriteria'];
							echo '<td>';
							echo $nilai_u[$id_kriteria][$id_alternatif];
							echo '</td>';
						endforeach;
						?>
					</tr>
					<?php
						$no++;
						endforeach
					?>
				</tbody>
			</table>
		</div>
	</div>
</div>

<div class="card shadow mb-4">
    <!-- /.card-header -->
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-warning"><i class="fa fa-table"></i> Matriks Ternormalisasi Terbobot</h6>
    </div>

    <div class="card-body">
		<div class="table-responsive">
			<table class="table table-bordered" width="100%" cellspacing="0">
				<thead class="bg-orange text-white">
					<tr align="center">
						<th width="5%" rowspan="2">No</th>
						<th>Nama Alternatif</th>
						<?php foreach ($kriterias as $kriteria): ?>
							<th><?= $kriteria['kode_kriteria'] ?></th>
						<?php endforeach ?>
					</tr>
				</thead>
				<tbody>
					<?php 
						$no=1;
						foreach ($alternatifs as $alternatif): ?>
					<tr align="center">
						<td><?= $no; ?></td>
						<td align="left"><?= $alternatif['nama'] ?></td>
						<?php						
						foreach($kriterias as $kriteria):
							$id_alternatif = $alternatif['id_alternatif_user'];
							$id_kriteria = $kriteria['id_kriteria'];
							echo '<td>';
							echo $nilai_ub[$id_kriteria][$id_alternatif];
							echo '</td>';
						endforeach;
						?>
					</tr>
					<?php
						$no++;
						endforeach
					?>
				</tbody>
			</table>
		</div>
	</div>
</div>

<!-- Rest of the HTML remains the same except for final table where data is inserted into hasil_user -->

<div class="card shadow mb-4">
    <!-- /.card-header -->
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-warning"><i class="fa fa-table"></i> Perhitungan Nilai</h6>
    </div>

    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" width="100%" cellspacing="0">
                <thead class="bg-orange text-white">
                    <tr align="center">
                        <th width="5%">No</th>
                        <th>Nama Alternatif</th>
                        <th width="30%">Total Nilai</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $no=1;
                    foreach($perhitungan as $alternatif ): ?>
                        <tr align="center">
                            <td><?php echo $no; ?></td>
                            <td align="left"><?php echo $alternatif['nama']; ?></td>
                            <td><?php echo $alternatif['nilai']; ?></td>											
                        </tr>
                    <?php 
                    $no++;
                    mysqli_query($koneksi,"INSERT INTO hasil_user (id_hasil_user, id_alternatif_user, nilai) VALUES ('', '$alternatif[id_alternatif_user]', '$alternatif[nilai]')");
                    endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<?php
require_once('template/footer.php');
}
else {
    header('Location: login.php');
}
?>