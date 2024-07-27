<?php
session_start();
$id = $_SESSION['id'];
if (empty($_SESSION['id'])) {
	$_SESSION['error'] = 'Đăng nhập đi bạn!';
	header('location:login.php');
	exit();
}

require './admin/root.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
	$current_password = $_POST['current_password'];
	$new_password = $_POST['new_password'];
	$confirm_password = $_POST['confirm_password'];

	// Fetch the user's current password from the database
	$sql = "SELECT password FROM `customers` WHERE `id`= {$id}";
	$result = mysqli_query($connect, $sql);
	$user = mysqli_fetch_assoc($result);

	if (md5($current_password) === $user['password']) {
		if ($new_password === $confirm_password) {
			$hashed_password = md5($new_password);
			$update_sql = "UPDATE `customers` SET `password` = '{$hashed_password}' WHERE `id` = {$id}";
			if (mysqli_query($connect, $update_sql)) {
				$_SESSION['success'] = 'Mật khẩu đã được cập nhật!';
			} else {
				$_SESSION['error'] = 'Có lỗi xảy ra. Vui lòng thử lại.';
			}
		} else {
			$_SESSION['error'] = 'Mật khẩu mới và xác nhận mật khẩu không khớp.';
		}
	} else {
		$_SESSION['error'] = 'Mật khẩu hiện tại không đúng.';
	}

	header('location:change-password.php');
	exit();
}
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
	<link rel="stylesheet" href="./public/css/pages.css" />
	<link rel="stylesheet" href="./public/css/profile.css" />
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">

	<title>Đổi Mật Khẩu</title>
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
	<div class="user_n">
		<!-- user-box1 -->
		<div class="user-box1">
			<img src="https://i.pinimg.com/474x/4b/71/f8/4b71f8137985eaa992d17a315997791e.jpg" alt="">
			<h1 class="user-h1">Đổi Mật Khẩu</h1>
		</div>
		<!-- user-box2 -->
		<div class="user-box2">
			<?php
			if (isset($_SESSION['error'])) {
				echo '<p style="color: red;">' . $_SESSION['error'] . '</p>';
				unset($_SESSION['error']);
			}
			if (isset($_SESSION['success'])) {
				echo '<p style="color: green;">' . $_SESSION['success'] . '</p>';
				unset($_SESSION['success']);
			}
			?>
			<form action="change-password.php" method="POST">
				<table class="use-tb">
					<tr>
						<td><label for="current_password">Mật khẩu hiện tại:</label></td>
						<td>
							<div class="password-user"><input type="password" name="current_password" required></div>
						</td>
					</tr>
					<tr>
						<td><label for="new_password">Mật khẩu mới:</label></td>
						<td>
							<div class="password-user"><input type="password" name="new_password" required></div>
						</td>
					</tr>
					<tr>
						<td><label for="confirm_password">Xác nhận mật khẩu mới:</label></td>
						<td>
							<div class="password-user"><input type="password" name="confirm_password" required></div>
						</td>
					</tr>
					<tr>
						<td></td>
						<td>
							<button class="bt-user" type="submit">Đổi mật khẩu</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>

</html>
<?php include './partials/footer.php'; ?>
