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
	$username = mysqli_real_escape_string($connect, $_POST['username']);
	$email = mysqli_real_escape_string($connect, $_POST['email']);
	$phone = mysqli_real_escape_string($connect, $_POST['phone']);
	$address = mysqli_real_escape_string($connect, $_POST['address']);

	$sql = "UPDATE `customers` SET
            `name` = '$username',
            `email` = '$email',
            `phone` = '$phone',
            `address` = '$address'
            WHERE `id` = {$id}";

	if (mysqli_query($connect, $sql)) {
		$_SESSION['success'] = 'Thông tin đã được cập nhật!';
	} else {
		$_SESSION['error'] = 'Có lỗi xảy ra. Vui lòng thử lại.';
	}

	header('location:user.php');
	exit();
}
