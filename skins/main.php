<div class="main">
	<div class="main-logo"><span class="slash"></span><span class="ml-1">THE BRAND</span><br>
		<span class="ml-2">OF LUXERIOUS</span><span class="ml-3"> FASHION</span></div>
</div>
<div class="viewlist">
	<div class="con1">
		<div class="con1-1">
			<div class="img-1"><span class="img1-sp1">HOT DEAL<br><span class="img1-sp2">FOR MEN</span></span></div>
		</div>
		<div class="con1-2">
			<div class="img-2">
				<span class="img2-sp1">LUXIROUS & TRENDY<br>
					<span class="img2-sp2">ACCESORIES</span>
				</span>
			</div>
		</div>
	</div>
	<div class="con2">
		<div class="con2-1">
			<div class="img-3">
				<span class="img3-sp1">30% OFFER<br>
					<span class="img3-sp2">WOMEN</span>
				</span>
			</div>
		</div>
		<div class="con2-2">
			<div class="img-4">
				<span class="img4-sp1">NEW ARRIVALS<br>
					<span class="img4-sp2">FOR KIDS</span>
				</span>
			</div>
		</div>
	</div>
</div>
<div class="p1">
	<p class="p1-1">Featured Items</p>
	<p class="p1-2">Shop for items based on what we featured in this week</p>
</div>
<div class="items">
	<div class="items block">
		<?foreach($result as $item):?>
		<div class="items-1" id_good="<?=$item['id_good'];?>">
			<div class="shadow">
				<div class="sh-cont">
					<a href="/public/product/single?id=<?= $item['id_good']?>" target="_blank" class="cart-link"><img src="../img/Forma_1.png"><span class="add-to-cart"> Add to Cart</span></a>
				</div>
			</div>
			<img src="<?=$item['img'];?>">
			<p class="description"><?=$item['description'];?></p>
			<p class="price">$<?=$item['price'];?></p>
		</div>
		<?endforeach;?>
	</div>
</div>
<div class="all-product"><a href="product">Browse All Product<img src="../img/arrow.png"></a></div>
<div class="clearboth"></div>
<div class="baner-position">
	<div class="baner">
		<div class="baner-text">
			<span class="baner-text-1">30%</span><span class="baner-text-2">OFFER<br></span><span class="baner-text-3">FOR WOMEN</span>
		</div>
		<img src="../img/Layer%2039.png">
	</div>
	<div class="aside-baner">
		<div class="baner-1">
			<div class="png-1">
				<img src="../img/Forma%201.png">
			</div>
			<div class="baner-p">
				<p class="baner-p-1">Free Delivery</p>
				<p class="baner-p-2">Worldwide delivery on all. Authorit tively morph next-generation innovation with extensive models.</p>
			</div>
		</div>
		<div class="baner-1">
			<div class="png-1">
				<img src="../img/Forma%202.png">
			</div>
			<div class="baner-p">
				<p class="baner-p-1">Sales & discounts</p>
				<p class="baner-p-2">Worldwide delivery on all. Authorit tively morph next-generation innovation with extensive models.</p>
			</div>
		</div>
		<div class="baner-1">
			<div class="png-1">
				<img src="../img/Forma%203.png">
			</div>
			<div class="baner-p">
				<p class="baner-p-1">Quality assurance</p>
				<p class="baner-p-2">Worldwide delivery on all. Authorit tively morph next-generation innovation with extensive models.</p>
			</div>
		</div>
	</div>
</div>
<div class="clearboth-baner"></div>
<?include 'footer.php';?>
