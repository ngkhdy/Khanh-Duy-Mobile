<?php

// Lấy tất cả các danh mục
$sql = "SELECT * FROM categories";
$result_categories = mysqli_query($connect, $sql);

?>

<nav class="menu">
	<ul class="menu-list">
		<?php while ($category = mysqli_fetch_assoc($result_categories)) : ?>
			<?php
			// Lấy các nhà sản xuất theo danh mục hiện tại
			$category_id = $category['id'];
			$sql = "SELECT * FROM manufactures WHERE rules = $category_id";
			$result_manufactures = mysqli_query($connect, $sql);
			?>
			<li class="menu-item">
				<a><?php echo $category['category_name']; ?></a>
				<ul class="menu-list-child">
					<?php foreach ($result_manufactures as $each_manufacture) : ?>
						<li class="menu-item">
							<a href="view_brand.php?id=<?php echo $each_manufacture['id']; ?>">
								<?php echo $each_manufacture['name']; ?>
							</a>
						</li>
					<?php endforeach; ?>
				</ul>
			</li>
		<?php endwhile; ?>
		<li class="menu-item">
			<a href="#">Blog</a>
		</li>
		<li class="menu-item">
			<a href="#">Liên hệ</a>
		</li>
		<li class="menu-item">
			<a href="#">Hỗ trợ</a>
		</li>
	</ul>
</nav>
