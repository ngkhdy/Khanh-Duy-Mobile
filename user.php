<?php
session_start();
$id = $_SESSION['id'];
if (empty($_SESSION['id'])) {
	$_SESSION['error'] = 'Đăng nhập đi bạn!';
	header('location:login.php');
}

require './admin/root.php';
$sql = "SELECT * FROM `customers` WHERE `id`= {$id} ";
$result = mysqli_query($connect, $sql);
if (empty($result)) {
	header('location:../partials/404.php');
}

include './partials/sticky.php';

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
	Day la trang nguoi dung. Xin chao ban
	<?php
	echo $_SESSION['name'];

	?>
	<br>
	<div class="row mt-3">
		<div class="col">
			<div class="table-responsive">
				<table class="table table-bordered mt-1 align-middle" id="dataTable" width="100%" cellspacing="0">
					<thead class="thead-dark">
						<tr>
							<th>Id</th>
							<th>Fullname</th>
							<th>Email</th>
							<th>Phone</th>
							<th>Gender</th>
							<th>Address</th>
							<th>Status</th>
							<th>Created</th>

						</tr>
					</thead>
					<tbody class="thead-light">
						<?php foreach ($result as $each) : ?>
							<tr class="text-dark">
								<td class="text-primary"> <?php echo $each['id']; ?></td>
								<td class="text-primary"> <?php echo $each['name']; ?></td>
								<td class="text-primary"> <?php echo $each['email']; ?></td>
								<td class="text-primary"> <?php echo $each['phone']; ?></td>
								<td class="text-primary">
									<?php if ($each['gender'] == 1) { ?>
										Nam
									<?php } else { ?>
										Nữ
									<?php } ?>
								</td>
								<td class="text-primary"> <?php echo $each['address']; ?></td>
								<td class="text-success">
									<?php if ($each['status'] == 1) { ?>
										Active
									<?php } else { ?>
										<span class="text-danger">
											Not Active
										</span>

									<?php } ?>
								</td>
								<td class="text-primary"> <?php echo $each['created_at']; ?></td>


							</tr>
						<?php endforeach ?>
					</tbody>
				</table>
			</div>
		</div>
	</div>




	<a href="logout.php">
		Dang xuat
	</a>
</body>

</html>
<?php include './partials/footer.php'; ?>
