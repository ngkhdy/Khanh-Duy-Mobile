<?php
require '../root.php';
require '../check_super_admin_login.php';
$search = trim($_GET['search'] ?? null);

$sqlPt = "SELECT count(id) as total FROM categories
    WHERE
    category_name LIKE '%$search%'";

$arrayNum = mysqli_query($connect, $sqlPt);
$row = mysqli_fetch_assoc($arrayNum);
$total_records = $row['total'];

$current_page = isset($_GET['page']) ? $_GET['page'] : 1;
$limit = 10;

$total_page = ceil($total_records / $limit);

if ($current_page > $total_page) {
	$current_page = $total_page;
} else if ($current_page < 1) {
	$current_page = 1;
}

$start = ($current_page - 1) * $limit;

$sql = "SELECT * FROM `categories`
        WHERE
        category_name LIKE '%$search%'
        LIMIT $limit OFFSET $start";
$result = mysqli_query($connect, $sql);
if (empty($result)) {
	header('location:../partials/404.php');
}

?>
<!DOCTYPE html>
<html lang="en">

<head>

	<?php
	include '../partials/head_view.php';
	?>
	<title>Admin - Categories</title>

</head>

<body id="page-top">
	<?php
	include '../partials/header_view.php';
	?>
	<div class="container-fluid">
		<?php
		require '../menu.php';
		?>
		<h5 class="text-left mt-3">Quản lý loại sản phẩm</h5>
		<div class="row p-2">
			<a class="btn btn-primary ml-2" href="form_insert.php"> Thêm </a>
			<a class="btn btn-primary ml-2" href="index.php"> View all </a>
			<form class="input-group ml-auto" style="width: 50%;">
				<input class="form-control" type="search" placeholder="Tìm kiếm tên Loại..." name="search" value="<?php echo $search ?>">
			</form>
		</div>
		<div class="row mt-3">
			<div class="col">
				<div class="table-responsive">
					<table class="table table-bordered mt-1 align-middle" id="dataTable" width="100%" cellspacing="0">
						<thead class="thead-dark">
							<tr>
								<th>#</th>
								<th>Tên Loại</th>
								<th>Mô Tả</th>
								<th>Sửa</th>
								<th>Xóa</th>
							</tr>
						</thead>
						<tbody class="thead-light">
							<?php foreach ($result as $each) : ?>
								<tr>
									<td class="text-primary"><?php echo $each['id']; ?></td>
									<td class="text-capitalize text-primary"><?php echo $each['category_name']; ?></td>
									<td class="text-primary">
										<?php echo $each['description']; ?></td>
									<td>
										<a class="btn btn-info" href="form_update.php?id=<?php echo $each['id']; ?>">Sửa</a>
									</td>
									<td>
										<a onclick="return Del('<?php echo $each['category_name']; ?>')" class="btn btn-danger" href="delete.php?id=<?php echo $each['id']; ?>">Xóa</a>
									</td>
								</tr>
							<?php endforeach ?>
						</tbody>
					</table>
					<?php
					include '../partials/pagination.php';
					?>
				</div>
			</div>
		</div>
	</div>
	<?php
	include '../partials/footer_view.php';

	include '../partials/js_link.php';
	?>

	<script>
		function Del(name) {
			return confirm("Bạn có chắc muốn xóa sản phẩm: " + name + " ?")
		}
	</script>
</body>

</html>
