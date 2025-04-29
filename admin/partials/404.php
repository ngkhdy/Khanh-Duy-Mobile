<?php
require '../check_admin_login.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <?php
    include './head_view.php';
    ?>
    <title>404</title>
</head>

<body id="page-top">
    <?php
        include './header_view.php';
    ?>
    <div class="container-fluid">

        <!-- 404 Error Text -->
        <div class="text-center">
            <div class="error mx-auto" data-text="404">404</div>
            <p class="lead text-gray-800 mb-5">Không tìm thấy trang</p>
            <p class="text-gray-500 mb-0">Gặp lỗi gì đó rồi bạn ơi...</p>
            <a href="../dashboard/index.php">← Quay lại Trang chủ</a>
        </div>
    </div>

    <?php
        include './footer_view.php';

        include './js_link.php';
    ?>
</body>

</html>