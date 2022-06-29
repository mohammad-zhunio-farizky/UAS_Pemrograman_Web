<?php 
	error_reporting(0);
	include 'db.php';
	$kontak = mysqli_query($conn, "SELECT admin_telp, admin_email, admin_address FROM tb_admin WHERE admin_id = 1");
	$a = mysqli_fetch_object($kontak);

	$obat = mysqli_query($conn, "SELECT * FROM tb_obat WHERE obat_id = '".$_GET['id']."' ");
	$p = mysqli_fetch_object($obat);
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
			<ul>
				<li><a href="login.php">Login</a></li>
			</ul>
		</div>
	</header>

	<!-- search -->
	<div class="search">
		<div class="container">
			<form action="obat.php">
				<input type="text" name="search" placeholder="Cari Obat">
				<input type="submit" name="cari" value="Cari Obat">
			</form>
		</div>
	</div>

	<!-- obat detail -->
	<div class="section">
		<div class="container">
			<h3>Detail Obat</h3>
			<div class="box">
				<div class="col-2">
					<img src="obat/<?php echo $p->obat_image ?>" width="100%">
				</div>
				<div class="col-2">
					<h3><?php echo $p->obat_name ?></h3>
					<h4>Rp. <?php echo number_format($p->obat_price) ?></h4>
					<p>Deskripsi :<br>
						<?php echo $p->obat_description ?>
					</p>
					<p><a href="https://api.whatsapp.com/send?phone=<?php echo $a->admin_telp ?>&text=Hai, saya ingin beli obat Anda." target="_blank">
						Hubungin via Whatsapp
						<img src="img/wa.png" width="50px"></a>
					</p>
				</div>
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