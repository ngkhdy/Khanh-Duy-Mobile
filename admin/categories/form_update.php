<?php
require '../check_super_admin_login.php';
require '../root.php';
if (empty($_GET['id'])) {
	header('location:index.php?error= Phải truyền mã để sửa');
}

$id = $_GET['id'];
require '../root.php';

$sql = "SELECT * FROM `categories`
    WHERE `id` = '$id'";
$result = mysqli_query($connect, $sql);
$each = mysqli_fetch_array($result);

if (empty($each)) {
	header('location:../partials/404.php');
}
?>
<!DOCTYPE html>
<html lang="en">

<head>

	<?php
	include '../partials/head_view.php';
	?>

	<title>Manufacture - update</title>

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
				<p> This is update categories page !</p>
				<a class="btn btn-primary" href="index.php">List categories</a>
			</div>
		</div>
		<div class="row mt-5">
			<div class="col">
				<form action="process_update.php" method="post">
					<input type="hidden" name="id" value="<?php echo $each['id'] ?>">
					<div class="mb-3">
						<div class="mb-3">
							<label class="form-label">Tên loại sản phẩm (*)</label>
							<input class="form-control" type="text" name="name" value="<?php echo $each['category_name']; ?>">
						</div>

						<div class="mb-3">
							<label class="form-label">Mô tả (*)</label>
							<textarea class="form-control" name="description" rows="3"><?php echo $each['description']; ?></textarea>
						</div>
						<button class="btn btn-primary float-right" type="submit">Sửa</button>
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
