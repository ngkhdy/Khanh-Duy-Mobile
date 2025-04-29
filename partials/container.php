<?php

require 'admin/root.php';

if (!$connect) {
	die("Connection failed: " . mysqli_connect_error());
}

// Lấy danh sách các danh mục
$sqlCategories = "SELECT * FROM categories";
$resultCategories = mysqli_query($connect, $sqlCategories);

if (!$resultCategories) {
	die("Query failed: " . mysqli_error($connect));
}

?>

<div class="container">
	<div class="grid_full-width">
		<?php include './partials/menu.php'; ?>
		<div class="grid_full-width content">
			<div class="content__brands">
				<?php include './partials/slider.php'; ?>

				<?php while ($category = mysqli_fetch_assoc($resultCategories)) : ?>
					<?php
					// Lấy id của danh mục
					$category_id = $category['id'];

					// Tính tổng số sản phẩm trong danh mục này
					$sqlPt = "SELECT count(id) as total FROM products WHERE category_id = $category_id";
					$arrayNum = mysqli_query($connect, $sqlPt);
					$row = mysqli_fetch_assoc($arrayNum);
					$total_records = $row['total'];

					// Chỉ hiển thị danh mục nếu có sản phẩm
					if ($total_records > 0) {
						// Phân trang
						$current_page = isset($_GET['page']) ? $_GET['page'] : 1;
						$limit = 6;  // Giới hạn số lượng sản phẩm trên mỗi trang

						$total_page = ceil($total_records / $limit);

						if ($current_page > $total_page) {
							$current_page = $total_page;
						} elseif ($current_page < 1) {
							$current_page = 1;
						}

						$start = ($current_page - 1) * $limit;

						// Lấy sản phẩm theo danh mục với giới hạn
						$sqlProducts = "SELECT * FROM products WHERE category_id = $category_id ORDER BY id ASC LIMIT $limit OFFSET $start";
						$resultProducts = mysqli_query($connect, $sqlProducts);

						if (!$resultProducts) {
							die("Query failed: " . mysqli_error($connect));
						}
					?>
						<div class="grid">
							<div class="brands__heading">
								<h1><?php echo $category['description']; ?></h1>
					
							</div>
						</div>

						<div class="grid">
							<div class="row row-category ">
								<?php foreach ($resultProducts as $eachProduct) : ?>
									<div class="col col-3 col-2-mt mt-10">
										<div class="category product">
											<a href="view_detail.php?id=<?php echo $eachProduct['id']; ?>" class="category_link">
												<div class="category__img">
													<img src="admin/products/server/uploads/<?php echo $eachProduct['photo']; ?>" alt="">
												</div>
												<h4 class="category__name"><?php echo $eachProduct['name']; ?></h4>
												<div class="category__price">
													<p>Giá bán:</p>
													<span class="category__money">
														<?php echo currency_format($eachProduct['price']); ?>
													</span>
												</div>
											</a>
											<div class="category-btn">
												<ul class="category-cart">
													<li>
														<a href="view_detail.php?id=<?php echo $eachProduct['id']; ?>">
															Mua ngay
														</a>
													</li>
													<li>
														<?php if (!empty($_SESSION['id'])) { ?>
															<a onclick="return Suc()" href="add_to_cart.php?id=<?php echo $eachProduct['id']; ?>">
																Thêm vào giỏ hàng
															</a>
														<?php } ?>
													</li>
												</ul>
											</div>

										</div>
									</div>

								<?php endforeach; ?>
							</div>
						</div>
						<?php include 'pagination.php' ?>
					<?php } ?>
				<?php endwhile; ?>
			</div>
			<?php include './partials/slidebar.php'; ?>
		</div>
	</div>
</div>
