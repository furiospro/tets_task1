<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>BRAND</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="/img/Group%202.png" rel="shortcut icon">
	<link rel="stylesheet" href="/node_modules/normalize.css/normalize.css">
	<link rel="stylesheet" href="/font-awesome/css/font-awesome.min.css">
	<!--<link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">-->
	<link rel="stylesheet" href="/css/style.css">

	<!--<link rel="stylesheet" href="/css/test-css.css">-->
	<script src="/bower_components/jquery/dist/jquery.slim.min.js"></script>
	<script src="/bower_components/jquery/dist/jquery.min.js"></script>
	<script src="/bootstrap/js/bootstrap.min.js"></script>
	<script src="/js/test.js"></script>
	<script src="/js/basket.js"></script>
	<script src="/js/dropmenu.js"></script>
	<script src="/js/animation.js"></script>
	<script src="/js/ajax.js"></script>
	<script>
		$(document).ready(function () {

			$('.nav').on('click', 'a',function () {
					$('.nav a').toggleClass('active', false);
					$(this).toggleClass('active',true);
				}
			);

			$('.button').on('mouseup', function () {
				console.log('mouseup');
				$(document).off('click');
				$(document).off('mousemove');
				$(document).off('mouseover');
				if($('.formbox_hidden').hasClass('formbox')){
					console.log('formbox');
					$('.formbox_hidden').toggleClass('formbox',false);
				}else {
					$('.formbox_hidden').toggleClass('formbox',true);
				}

				clickHidden($('.formbox_hidden'), 'formbox');
				$('.formbox').on('mouseover',function()
				{
					console.log('class formbox');
					boxHidden($('.formbox_hidden'), 'formbox', 33);
				});

			});

		});

		$(document).ready(function () {


			$('.nav').on('click', 'a',function () {
					$('.nav a').toggleClass('active', false);
					$(this).toggleClass('active',true);
				}
			);


			$(document).on('click', function () {
				$('.show').removeClass('show');
			});

			function clearSelection() {
				if (window.getSelection) {
					window.getSelection().removeAllRanges();
				} else { // старый IE
					document.selection.empty();
				}
			}
			$('.price_range').on('mousemove',clearSelection);

			var myrangeSlide = {
				widthRange :  parseFloat($('.range').css('width')),
				option: [50,400],//диапазон выбора

				d : function(j){

					slide(j,this);
				}
			};



			myrangeSlide.d($('.range'));


			$('.aside_container nav')
				.css('overflow','hidden');
//moveBlock(Elem,visible(true or false),color[](active, disactive),time(duration))
			expandBlock('.category','.category_nav',false,{
				'0': '#ef5b70',
				'1': '#6f6e6e'
			},1);
			expandBlock('.brand','.brand_nav',false,{
				'0': '#ef5b70',
				'1': '#6f6e6e'
			},1);
			expandBlock('.designer','.designer_nav',false,{
				'0': '#ef5b70',
				'1': '#6f6e6e'
			},1);
			var drop = new DropMenu('.sort_settings_2');
			drop.render();
		});

	</script>
</head>
<body>
<?php

 if(isset($_SESSION['arrGoods'])){

			$count =0;
			$total =0;
			$price =0;
			$totalCount=0;
			for($i=0;$i<count($_SESSION['arrGoods']);$i++){
				$count = (int)$_SESSION['arrGoods'][$i]['quantity'];
				$price = (float)$_SESSION['arrGoods'][$i]['price'];
				$price = $count*$price;
				$total += $price;
				$totalCount += $count;
			}
}
?>







<div class="header row">
	<div class="container box-flex col">

		<div class="box-flex_1">
			<a href="main" class="logo">
				<img src="/img/Group%202.png" alt="logo"><div class="text">BRAN<span class="textlogo">D</span></div>
			</a>
			<div class="browse">
				<div class="browse-1">
					<div>Browse</div>
					<span class="point-1"></span>
				</div>
				<form action="http://maket2.ru:82/public" method="post">
					<input type="text" name="search" placeholder="Search for item..." class="input_main" >
					<button type="submit" name="search" value="" class="search"><img src="/img/search.png"></button></form>
			</div>
		</div>

		<div class="box-flex_2">
			<div class="basket">
			<span>В корзине <span class="count_goods"><?php if(isset($totalCount)){
						echo $totalCount;

					}else {
						echo 0;}?>
			</span> товаров</span>
				<span>На сумму: <span class="total"><?php if(isset($total)){
							echo round($total,1);}else{echo 0;} ?></span> руб.</span>

			</div>
			<p><i class="fa fa-shopping-cart" aria-hidden="true" onclick="showBasket()"></i></p>
			<div class="button">
				<div class="my-acc"><?php
					if(\components\Auth::getLogin()){echo \components\Auth::getLogin();} else {echo 'My Account';}
					?></div>
				<div class="point"></div>
			</div>

		</div>
	</div>
</div>
<div class="container">
	<div class="formbox_hidden">
		<?php if(\components\Auth::check()): ?>
			<form method="post" name="logout">
				<a style="height: 25px;
    background: #e8e8e8; cursor:pointer" onclick="logOut()">Выйти</a>
			</form><?else:?>
		<form name="auth" style="
    display: flex;
    flex-direction: column;
    width: inherit;
    margin: auto 0;
    padding: 10px;
">
			<input type="text" id="login" name="login" placeholder="Inter your login..." class="field_login">
			<input type="password" id="pass" name="pass" placeholder="Inter your password..." class="field_pass">
			<div class="field_submit_checkbox">
				<a name="submit" class="authbutton" onclick="Auth()"><span>Войти</span></a>
				<input type="checkbox" name="remember" class="field_checkbox" style="margin-left: 5px;width: 16px;height: 16px;" id="remember">
			</div>
			<input name="reguser" value="Зарегистрироваться" class="authbutton" onclick="regUser()">
		</form>
		<?php endif; ?>
	</div>
	<div class="nav">
		<ul>
			<li><a href="#" class="nav_a active">Home</a></li>
			<li><a href="#" class="nav_a">Man</a></li>
			<li><a href="#" class="nav_a">Women</a></li>
			<li><a href="#" class="nav_a">Kids</a></li>
			<li><a href="#" class="nav_a">Accoseriese</a></li>
			<li><a href="#" class="nav_a">Featured</a></li>
			<li><a href="#" class="nav_a">Hot Deals</a></li>
		</ul>
	</div>
</div>
<?= $content ?>
</body>
</html>
<!--<script>

	$('.total').on('text:changed',function(){
		console.log('change');
	})
</script>