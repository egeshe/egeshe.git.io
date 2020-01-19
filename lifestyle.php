
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
						<li class = ""><a href = "index.php">Товары</a></li>
						<li class = "active"><a href = "lifestyle.php">Лайфстайл</a></li>
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
		

		
		<section class = "Jmih_products">
			<div id = "content-center">
				<ul class = "products clear">
				
					<?php
					
						$link = mysqli_connect($host, $user, $pass, $database) or die("Ошибка " . mysqli_error($link));
						$query = "SELECT * FROM lifestyle";
						$result = mysqli_query($link, $query);
						
							if($result)
							{
								$rows = mysqli_num_rows($result);
								

								do
								{
									echo ("

										<li class = 'product-wrapper'>
											<a href = 'lifestyle-product.php?id=".$row['ID']."' class = 'product'>
												<div class = 'product-photo'>
													<img src = 'images/lifestyle/".$row['Main_Image']."'>
													<div class = 'product-info'>
														<div class = 'product-info-text'>
															<p>Fashion</p>
															<h2>".$row['Style_Name']."</h2>
														</div>
													</div>
												</div>
											</a>
										</li>
										
									");
									
								}
									while ($row = mysqli_fetch_array($result));
									mysqli_free_result($result);
							}
					
					?>
					
					
				</ul>
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