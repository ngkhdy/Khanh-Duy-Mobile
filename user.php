<?php
session_start();
$id = $_SESSION['id'];
if (empty($_SESSION['id'])) {
	$_SESSION['error'] = 'Đăng nhập đi bạn!';
	header('location:login.php');
	exit();
}

require './admin/root.php';
$sql = "SELECT * FROM `customers` WHERE `id`= {$id}";
$result = mysqli_query($connect, $sql);
if (empty($result) || mysqli_num_rows($result) == 0) {
	header('location:../partials/404.php');
	exit();
}


$user = mysqli_fetch_assoc($result);

// Fetch orders
$order_sql = "SELECT * FROM `orders` WHERE `customer_id` = {$id}";
$order_result = mysqli_query($connect, $order_sql);
$orders = mysqli_fetch_all($order_result, MYSQLI_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="icon" type="image/x-icon" href="./public/img/favicon.ico">
	<link rel="stylesheet" href="./public/css/rss.css" />
	<link rel="stylesheet" href="./public/css/style.css" />
	<link rel="stylesheet" href="./public/css/view_all.css" />
	<link rel="stylesheet" href="./public/css/pages.css" />
	<link rel="stylesheet" href="./public/css/profile.css" />
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">

	<title>Thông tin người dùng</title>
	<style>
		a {
			color: red;
			text-decoration: none;
		}
	</style>
</head>

<body>
	<?php include './partials/sticky.php'; ?>
	<div class="box-space"></div>
	<div class="container">
		<div class="user_n">
			<!-- user-box1 -->
			<div class="user-box1">
				<img src="https://i.pinimg.com/474x/4b/71/f8/4b71f8137985eaa992d17a315997791e.jpg" alt="">
				<h1 class="user-h1">Hồ Sơ Của Tôi</h1>
			</div>
			<!-- user-box2 -->
			<div class="user-box2">
				<?php
				if (isset($_SESSION['success'])) {
					echo '<p style="color: green;">' . $_SESSION['success'] . '</p>';
					unset($_SESSION['success']);
				}
				if (isset($_SESSION['error'])) {
					echo '<p style="color: red;">' . $_SESSION['error'] . '</p>';
					unset($_SESSION['error']);
				}
				?>
				<form action="update-user.php" method="POST">
					<table class="use-tb">
						<tr>
							<td><label for="username">Tên người dùng: </label></td>
							<td>
								<div class="ten-user"><input type="text" name="username" placeholder="" value="<?php echo htmlspecialchars($user['name']); ?>"></div>
							</td>
						</tr>
						<tr>
							<td><label for="email">Email:</label></td>
							<td>
								<div class="email-user"><input type="text" name="email" placeholder="" value="<?php echo htmlspecialchars($user['email']); ?>"></div>
							</td>
						</tr>
						<tr>
							<td><label for="phone">Số điện thoại:</label></td>
							<td>
								<div class="phone-user"><input type="text" name="phone" placeholder="" value="<?php echo htmlspecialchars($user['phone']); ?>"></div>
							</td>
						</tr>
						<tr>
							<td><label for="address">Địa chỉ:</label></td>
							<td>
								<div class="address-user"><input type="text" name="address" placeholder="" value="<?php echo htmlspecialchars($user['address']); ?>"></div>
							</td>
						</tr>
						<tr>
							<td></td>
							<td>
								<button class="bt-user" type="submit">Lưu</button>
								<button class="bt-mk" type="button" onclick="window.location.href='change-password.php';">Đổi mật
									khẩu</button>
							</td>
						</tr>
					</table>
				</form>

			</div>

		</div>
		<div class="order_n">

			<!-- info-oder php-->
			<?php
			$id_order = $_SESSION['id'];

			$sql = "SELECT order_detail.quantity as quantity,
			orders.status as status,
			orders.id as id,
			orders.total_price as total_price,
			products.id as product_id,
			products.name as name_product,
			products.photo as image_product

			FROM order_detail
			LEFT JOIN orders on orders.id = order_detail.order_id
			LEFT JOIN products on products.id = order_detail.product_id

			WHERE orders.customer_id = '$id' ORDER BY `orders`.`id` DESC";

			$result = mysqli_query($connect, $sql);
			if (mysqli_num_rows($result) > 0) {
				echo ('éo có đơn hàng');
			}
			?>

			<!-- info-oder -->
			<div class="grid">
				<?php if (!empty(mysqli_fetch_array($result))) { ?>
					<div class="row">
						<div class="col col-full">
							<div class="grid table_cart-info">
								<div class="row-table_cart">
									<div class="col-table">Mã đơn</div>
									<div class="col-table col-table-5">Thông tin sản phẩm</div>
									<div class="col-table col-table-2">Số lượng</div>
									<div class="col-table col-table-2">Trạng thái đơn hàng</div>
								</div>
								<?php foreach ($result as $each) : ?>
									<div class="row-table_cart row-table-order-js">
										<div class="col-table-p col-table-2">
											<span style="margin: 0 auto ;"><?php echo $each['id'] ?></span>
										</div>
										<div class="col-table-p col-table-5">
											<?php if (!empty($each['name_product']) || !empty($each['image_product'])) : ?>
												<img height="200" src="admin/products/server/uploads/<?php echo $each['image_product'] ?>" alt="">
												<p><?php echo $each['name_product'] ?></p>
											<?php endif ?>
										</div>
										<div class="col-table-p col-table-2">
											<span class="order-quantity">
												<?php echo $each['quantity'] ?>
											</span>
										</div>

										<div class="col-table-p col-table-2">
											<div class="order_info">
												<?php
												switch ($each['status']) {
													case '0':
														echo "Chờ duyệt";
														break;
													case '1':
														echo "Đã duyệt";
														break;
													case '2':
														echo '<span style="color: red;">Đã hủy</span>';
														break;
												}
												?>
											</div>
											<?php if ($each['status'] == 0) : ?>
												<a onclick="return Cancel()" class="order_cancel" href="./order_cancel.php?id=<?php echo $each['id'] ?>" class="">
													Hủy
												</a>
											<?php endif ?>
										</div>
									</div>
									<div class="row-table_cart row-after">
										<div class="col-table col-table-5">Tổng tiền hóa đơn: $<span id="sum_quantity"><?php echo currency_format($each['total_price']) ?></span> </div>
									</div>

								<?php endforeach ?>
							</div>
						</div>
					</div>
				<?php

				} else { ?>
					<div class="row">
						<div class="col col-full">
							<div class="grid table_cart-info">
								<div class="row-table_cart">
									<div style="margin: 0 auto;" class="content_cart">
										<div class="cart_none">
											<img src="./public/img/cart_0.png" alt="">
											<h3>Bạn không có đơn hàng nào !!</h3>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				<?php } ?>
			</div>
		</div>
	</div>

</body>

</html>
<?php include './partials/footer.php'; ?>
