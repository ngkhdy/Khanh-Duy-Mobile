<?php
require '../check_admin_login.php';
const PATH_UPLOAD = 'server/uploads/';
require '../root.php';

$id = $_POST['id'];
$photo_new = $_FILES['photo_new'];
if ($photo_new['size'] > 0) {
	$file_extension = explode('.', $photo_new['name'])[1];
	$fileName = time() . '.' . $file_extension;
	$path_file = PATH_UPLOAD . $fileName;
	move_uploaded_file($photo_new["tmp_name"], $path_file);
} else {
	$fileName = $_POST['photo_old'];
}

$name = mysqli_real_escape_string($connect, strip_tags($_POST['name']));
$price = mysqli_real_escape_string($connect, strip_tags($_POST['price']));
$descriptions = mysqli_real_escape_string($connect, trim(strip_tags($_POST['descriptions'])));
$slug = mysqli_real_escape_string($connect, trim(strip_tags($_POST['slug'])));
$category_id = $_POST['category_id'];
$manufacturer_id = $_POST['manufacturer_id'];



if (empty($_POST['id'])) {
	header('location:form_update.php?error= Phải điền mã để sửa');
	exit;
} elseif (empty($_POST['name']) || empty($_POST['price']) || empty($_POST['slug']) || empty($_POST['descriptions'])) {
	header("location:form_update.php?id=$id&error= Phải điền đủ thông tin");
} else {
	$sql = "UPDATE `products`
            SET
            name = '$name',
            photo = '$fileName',
            price = '$price',
            descriptions = '$descriptions',
            slug = '$slug',
            category_id = '$category_id',
            manufacturer_id = '$manufacturer_id'
            WHERE id = '$id'";
}

$query = mysqli_query($connect, $sql);
if ($query) {
	header('location:index.php?success=Sửa thành công');
} else {
	$error = mysqli_error($connect);
	header("location:index.php?error=$error");
}

mysqli_close($connect);
