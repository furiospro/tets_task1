<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
	<meta charset="UTF-8">
	<title>BRAND</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="/img/Group%202.png" rel="shortcut icon">
	<link rel="stylesheet" href="node_modules/normalize.css/normalize.css">
	<link rel="stylesheet" href="/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="css/style.css">

	<script src="bower_components/jquery/dist/jquery.min.js"></script>
	<script>
		$(document).ready(function () {

			$('.nav').on('click', 'a',function () {
					$('.nav a').toggleClass('active', false);
					$(this).toggleClass('active',true);
				}
			);

			$('.button').on('click', function () {
				$(document).off('click');
				$('.formbox_hidden').toggleClass('formbox');
			});
			$(document).on('click', function () {
				$('.formbox').removeClass('formbox');
				console.log('sasdasd');
			});
			/*$('input').on('click',function () {
				console.log('sdf');
				$(this).val('');
			})*/
		})

	</script>
</head>
<body>
<div class="header">
	<div class="container box-flex">
		<div class="box-flex_1">
			<a href="#" class="logo">
				<img src="img/Group%202.png" alt="logo"><div class="text">BRAN<span class="textlogo">D</span></div>
			</a>
			<div class="browse">
				<div class="browse-1">
					<div>Browse</div>
					<span class="point-1"></span>
				</div>
				<form action="#" method="post">
					<input type="text" name="search" placeholder="Search for item..." class="input_main" >
					<button type="submit" name="search" value="" class="search"><img src="/img/search.png"></button></form>
			</div>
		</div>
		<div class="box-flex_2">
			<a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a>
			<div class="button">
				<div class="my-acc"><?php if($Auth){echo $_SESSION['id_user'];}else {echo 'My Account';}?></div>
				<div class="point"></div>
			</div>

		</div>
	</div>
</div>
<div class="container">
	<div class="formbox_hidden">
		<form action="index.php" method="post" style="
    display: flex;
    flex-direction: column;
    width: inherit;
    margin: auto 0;
">
			<input type="text" name="login" placeholder="Inter your login..." class="field_login">
			<input type="password" name="pass" placeholder="Inter your password..." class="field_pass">
			<div class="field_submit_checkbox">
				<input type="submit" name="submit" value="Войти" class="authbottom">
				<label style="
    font-size: 19px;
    margin: auto 0;
">Запомнить меня<input type="checkbox" name="remember" class="field_checkbox" style="margin-left: 5px;width: 16px;height: 16px;"></label>
			</div>
			<input type="submit" name="reguser" value="Зарегистрироваться" class="authbottom">
		</form>
	</div>
	<div class="nav">
		<ul>
			<li><a href="#" class="active">Home</a></li>
			<li><a href="#">Man</a></li>
			<li><a href="#">Women</a></li>
			<li><a href="#">Kids</a></li>
			<li><a href="#">Accoseriese</a></li>
			<li><a href="#">Featured</a></li>
			<li><a href="#">Hot Deals</a></li>
		</ul>
	</div>
</div>
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
	<p class="p1-1">Fetured Items</p>
	<p class="p1-2">Shop for items based on what we featured in this week</p>
</div>
<div class="items">
	<div class="items block">
		<div class="items-1">
			<div class="shadow">
				<div class="sh-cont">
					<a href="#" class="cart-link"><img src="img/Forma_1.png"><span class="add-to-cart"> Add to Cart</span></a>
				</div>
			</div>
			<img src="img/Layer%202.png">
			<p class="description">Mango  People  T-shirt</p>
			<p class="price">$52.00</p>
		</div>
		<div class="items-1">
			<div class="shadow">
				<div class="sh-cont">
					<a href="#" class="cart-link"><img src="img/Forma_1.png"><span class="add-to-cart"> Add to Cart</span></a>
				</div>
			</div>
			<img src="img/Layer%203.png">
			<p class="description">Mango  People  T-shirt</p>
			<p class="price">$52.00</p>
		</div>
		<div class="items-1">
			<div class="shadow">
				<div class="sh-cont">
					<a href="#" class="cart-link"><img src="img/Forma_1.png"><span class="add-to-cart"> Add to Cart</span></a>
				</div>
			</div>
			<img src="img/Layer%204.png">
			<p class="description">Mango  People  T-shirt</p>
			<p class="price">$52.00</p>
		</div>
		<div class="goods">
			<div class="shadow">
				<div class="sh-cont">
					<a href="#" class="cart-link"><img src="img/Forma_1.png"><span class="add-to-cart"> Add to Cart</span></a>
				</div>
			</div>
			<img src="img/Layer%205.png">
			<p class="description">Mango  People  T-shirt</p>
			<p class="price">$52.00</p>
		</div>
	</div>
	<div class="items block">
		<div class="items-1">
			<div class="shadow">
				<div class="sh-cont">
					<a href="#" class="cart-link"><img src="img/Forma_1.png"><span class="add-to-cart"> Add to Cart</span></a>
				</div>
			</div>
			<img src="img/Layer%206.png">
			<p class="description">Mango  People  T-shirt</p>
			<p class="price">$52.00</p>
		</div>
		<div class="items-1">
			<div class="shadow">
				<div class="sh-cont">
					<a href="#" class="cart-link"><img src="img/Forma_1.png"><span class="add-to-cart"> Add to Cart</span></a>
				</div>
			</div>
			<img src="img/Layer%207.png">
			<p class="description">Mango  People  T-shirt</p>
			<p class="price">$52.00</p>
		</div>
		<div class="items-1">
			<div class="shadow">
				<div class="sh-cont">
					<a href="#" class="cart-link"><img src="img/Forma_1.png"><span class="add-to-cart"> Add to Cart</span></a>
				</div>
			</div>
			<img src="img/Layer%208.png">
			<p class="description">Mango  People  T-shirt</p>
			<p class="price">$52.00</p>
		</div>
		<div class="goods">
			<div class="shadow">
				<div class="sh-cont">
					<a href="#" class="cart-link"><img src="img/Forma_1.png"><span class="add-to-cart"> Add to Cart</span></a>
				</div>
			</div>
			<img src="img/Layer%209.png">
			<p class="description">Mango  People  T-shirt</p>
			<p class="price">$52.00</p>
		</div>
	</div>
