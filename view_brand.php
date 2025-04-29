<?php

session_start();
require 'admin/root.php';

$brand_id = isset($_GET['id']) ? $_GET['id'] : '';
// echo $brand_id;
$sql = "SELECT * FROM manufactures WHERE id = '$brand_id' ";
$result = mysqli_query($connect, $sql);

if (mysqli_num_rows($result) != 1) {
	header('location:view_brand.php?error=Bị lặp hãng');
}

$manufacture = mysqli_fetch_assoc($result);
// print_r($manufacture);

$sql = "SELECT products.*, manufactures.name
    FROM products
    JOIN manufactures ON manufactures.id = products.manufacturer_id
    WHERE manufactures.id = '$brand_id'";
$result_products = mysqli_query($connect, $sql);

if (mysqli_num_rows($result_products) == 0) {
	header('location:./404.php');
	exit();
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title><?php echo $manufacture['name'] . " | Sản phẩm"; ?></title>
	<link rel="stylesheet" href="./public/css/rss.css" />
	<link rel="stylesheet" href="./public/css/style.css" />
	<link rel="stylesheet" href="./public/css/view_all.css" />
	<link rel="stylesheet" href="./public/css/pages.css" />
	<link rel="stylesheet" href="./public/css/breadcrumb.css" />
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
</head>
<body>
	<div class="wrapper">
		<?php include './partials/sticky.php' ?>
		<?php include './detail/detail_brand.php' ?>
		<?php include './partials/footer.php' ?>
	</div>

	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
	<script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	<script src="./public/js/js.js"></script>
	<script src="./public/js/slider.js"></script>
	<script src="./public/js/live-searchs.js"></script>
</body>

</html>
