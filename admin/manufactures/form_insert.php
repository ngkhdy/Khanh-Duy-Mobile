<?php
require '../check_super_admin_login.php';
require '../root.php';

$query = "SELECT * FROM categories";
$result = mysqli_query($connect, $query);
?>
<!DOCTYPE html>
<html lang="vi">

<head>
	<?php
	include '../partials/head_view.php';
	?>
	<title>Thêm hãng sản xuất</title>
</head>

<body id="page-top">
	<?php
	include '../partials/header_view.php';
	?>

	<div class="container-fluid">
		<?php
		require '../menu.php';
		?>
		<div class="row">
			<div class="col">
				<p>Đây là trang thêm hãng sản xuất!</p>
				<a class="btn btn-primary" href="index.php">Danh sách hãng sản xuất</a>
			</div>
		</div>
		<div class="row mt-5">
			<div class="col">
				<form action="process_insert.php" method="post">
					<div class="mb-3">
						<label class="form-label">Tên(*)</label>
						<input class="form-control" type="text" name="name">
					</div>
					<div class="mb-3">
						<label for="" class="form-label">Nhà phân phối(*)</label>
						<select class="form-control" name="rules">
							<option value="0">Nhà phân phối không hoạt động</option>
							<?php while ($row = mysqli_fetch_assoc($result)) : ?>
								<option value="<?php echo $row['id']; ?>">
									<?php echo $row['category_name']; ?>
								</option>
							<?php endwhile; ?>
						</select>
					</div>
					<div class="mb-3">
						<label class="form-label">Địa chỉ(*)</label>
						<textarea class="form-control" name="address" rows="3"></textarea>
					</div>
					<div class="mb-3">
						<label class="form-label">Số điện thoại(*)</label>
						<input class="form-control" type="text" name="phone">
					</div>
					<div class="mb-3">
						<label class="form-label">Ảnh(*)</label>
						<input class="form-control" type="text" name="photo">
					</div>
					<button class="btn btn-primary float-end" type="submit">Thêm</button>
				</form>
			</div>
		</div>
	</div>

	<?php
	include '../partials/footer_view.php';
	include '../partials/js_link.php';
	?>

</body>

</html>
