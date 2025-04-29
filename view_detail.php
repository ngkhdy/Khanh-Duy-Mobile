<?php
session_start();

require 'admin/root.php';
$id = isset($_GET['id']) ? $_GET['id'] : '';

$brands = isset($_GET['lap_id']) ? $_GET['lap_id'] : '';

if (!empty($_GET['id'])) {
	$sql = "SELECT * FROM `products` WHERE id = '$id'";
	$result_mb = mysqli_query($connect, $sql);
	$value_mb = mysqli_fetch_array($result_mb);
	if (empty($value_mb)) {
		header('location:404.php');
	}
	if (!empty($_POST['content'])) {
		$content = trim(addslashes($_POST['content']));
		if (isset($_SESSION['id'])) {
			if (strlen($_POST['content']) 	 < 6) {
				$_SESSION['error'] = 'Bình luận của bạn quá ngắn. Vui lòng nhập bình luận';
			} else {
				$sql = "SELECT * fROM customers where id = '" . $_SESSION['id'] . "'";
				$result = mysqli_query($connect, $sql);
				$user_id = mysqli_fetch_array($result)['id'];
				$product_id = $_GET['id'];
				$sql = "INSERT INTO `comments` (user_id, product_id, content, created_at)
        VALUES
          ('$user_id', '$product_id', '$content', now());
        ";
				$query = mysqli_query($connect, $sql);

				//reload page
				header("Location: view_detail.php?id=$id&comment=success");

			}
		}
	}
	$sql = "SELECT customers.name as name,
  comments.*
  fROM comments
  JOIN customers on  customers.id = comments.user_id
  where product_id = '$id'";
	$result_cm = mysqli_query($connect, $sql);
}

if (!empty($_GET['lap_id'])) {
	// Thay đổi để sử dụng bảng products 
	$sql = "SELECT * FROM `products` WHERE id = '$brands'";
	$result = mysqli_query($connect, $sql);
	$value = mysqli_fetch_array($result);
	if (empty($value)) {
		header('location:404.php');
	}
	if (!empty($_POST['content'])) {
		$content = trim(addslashes($_POST['content']));
		if (isset($_SESSION['id'])) {
			if (strlen($_POST['content']) < 6) {
				$_SESSION['error'] = 'Bình luận của bạn quá ngắn. Vui lòng nhập bình luận';
			} else {
				$sql = "SELECT * fROM customers where id = '" . $_SESSION['id'] . "'";
				$result = mysqli_query($connect, $sql);
				$user_id = mysqli_fetch_array($result)['id'];
				$product_id = $_GET['lap_id'];
				$sql = "INSERT INTO `comments` (user_id, product_id, content, created_at)
        VALUES
          ('$user_id', '$product_id', '$content', now());
        ";
				$query = mysqli_query($connect, $sql);

				//reload page
				header("Location: view_detail.php?lap_id=$brands&comment=success");
			}
		}
	}
	$sql = "SELECT customers.name as name,
  comments.*
  fROM comments
  JOIN customers on  customers.id = comments.user_id
  where product_id = '$brands'";
	$result_cm = mysqli_query($connect, $sql);
}


?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title></title>
	<link rel="stylesheet" href="./public/css/rss.css" />
	<link rel="stylesheet" href="./public/css/style.css" />
	<link rel="stylesheet" href="./public/css/breadcrumb.css" />
	<link rel="stylesheet" href="./public/css/view_all.css" />
	<link rel="stylesheet" href="./public/css/comments.css" />
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	

</head>

<body>
	<div class="wrapper">
	<?php include './partials/sticky.php' ?>
	<?php include './detail/detail_product.php'?>
	<?php include './partials/footer.php' ?>
	</div>

	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="./public/js/js.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="./public/js/cart-shopping.js"></script>
	<script src="./public/js/live-searchs.js"></script>
	<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	<script src="./public/js/slider.js"></script>
	<script src="./public/js/comments.js"></script>
	<script src="https://cdn.ckeditor.com/4.16.0/standard/ckeditor.js"></script>
</body>

</html>
