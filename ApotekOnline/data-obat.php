<?php 
	session_start();
	include 'db.php';
	if($_SESSION['status_login'] != true){
		echo '<script>window.location="login.php"</script>';
	}
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Apotek Medika Salam</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
</head>
<body>
	<!-- header -->
	<header>
		<div class="container">
			<h1><a href="dashboard.php">Apotek Medika Salam</a></h1>
			<ul>
				<li><a href="index.php">Home</a></li>
				<li><a href="dashboard.php">Dashboard</a></li>
				<li><a href="profil.php">Profil</a></li>
				<li><a href="data-kategori.php">Data Kategori</a></li>
				<li><a href="data-obat.php">Data Obat</a></li>
				<li><a href="logout.php">Logout</a></li>
			</ul>
		</div>
	</header>

	<!-- content -->
	<div class="section">
		<div class="container">
			<h3>Data Obat</h3>
			<div class="box">
				<p><a href="tambah-obat.php">Tambah Data</a></p>
				<table border="1" cellspacing="0" class="table">
					<thead>
						<tr>
							<th width="60px">No</th>
							<th>Kategori</th>
							<th>Nama obat</th>
							<th>Harga</th>
							<th>Gambar</th>
							<th>Stock</th>
							<th>Status</th>
							<th width="150px">Aksi</th>
						</tr>
					</thead>
					<tbody>
						<?php
							$no = 1;
							$obat = mysqli_query($conn, "SELECT * FROM tb_obat LEFT JOIN tb_category USING (category_id) ORDER BY obat_id DESC");
							if(mysqli_num_rows($obat) > 0){
							while($row = mysqli_fetch_array($obat)){
						?>
						<tr>
							<td><?php echo $no++ ?></td>
							<td><?php echo $row['category_name'] ?></td>
							<td><?php echo $row['obat_name'] ?></td>
							<td>Rp. <?php echo number_format($row['obat_price']) ?></td>
							<td><a href="obat/<?php echo $row['obat_image'] ?>" target="_blank"> <img src="obat/<?php echo $row['obat_image'] ?>" width="50px"> </a></td>
							<td><?php echo $row['obat_stock'] ?></td>
							<td><?php echo ($row['obat_status'] == 0)? 'Tidak Aktif':'Aktif'; ?></td>
							<td>
								<a href="edit-obat.php?id=<?php echo $row['obat_id'] ?>">Edit</a> || <a href="proses-hapus.php?idp=<?php echo $row['obat_id'] ?>" onclick="return confirm('Yakin ingin hapus ?')">Hapus</a>
							</td>
						</tr>
						<?php }}else{ ?>
							<tr>
								<td colspan="7">Tidak ada data</td>
							</tr>
						<?php } ?>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<!-- footer -->
	<footer>
		<div class="container">
			<small>Copyright &copy; 2022 - Apotek Medika Salam.</small>
		</div>
	</footer>
</body>
</html>