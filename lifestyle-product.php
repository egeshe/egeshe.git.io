
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


		<div id = "lifestyle-product-center">
			<p id = "lifestyle-product-center-fashion">Мода</p>
			
					<?php
					
						$link = mysqli_connect($host, $user, $pass, $database) or die("Ошибка " . mysqli_error($link));
						$id = $_GET['id'];
						$query = "SELECT * FROM lifestyle WHERE ID = '$id'";
						$result = mysqli_query($link, $query);
						
							if($result)
							{
								$rows = mysqli_num_rows($result);
								

								do
								{
									echo ("

										<div id = 'lifestyle-photo-image'>
												<img src = 'images/lifestyle/".$row['Description_Image']."'/>
										</div>
										<div class = 'lifestyle-product-text'>
												
												<h2 id = 'lifestyle-product-text-h2'>".$row['Style_Name']."</h2>
												<br>
												<p id = 'lifestyle-product-text-weight'>".$row['Style_Text']."</p>
												<br>
												<p>".$row['Style_Description']."</p>
												<br>
										
									");
									
								}
									while ($row = mysqli_fetch_array($result));
									mysqli_free_result($result);
							}
					
					?>
					
					
				
			
				<div id = "lifestyle-product-products" class = "lifestyle-product">
					<ul class = "products clear">
						
						<?php
						
							$link = mysqli_connect($host, $user, $pass, $database) or die("Ошибка " . mysqli_error($link));
							
							$query = "SELECT * FROM products ORDER BY RAND() LIMIT 3";
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
														<div class = 'product-info'>
															<h2>".$row['Title']."</h2>
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
				<p>Опубликовано 15 Января</p>
				<p>Продукции может быть не доступна в некоторых магазинах.</p>
				<br>
				
			</div>
			<div class = 'lifestyle-product-center-down'></div>
		</div>


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