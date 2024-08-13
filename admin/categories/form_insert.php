<?php
require '../check_super_admin_login.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>

	<?php
	include '../partials/head_view.php';
	?>

	<title>Categories - insert</title>

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
				<p> This is add category page !</p>
				<a class="btn btn-primary" href="index.php">List category</a>
			</div>
		</div>
		<div class="row mt-5">
			<div class="col">
				<form action="process_insert.php" method="post">
					<div class="mb-3">
						<label class="form-label">Tên loại sản phẩm (*)</label>
						<input class="form-control" type="text" name="name">
					</div>

					<div class="mb-3">
						<label class="form-label">Mô tả (*)</label>
						<textarea class="form-control" name="description"></textarea>
					</div>

					<button class=" btn btn-primary float-end" type="submit">Thêm</button>
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
