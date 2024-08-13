<?php
require '../check_admin_login.php';
require '../root.php';

$id = $_POST['id'];

$name = addslashes($_POST['name']);
$name = strip_tags($name);

$description = trim(addslashes($_POST['description']));


if (empty($_POST['id'])) {
	header('location:form_update.php?error= Phải điền mã để sửa');
	exit;
} elseif (empty($_POST['name']) || empty($_POST['description'])) {
	header("location:form_update.php?id=$id&error= Phải điền đủ thông tin");
} else {
	$sql = "UPDATE categories SET category_name = '$name', description = '$description' WHERE id = '$id'";
	mysqli_query($connect, $sql);

	header('location:index.php?success=Sửa thành công');
	exit;
}

mysqli_close($connect);
