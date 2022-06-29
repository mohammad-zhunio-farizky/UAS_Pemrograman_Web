<?php 
	error_reporting(0);
	include 'db.php';
	$kontak = mysqli_query($conn, "SELECT admin_telp, admin_email, admin_instagram, admin_address FROM tb_admin WHERE admin_id = 1");
	$a = mysqli_fetch_object($kontak);
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
			<h1><a href="index.php">Apotek Medika Salam</a></h1>
			<ul>
				<li><a href="obat.php">Obat</a></li>
			</ul>
		</div>
	</header>

	<!-- search -->
	<div class="search">
		<div class="container">
			<form action="obat.php">
				<input type="text" name="search" placeholder="Cari Obat" value="<?php echo $_GET['search'] ?>">
				<input type="hidden" name="kat" value="<?php echo $_GET['kat'] ?>">
				<input type="submit" name="cari" value="Cari Obat">
			</form>
		</div>
	</div>

	<!-- list obat -->
	<div class="section">
		<div class="container">
			<h3>Daftar Obat</h3>
			<div class="box">
				<?php 
					if($_GET['search'] != '' || $_GET['kat'] != ''){
						$where = "AND obat_name LIKE '%".$_GET['search']."%' AND category_id LIKE '%".$_GET['kat']."%' ";
					}

					$obat = mysqli_query($conn, "SELECT * FROM tb_obat WHERE obat_status = 1 $where ORDER BY obat_id DESC");
					if(mysqli_num_rows($obat) > 0){
						while($p = mysqli_fetch_array($obat)){
				?>	
					<a href="detail-obat.php?id=<?php echo $p['obat_id'] ?>">
						<div class="col-4">
							<img src="obat/<?php echo $p['obat_image'] ?>">
							<p class="nama"><?php echo substr($p['obat_name'], 0, 30) ?></p>
							<p class="harga">Rp. <?php echo number_format($p['obat_price']) ?></p>
							<p class="stock"><?php echo substr($p['obat_stock'], 0, 30) ?></p>
						</div>
					</a>
				<?php }}else{ ?>
					<p>Obat tidak ada</p>
				<?php } ?>
			</div>
		</div>
	</div>

	<!-- footer -->
	<div class="footer">
		<div class="container">
			<h4>Alamat</h4>
			<p><?php echo $a->admin_address ?></p>

			<h4>Email</h4>
			<p><?php echo $a->admin_email ?></p>

			<h4>Instagram</h4>
			<p><a href=https://www.instagram.com/zzhunio18><?php echo $a->admin_instagram ?></a></p>

			<h4>No. Hp</h4>
			<p><?php echo $a->admin_telp ?></p>
			<small>Copyright &copy; 2022 - Apotek Medika Salam.</small>
		</div>
	</div>
</body>
</html>