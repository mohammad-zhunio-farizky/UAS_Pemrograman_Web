<?php 
	
	include 'db.php';

	if(isset($_GET['idk'])){
		$delete = mysqli_query($conn, "DELETE FROM tb_category WHERE category_id = '".$_GET['idk']."' ");
		echo '<script>window.location="data-kategori.php"</script>';
	}

	if(isset($_GET['idp'])){
		$obat = mysqli_query($conn, "SELECT obat_image FROM tb_obat WHERE obat_id = '".$_GET['idp']."' ");
		$p = mysqli_fetch_object($obat);

		unlink('./obat/'.$p->obat_image);

		$delete = mysqli_query($conn, "DELETE FROM tb_obat WHERE obat_id = '".$_GET['idp']."' ");
		echo '<script>window.location="data-obat.php"</script>';
	}

?>