</div>
<div class="all-product"><a href="product">Browse All Product<img src="img/arrow.png"></a></div>
<div class="clearboth"></div>
<div class="baner-position">
	<div class="baner">
		<div class="baner-text">
			<span class="baner-text-1">30%</span><span class="baner-text-2">OFFER<br></span><span class="baner-text-3">FOR WOMEN</span>
		</div>
		<img src="img/Layer%2039.png">
	</div>
	<div class="aside-baner">
		<div class="baner-1">
			<div class="png-1">
				<img src="img/Forma%201.png">
			</div>
			<div class="baner-p">
				<p class="baner-p-1">Free Delivery</p>
				<p class="baner-p-2">Worldwide delivery on all. Authorit tively morph next-generation innovation with extensive models.</p>
			</div>
		</div>
		<div class="baner-1">
			<div class="png-1">
				<img src="img/Forma%202.png">
			</div>
			<div class="baner-p">
				<p class="baner-p-1">Sales & discounts</p>
				<p class="baner-p-2">Worldwide delivery on all. Authorit tively morph next-generation innovation with extensive models.</p>
			</div>
		</div>
		<div class="baner-1">
			<div class="png-1">
				<img src="img/Forma%203.png">
			</div>
			<div class="baner-p">
				<p class="baner-p-1">Quality assurance</p>
				<p class="baner-p-2">Worldwide delivery on all. Authorit tively morph next-generation innovation with extensive models.</p>
			</div>
		</div>
	</div>
</div>
<div class="clearboth-baner"></div>
<div class="subscribe">
	<div class="subs_1_position">

		<div class="subscribe-1">
			<img src="img/Layer%2040.png" class="layer40">
			<div class="subscribe-text">
				<p class="subs-text-1">“Vestibulum quis porttitor dui! Quisque viverra nunc mi,
					a pulvinar purus condimentum a. Aliquam condimentum mattis neque sed pretium”</p>
				<p class="subs-text-2">Bin Burhan
					<span class="subs-span">Dhaka, Bd</span></p>
				<div class="borders">
					<div class="borders-1"></div>
					<div class="borders-2"></div>
					<div class="borders-3"></div>
				</div>
			</div>
		</div>

	</div>
	<div class="subscribe-2">
		<div class="subscribe-2-position">
			<div class="subscribe-2-text">
				<p class="subs2-p1">Subscribe<br></p><span class="subs2-p2">FOR OUR NEWLETTER AND PROMOTION</span>
			</div>
			<div class="subs-input">
				<input type="email" name="email" placeholder="Enter your Email" class="input_main">
				<div class="subs-submit"><p>Subscribe</p></div>
			</div>
		</div>
	</div>
</div>
<div class="clearboth" style="margin-bottom:0"></div>
<div class="footer">
	<div class="footer-1">
		<a href="#" class="logo">
			<img src="img/Group%202.png" alt="logo"><div class="text">BRAN<span class="textlogo">D</span></div>
		</a><div class="clearboth" style="margin-bottom:0"></div>
		<p class="fopter-p1">Objectively transition extensive data rather than cross functional solutions. Monotonectally syndicate multidisciplinary materials before go forward benefits. Intrinsicly syndicate an expanded array of processes and cross-unit partnerships.
		</p>
		<p class="footer-p2">Efficiently plagiarize 24/365 action items and focused infomediaries.
			Distinctively seize superior initiatives for wireless technologies. Dynamically optimize.</p>
	</div>
	<div class="footer-2">

		<p class="company"><a href="#">COMPANY</a></p>
		<p class="footer2-list"><a href="#">Home</a></p>
		<p class="footer2-list"><a href="#">Shop</a>
		<p class="footer2-list"><a href="#">About</a></p>
		<p class="footer2-list"><a href="#">How It Works</a></p>
		<p class="footer2-list"><a href="#">Contact</a></p>

	</div>
	<div class="footer-2" style="margin-left:129px;">
		<p class="company"><a href="#">INFORMATION</a></p>
		<p class="footer2-list"><a href="#">Tearms & Condition</a>
		</p>
		<p class="footer2-list"><a href="#">Privacy Policy</a>
		</p>
		<p class="footer2-list"><a href="#">How to Buy</a>
		</p>
		<p class="footer2-list"><a href="#">How to Sell</a>
		</p>
		<p class="footer2-list"><a href="#">Promotion</a></p>
	</div>
	<div class="footer-2">
		<p class="company"><a href="#">SHOP CATEGORY</a></p>
		<p class="footer2-list"><a href="#">Men</a></p>
		<p class="footer2-list"><a href="#">Women</a></p>
		<p class="footer2-list"><a href="#">Child</a></p>
		<p class="footer2-list"><a href="#">Apparel</a></p>
		<p class="footer2-list"><a href="#">Brows All</a></p>
	</div>
</div>
<footer>
	<div class="copyright">
		<p>&#169; 2017 Brand  All Rights Reserved.</p>
	</div>
	<div class="online">
		<a href="#" class="facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a>
		<a href="#" class="twit"><i class="fa fa-twitter" aria-hidden="true" style="color:white"></i></a>
		<a href="#" class="inst"><i class="fa fa-instagram" aria-hidden="true"></i></a>
		<a href="#" class="gmail"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
	</div>
</footer>
</body>

</html>