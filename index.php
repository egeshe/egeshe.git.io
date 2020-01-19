
<?php 

	require_once 'db_connect.php';
	
?>
<html lang = "en">

<head>
	<meta charset = "utf-8">
	<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
	<link href="style.css" rel="stylesheet" type="text/css" media="all" />
	<title>Jmih Shop Inc.</title>
	
	<script src="js/modernizr.js"></script>
	<script src="js/jquery-2.1.1.js"></script>
	<script src="js/main.js"></script>
	<link href="jqcart.css" rel="stylesheet" type="text/css">
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/jqcart.min.js"></script>

					<script>
						$(function() {
							'use strict';
							// инициализация плагина
							$.jqCart({
								buttons: '.product-buttons',        // селектор кнопок, аля "Добавить в корзину"
								handler: 'handler.php', // путь к обработчику
								visibleLabel: false,         // показывать/скрывать ярлык при пустой корзине (по умолчанию: false)
								openByAdding: false,         // автоматически открывать корзину при добавлении товара (по умолчанию: false)
								currency: 'рублей',          // валюта: строковое значение, мнемоники (по умолчанию "$")
								cartLabel: '.label-place'    /* селектор элемента, где будет размещен ярлык, 
																он же - "кнопка" для открытия корзины */
							});
							
							// дополнительные методы
							$.jqCart('openCart'); // открыть корзину
							$.jqCart('clearCart'); // очистить корзину
						});
					</script>

</head>

<body>

	<header>
		<div class = "wrap">
			<div class = "header">
				<div class = "logo">
					<a href = "index.php"><img src = "images/logo.gif" alt = ""/></a>
				</div>
				<div class = "nav">
					<nav class = "nav" tabindex='1'>
					<ul>
						<li class = "active"><a href = "index.php">Товары</a></li>
						<li class = ""><a href = "lifestyle.php">Лайфстайл</a></li>
						<li class = ""><a href = "job.html">Работа</a></li>
						<li class = ""><a href = "map.html">Филиалы</a></li>
						<div class="label-place"></div>
					</ul>
					</nav>
				</div>
				<div class = "clear"></div>
			</div>
		</div>
	</header>

	<main>
		
		<section class = "Jmih_background">
			<div class = "wrap">
				<div class = "Jmih_text">
					<h2>Жмых Shop</h2>
					<p>
					Меняем правила и себя
					</p>
				</div>
			</div>
		</section>
		
		<section class = "Jmih_search">
			<div id = "content-left">
				<div class = "categories">
					<ul>
						<li class = ""><a href = "" class="active" data-filter = "*">Все товары</a></li>
						<li class = ""><a href = "" data-filter = ".Neck">Шея</a></li>
						<li class = ""><a href = "" data-filter = ".Ears&Nose">Уши/Нос</a></li>
						<li class = ""><a href = "" data-filter = ".Wrist">Запястье</a></li>
					</ul>
				</div>
			</div>
		</section>
		
		<section class = "Jmih_products">
			<div id = "content-right">
				<ul class = "products clear">

				
					<?php
					
						$link = mysqli_connect($host, $user, $pass, $database) or die("Ошибка " . mysqli_error($link));
						$query = "SELECT * FROM products";
						$result = mysqli_query($link, $query);
						
							if($result)
							{
								$rows = mysqli_num_rows($result);
								

								do
								{
									echo ("
									
									<li class = 'product-wrapper'>
										<a href = 'product.php?id=".$row['ID']."' class = 'product'>
											<div class = 'product-photo'>
												<img src = 'images/".$row['Image']."'>
											</div>
											<h2>".$row['Title']."</h2>
											<p>".$row['Description']."</p>
											<p class = 'product-price'>".$row['Price']." рублей</p>
										</a>
									</li>
									
									");
									
								}
									while ($row = mysqli_fetch_array($result));
									mysqli_free_result($result);
							}
					
					?>
				
				</ul>
				
				<div class = "product-main-preview">
					<div id = "product-left">
						<img src = "images/Gladier.jpg" alt = ""/>
					</div>
				
					<div id = "product-right">
						<div class = "product-text">
								<h2>Гладье</h2>
								<p>100 бачей</p>
								<br>
								<p>Пажилое гладье от деда, которое тот сделал на заводе в Самаре. Современные дизайнеры, такие, как Гоша Рубчинский, Dolce&Gabbana, Versace, Prada, оценивают стоимость этой вещи в миллионы долларов.</p>
								<hr>
								<p>
									<select id = "product-text-size" name="select" name="q" placeholder="Выберите Размер">
									<option selected value="s0">Выберите размер</option>
									<option value="s1">S</option>
									<option value="s2">M</option>
									<option value="s3">L</option>
									</select>
								</p>
								<hr>
						
							<a href = ""><div class = "product-buttons">Приобрести</div></a>
							<a href = ""><div class = "product-buttons">В корзину</div></a>
						</div>
						<a href="#0" class="cd-close">Close</a>
					</div>
				</div>
				
				
			</div>
		</section>
	</main>
	
	<footer>
		<div class = "wrapper">
			<div id='footer_text'>
				<div>
					<img src='images/2020.png' id='established'>
				</div>
				<div>DEVELOPED IN THE DESIGN AREA | <a href = "">CONTACT US</a>
					<br><span class = "address"><a href = ""></a>1488 DONBASS STREET, <br>SAMARA, SA 2281488</a> | 
					<a href = "tel:228-1488">228-1488</a></span>
					<br><div class = "line"></div>
					<span id = "designby">DESIGN BY <a href = "">Egeshe Lincoln</a></span>
				</div>
				<div>
					<img src='images/mapSamara.png' id='texas_mini'>
				</div>
			</div>
		</div>
	</footer>

</body>


</html>