<?php
require '../check_super_admin_login.php';

if (empty($_GET['id'])) {
	header('location:index.php?error= Phải truyền mã để sửa');
}

$id = $_GET['id'];
require '../root.php';

// Lấy thông tin của hãng sản xuất dựa trên ID
$sql = "SELECT * FROM manufactures WHERE id = '$id'";
$result = mysqli_query($connect, $sql);
$each = mysqli_fetch_array($result);

if (empty($each)) {
	header('location:../partials/404.php');
}

// Lấy danh sách các nhà phân phối từ bảng categories
$query = "SELECT id, category_name FROM categories";
$categories_result = mysqli_query($connect, $query);
?>
<!DOCTYPE html>
<html lang="vi">

<head>
	<?php
	include '../partials/head_view.php';
	?>
	<title>Chỉnh sửa hãng sản xuất</title>
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
				<p>Đây là trang sửa hãng sản xuất!</p>
				<a class="btn btn-primary" href="index.php">Danh sách hãng sản xuất</a>
			</div>
		</div>
		<div class="row mt-5">
			<div class="col">
				<form action="process_update.php" method="post">
					<input type="hidden" name="id" value="<?php echo $each['id'] ?>">
					<div class="mb-3">
						<label class="form-label">Tên(*)</label>
						<input class="form-control" type="text" name="name" value="<?php echo $each['name']; ?>">
					</div>
					<div class="mb-3">
						<label for="" class="form-label">Nhà phân phối(*)</label>
						<select class="form-control" name="rules">
							<option value="0" <?php if ($each['rules'] == 0) echo 'selected'; ?>>Nhà phân phối không hoạt động</option>
							<?php while ($row = mysqli_fetch_assoc($categories_result)) : ?>
								<option value="<?php echo $row['id']; ?>" <?php if ($each['rules'] == $row['id']) echo 'selected'; ?>>
									<?php echo $row['category_name']; ?>
								</option>
							<?php endwhile; ?>
						</select>
					</div>
					<div class="mb-3">
						<label class="form-label">Địa chỉ(*)</label>
						<textarea class="form-control" name="address" rows="3"><?php echo $each['address']; ?></textarea>
					</div>
					<div class="mb-3">
						<label class="form-label">Số điện thoại(*)</label>
						<input class="form-control" type="text" name="phone" value="<?php echo $each['phone']; ?>">
					</div>
					<div class="mb-3">
						<label class="form-label">Ảnh(*)</label>
						<input class="form-control" type="text" name="photo" value="<?php echo $each['photo']; ?>">
					</div>
					<button class="btn btn-primary float-end" type="submit">Sửa</button>
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
