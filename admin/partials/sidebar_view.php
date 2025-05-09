<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
	<!-- Sidebar - Brand -->
	<a class="sidebar-brand d-flex align-items-center justify-content-center" href="../dashboard/index.php">
		<div class="sidebar-brand-icon rotate-n-15">
			<i class="fas fa-laugh-wink"></i>
		</div>
		<div class="sidebar-brand-text mx-3">Admin</div>
	</a>

	<!-- Divider -->
	<hr class="sidebar-divider my-0">

	<!-- Nav Item - Dashboard -->
	<li class="nav-item active">
		<a class="nav-link" href="../dashboard/index.php">
			<i class="fas fa-fw fa-tachometer-alt"></i>
			<span>Dashboard</span></a>
	</li>

	<!-- Divider -->
	<hr class="sidebar-divider my-0">

	<!-- Nav Item - Products -->
	<li class="nav-item active">
		<?php if (($_SESSION['lever']) == 1) { ?>
			<a class="nav-link" href="../manufactures/index.php">
				<i class="fas fa-fw fa-tachometer-alt"></i>
				<span>Hãng</span>
			</a>
		<?php } else { ?>
			<div onclick="return Dec()" class="nav-link" href="../manufactures/index.php">
				<i class="fas fa-fw fa-tachometer-alt"></i>
				<span>Hãng</span>
			</div>
		<?php } ?>

	</li>
	<li class="nav-item active">
		<a class="nav-link" href="../categories/index.php">
			<i class="fas fa-fw fa-tachometer-alt"></i>
			<span>Loại Sản Phẩm</span></a>
	</li>
	<li class="nav-item active">
		<a class="nav-link" href="../products/index.php">
			<i class="fas fa-fw fa-tachometer-alt"></i>
			<span>Sản Phẩm</span></a>
	</li>
	<li class="nav-item active">
		<a class="nav-link" href="../orders/index.php">
			<i class="fas fa-fw fa-tachometer-alt"></i>
			<span>Đơn hàng</span></a>
	</li>
	<li class="nav-item active">
		<a class="nav-link" href="../categoris/index.php">
			<i class="fas fa-fw fa-tachometer-alt"></i>
			<span>Baner Quảng Cáo</span></a>
	</li>
	<li class="nav-item">
		<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
			<i class="fas fa-fw fa-wrench"></i>
			<span>Tài Khoản</span>
		</a>
		<div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<h6 class="collapse-header">Tùy Chỉnh Account:</h6>
				<a class="collapse-item" href="../accounts/index.php">Người Dùng</a>
				<a class="collapse-item" href="../users/index.php">Khách Hàng</a>
			</div>
		</div>
	</li>

	<!-- Divider -->
	<hr class="sidebar-divider">

	<!-- Heading -->
	<!-- <div class="sidebar-heading">
        Addons
    </div> -->

	<!-- Nav Item - Cards -->
	<!-- <li class="nav-item">
        <a class="nav-link" href="charts.html">
            <i class="fas fa-fw fa-cog"></i>
            <span>Cards</span></a>
    </li> -->

	<!-- Nav Item - Charts -->
	<!-- <li class="nav-item">
        <a class="nav-link" href="charts.html">
            <i class="fas fa-fw fa-chart-area"></i>
            <span>Charts</span></a>
    </li> -->

	<!-- Divider -->
	<!-- <hr class="sidebar-divider d-none d-md-block"> -->

	<!-- Sidebar Toggler (Sidebar) -->
	<div class="text-center d-none d-md-inline">
		<button class="rounded-circle border-0" id="sidebarToggle"></button>
	</div>

</ul>
