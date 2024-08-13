<?php
require '../root.php';
require '../check_super_admin_login.php';


$name = trim(addslashes($_POST['name']));
$name = strip_tags($name);

$descriptions = trim(addslashes($_POST['description']));


if (empty($_POST['name'])) {

	header('location:form_insert.php?error= Phải điền tên loại sản phẩm');
}
if (empty($_POST['description'])) {
	header('location:form_insert.php?error= Phải điền mô tả loại sản phẩm');
} else {
	$sql = "SELECT * from categories
    where `category_name` = '$name'";
	$result = mysqli_query($connect, $sql);
	$sql = "INSERT INTO `categories`(`category_name`,`description` ) VALUES('$name', '$descriptions')";
	mysqli_query($connect, $sql);
}

if (!(mysqli_num_rows($result) == 1)) {
	header('location:index.php?success= Thêm thành công');
} else {
	header('location:index.php?error=Tên loại sản phẩm đã tồn tại');
}
mysqli_close($connect);
