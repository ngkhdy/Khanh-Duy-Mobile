<?php

$sql = "SELECT advertise.*, manufactures.name as manuf_name , manufactures.rules as rules FROM advertise JOIN manufactures on advertise.manufacturer_id = manufactures.id WHERE advertise.rules = 1";
$result_av = mysqli_query($connect, $sql);
?>
<div class="grid slider">
	<div class="slider-wrap">
		<?php foreach ($result_av as $each_av) : ?>
			<div class="brands-img__wrap">
				<?php if ($each_av['rules'] == 1): ?>
					<a href="view_brand.php?id=<?php echo $each_av['manufacturer_id'] ?>" class="brands__img">
						<img src="admin/categoris/server/uploads/<?php echo $each_av['photo'] ?>" alt="">
					</a>
				<?php endif; ?>
			</div>
		<?php endforeach ?>
	</div>
</div>
