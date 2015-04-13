<?php 
if($this->registry->has('theme_options') == false) { 
	header("location: themeinstall/index.php"); 
	exit; 
} 
$theme_options = $this->registry->get('theme_options');
$config = $this->registry->get('config');
require_once( DIR_TEMPLATE.$config->get('config_template')."/lib/module.php" );
$modules = new Modules($this->registry);
?>
<!DOCTYPE html>
<!--[if IE 7]> <html lang="<?php echo $lang; ?>" class="ie7 <?php if($theme_options->get( 'responsive_design' ) == '0') { echo 'no-'; } ?>responsive"> <![endif]-->  
<!--[if IE 8]> <html lang="<?php echo $lang; ?>" class="ie8 <?php if($theme_options->get( 'responsive_design' ) == '0') { echo 'no-'; } ?>responsive"> <![endif]-->  
<!--[if IE 9]> <html lang="<?php echo $lang; ?>" class="ie9 <?php if($theme_options->get( 'responsive_design' ) == '0') { echo 'no-'; } ?>responsive"> <![endif]-->  
<!--[if !IE]><!--> <html lang="<?php echo $lang; ?>" class="<?php if($theme_options->get( 'responsive_design' ) == '0') { echo 'no-'; } ?>responsive"> <!--<![endif]-->  
<head>
	<title><?php echo $title; ?></title>
	<base href="<?php echo $base; ?>" />

	<!-- Meta -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<?php if ($description) { ?>
	<meta name="description" content="<?php echo $description; ?>" />
	<?php } ?>
	<?php if ($keywords) { ?>
	<meta name="keywords" content="<?php echo $keywords; ?>" />
	<?php } ?>
	
	<?php if ($icon) { ?>
	<link href="<?php echo $icon; ?>" rel="icon" />
	<?php } ?>
	<?php foreach ($links as $link) { ?>
	<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
	<?php } ?>
	
	<!-- Google Fonts -->
	<link href='http://fonts.googleapis.com/css?family=Merriweather:400,300italic,300,400italic,700,700italic,900,900italic&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Lato:400,300italic,300,700,700italic,900,900italic&subset=latin,latin-ext' rel='stylesheet' type='text/css'>

	<?php 
	if( $theme_options->get( 'font_status' ) == '1' ) {
		$lista_fontow = array();
		if( $theme_options->get( 'body_font' ) != '' && $theme_options->get( 'body_font' ) != 'standard' && $theme_options->get( 'body_font' ) != 'Arial' && $theme_options->get( 'body_font' ) != 'Georgia' && $theme_options->get( 'body_font' ) != 'Times New Roman' ) {
			$font = $theme_options->get( 'body_font' );
			$lista_fontow[$font] = $font;
		}
		
		if( $theme_options->get( 'top_header_font' ) != '' && $theme_options->get( 'top_header_font' ) != 'standard' && $theme_options->get( 'top_header_font' ) != 'Arial' && $theme_options->get( 'top_header_font' ) != 'Georgia' && $theme_options->get( 'top_header_font' ) != 'Times New Roman' ) {
			$font = $theme_options->get( 'top_header_font' );
			if(!isset($lista_fontow[$font])) {
				$lista_fontow[$font] = $font;
			}
		}
		
		if( $theme_options->get( 'categories_bar' ) != '' && $theme_options->get( 'categories_bar' ) != 'standard' && $theme_options->get( 'categories_bar' ) != 'Arial' && $theme_options->get( 'categories_bar' ) != 'Georgia' && $theme_options->get( 'categories_bar' ) != 'Times New Roman' ) {
			$font = $theme_options->get( 'categories_bar' );
			if(!isset($lista_fontow[$font])) {
				$lista_fontow[$font] = $font;
			}
		}
		
		if( $theme_options->get( 'headlines' ) != '' && $theme_options->get( 'headlines' ) != 'standard' && $theme_options->get( 'headlines' ) != 'Arial' && $theme_options->get( 'headlines' ) != 'Georgia' && $theme_options->get( 'headlines' ) != 'Times New Roman' ) {
			$font = $theme_options->get( 'headlines' );
			if(!isset($lista_fontow[$font])) {
				$lista_fontow[$font] = $font;
			}
		}
		
		if( $theme_options->get( 'footer_headlines' ) != '' && $theme_options->get( 'footer_headlines' ) != 'standard'  && $theme_options->get( 'footer_headlines' ) != 'Arial' && $theme_options->get( 'footer_headlines' ) != 'Georgia' && $theme_options->get( 'footer_headlines' ) != 'Times New Roman' ) {
			$font = $theme_options->get( 'footer_headlines' );
			if(!isset($lista_fontow[$font])) {
				$lista_fontow[$font] = $font;
			}
		}
		
		if( $theme_options->get( 'page_name' ) != '' && $theme_options->get( 'page_name' ) != 'standard' && $theme_options->get( 'page_name' ) != 'Arial' && $theme_options->get( 'page_name' ) != 'Georgia' && $theme_options->get( 'page_name' ) != 'Times New Roman' ) {
			$font = $theme_options->get( 'page_name' );
			if(!isset($lista_fontow[$font])) {
				$lista_fontow[$font] = $font;
			}
		}
		
		if( $theme_options->get( 'product_name' ) != '' && $theme_options->get( 'product_name' ) != 'standard' && $theme_options->get( 'product_name' ) != 'Arial' && $theme_options->get( 'product_name' ) != 'Georgia' && $theme_options->get( 'product_name' ) != 'Times New Roman' ) {
			$font = $theme_options->get( 'product_name' );
			if(!isset($lista_fontow[$font])) {
				$lista_fontow[$font] = $font;
			}
		}
		
		if( $theme_options->get( 'button_font' ) != '' && $theme_options->get( 'button_font' ) != 'standard' && $theme_options->get( 'button_font' ) != 'Arial' && $theme_options->get( 'button_font' ) != 'Georgia' && $theme_options->get( 'button_font' ) != 'Times New Roman' ) {
			$font = $theme_options->get( 'button_font' );
			if(!isset($lista_fontow[$font])) {
				$lista_fontow[$font] = $font;
			}
		}
		
		if( $theme_options->get( 'custom_price' ) != '' && $theme_options->get( 'custom_price' ) != 'standard' && $theme_options->get( 'custom_price' ) != 'Arial' && $theme_options->get( 'custom_price' ) != 'Georgia' && $theme_options->get( 'custom_price' ) != 'Times New Roman' ) {
			$font = $theme_options->get( 'custom_price' );
			if(!isset($lista_fontow[$font])) {
				$lista_fontow[$font] = $font;
			}
		}
		
		foreach($lista_fontow as $font) {
			echo '<link href="//fonts.googleapis.com/css?family=' . $font . ':700,600,500,400,300" rel="stylesheet" type="text/css">';
			echo "\n";
		}
	}
	?>
	
	<?php $listcssjs = array(
			'catalog/view/theme/'.$config->get( 'config_template' ).'/css/bootstrap.css',
			'catalog/view/theme/'.$config->get( 'config_template' ).'/css/bootstrap-theme.css',
			'catalog/view/theme/'.$config->get( 'config_template' ).'/css/stylesheet.css',
			'catalog/view/theme/'.$config->get( 'config_template' ).'/css/responsive.css',
			'catalog/view/theme/'.$config->get( 'config_template' ).'/css/slider.css',
			'catalog/view/theme/'.$config->get( 'config_template' ).'/css/menu.css',
			'catalog/view/theme/'.$config->get( 'config_template' ).'/css/font-awesome.min.css',
			'catalog/view/theme/'.$config->get( 'config_template' ).'/css/magnific-popup.css',
			'catalog/view/theme/'.$config->get( 'config_template' ).'/css/jquery-ui.css',
			'catalog/view/theme/'.$config->get( 'config_template' ).'/css/notification.css',
			'catalog/view/theme/'.$config->get( 'config_template' ).'/css/owl.carousel.css',
			'catalog/view/theme/'.$config->get( 'config_template' ).'/css/carousel.css'
	); 
		
	if($theme_options->get( 'page_width' ) == 1) {
		$listcssjs[] = 'catalog/view/theme/'.$config->get( 'config_template' ).'/css/wide-grid.css';
	} 
	
	if($theme_options->get( 'page_width' ) == 3) {
		$listcssjs[] = 'catalog/view/theme/'.$config->get( 'config_template' ).'/css/standard-grid.css';
	} 
?>
		
	<?php echo $theme_options->compressorCodeCss( $config->get( 'config_template' ), $listcssjs, 0, HTTP_SERVER ); ?>

	
	<?php if($theme_options->get( 'custom_code_css_status' ) == 1) { ?>
	<link rel="stylesheet" href="catalog/view/theme/<?php echo $config->get( 'config_template' ); ?>/skins/store_<?php echo $theme_options->get( 'store' ); ?>/<?php echo $theme_options->get( 'skin' ); ?>/css/custom_code.css">
	<?php } ?>
	
	<!--[if IE 8]>
		<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $config->get( 'config_template' ); ?>/css/ie8.css" />
	<![endif]-->

	
	<?php if($theme_options->get( 'page_width' ) == 2 && $theme_options->get( 'max_width' ) > 900) { ?>
	<style type="text/css">
		.standard-body .full-width .container {
			max-width: <?php echo $theme_options->get( 'max_width' ); ?>px;
			<?php if($theme_options->get( 'responsive_design' ) == '0') { ?>
			width: <?php echo $theme_options->get( 'max_width' ); ?>px;
			<?php } ?>
		}
		
		.standard-body .fixed .background,
		.main-fixed {
			max-width: <?php echo $theme_options->get( 'max_width' )-40; ?>px;
			<?php if($theme_options->get( 'responsive_design' ) == '0') { ?>
			width: <?php echo $theme_options->get( 'max_width' )-40; ?>px;
			<?php } ?>
		}
	</style>
	<?php } ?>
    
    <?php $listcssjs = array(
    		'catalog/view/theme/'.$config->get( 'config_template' ).'/js/jquery.min.js',
    		'catalog/view/theme/'.$config->get( 'config_template' ).'/js/jquery-migrate-1.2.1.js',
    		'catalog/view/theme/'.$config->get( 'config_template' ).'/js/jquery-ui.js',
    		'catalog/view/theme/'.$config->get( 'config_template' ).'/js/bootstrap.min.js',
    		'catalog/view/theme/'.$config->get( 'config_template' ).'/js/twitter-bootstrap-hover-dropdown.js',
    		'catalog/view/theme/'.$config->get( 'config_template' ).'/js/jquery.themepunch.plugins.min.js',
    		'catalog/view/theme/'.$config->get( 'config_template' ).'/js/jquery.themepunch.revolution.min.js',
    		'catalog/view/theme/'.$config->get( 'config_template' ).'/js/common.js',
    		'catalog/view/theme/'.$config->get( 'config_template' ).'/js/jquery.cookie.js',
    		'catalog/view/theme/'.$config->get( 'config_template' ).'/js/jquery.magnific-popup.min.js',
    		'catalog/view/theme/'.$config->get( 'config_template' ).'/js/jquery.elevateZoom-3.0.3.min.js',
			'catalog/view/theme/'.$config->get( 'config_template' ).'/js/modernizr.js',
			'catalog/view/theme/'.$config->get( 'config_template' ).'/js/notify.js',
			'catalog/view/theme/'.$config->get( 'config_template' ).'/js/owl.carousel.min.js',
			'catalog/view/theme/'.$config->get( 'config_template' ).'/js/jquery.jcarousel.min.js'
    ); ?>
    	
     <?php echo $theme_options->compressorCodeJs( $config->get( 'config_template' ), $listcssjs, 0, HTTP_SERVER ); ?>
	
	<script type="text/javascript">
	var transition = 'slide';
	var animation_time = 300;
	
	var checkout_url = '<?php echo $checkout; ?>';
	var responsive_design = '<?php if($theme_options->get( 'responsive_design' ) == '0') { echo 'no'; } else { echo 'yes'; } ?>';
	</script>
	<?php foreach ($scripts as $script) { ?>
	<?php if($script == 'catalog/view/javascript/jquery/nivo-slider/jquery.nivo.slider.pack.js') { ?>
	<script type="text/javascript" src="catalog/view/theme/<?php echo $config->get( 'config_template' ); ?>/js/jquery.nivo.slider.pack.js"></script>
	<?php } else { ?>
	<script type="text/javascript" src="<?php echo $script; ?>"></script>
	<?php } ?>
	<?php } ?>
	<?php if($theme_options->get( 'custom_code_javascript_status' ) == 1) { ?>
	<script type="text/javascript" src="catalog/view/theme/<?php echo $config->get( 'config_template' ); ?>/skins/store_<?php echo $theme_options->get( 'store' ); ?>/<?php echo $theme_options->get( 'skin' ); ?>/js/custom_code.js"></script>
	<?php } ?>
	

	<?php echo $google_analytics; ?>    
	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<script src="catalog/view/theme/<?php echo $config->get( 'config_template' ); ?>/js/respond.min.js"></script>
	<![endif]-->
</head>	
<body>



<div id="quickview" class="modal fade bs-example-modal-lg">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Product</h4>
            </div>
            <div class="modal-body">
                <p></p>
            </div>
        </div>
    </div>
</div>

<?php if($theme_options->get( 'quick_view' ) == 1) { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/magnific/magnific-popup.css" media="screen" />
<script type="text/javascript" src="catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js"></script>
<script type="text/javascript">
	$('body').on('click', '.quickview a', function () {
		$('#quickview .modal-header .modal-title').html($(this).attr('title'));
		$('#quickview .modal-body').load($(this).attr('rel') + ' #quickview_product' ,function(result){
		    $('#quickview').modal('show');
		    $('#quickview .popup-gallery').magnificPopup({
		    	delegate: 'a',
		    	type: 'image',
		    	tLoading: 'Loading image #%curr%...',
		    	mainClass: 'mfp-img-mobile',
		    	gallery: {
		    		enabled: true,
		    		navigateByImgClick: true,
		    		preload: [0,1] // Will preload 0 - before current, and 1 after the current image
		    	},
		    	image: {
		    		tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',
		    		titleSrc: function(item) {
		    			return item.el.attr('title');
		    		}
		    	}
		    });
		});
		return false;
	});
	
	$('#quickview').on('click', '#button-cart', function () {
		$('#quickview').modal('hide');
		cart.add($(this).attr("rel"));
	});
</script>
<?php } ?>
<div class="<?php if($theme_options->get( 'main_layout' ) == 2) { echo 'fixed-body'; } else { echo 'standard-body'; } ?>">
		<div id="main" class="<?php if($theme_options->get( 'main_layout' ) == 2) { echo 'main-fixed'; } else { echo 'full-width'; } ?>">

		
		
		<header>
			<div id="top-line">
				<div class="container">
					<div class="row">

						
						<div class="col-sm-6 hidden-xs">
							<div id="welcome">
								<?php if($theme_options->get( 'welcome_text', $config->get( 'config_language_id' ) ) != '') { echo html_entity_decode($theme_options->get( 'welcome_text', $config->get( 'config_language_id' ) )); } else { echo 'Call us: +795 100-666-888'; } ?>
							</div>
						</div>
				  
						<div class="col-sm-6 col-xs-12 hidden-xs">
							
								<div class="quick-access">
									
								
									<div class="dropdown  my-account tg-account hidden-xs hidden-sm">
										<div id="my-account">
											<div class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
												<?php echo $text_login; ?>
											</div>
											
											<ul class="dropdown-menu"  role="menu">
												<?php if ($logged) { ?>
												<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
												<li><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a></li>
												<li><a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a></li>
												<li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
												<li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
												<?php } else { ?>
												<li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
												<li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
												<li><a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a></li>
												<li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
												<?php } ?>
											</ul>	
										</div>	
									</div>
									
									
									<div class="dropdown  my-account currency">
										<?php echo $currency; ?>
									</div>

									<div class="dropdown  my-account language">
										<?php echo $language; ?>
									</div>
									
									<div class="dropdown tg-search hidden-xs">
										<div id="tg-search">
											<div class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
												<span class="fa fa-search search-icon"></span><?php if($theme_options->get( 'search_text', $config->get( 'config_language_id' ) ) != '') { echo html_entity_decode($theme_options->get( 'search_text', $config->get( 'config_language_id' ) )); } else { echo 'Search'; } ?>
											</div>
											
											<ul class="dropdown-menu keep_open">
												<li>
												
													
													<div id="search">
														<input type="text" name="search" placeholder="<?php if($theme_options->get( 'search_text', $config->get( 'config_language_id' ) ) != '') { echo html_entity_decode($theme_options->get( 'search_text', $config->get( 'config_language_id' ) )); } else { echo 'Search'; } ?>" value="" />
														<span class="button-search fa fa-search"></span>
													
												</li>
											</ul>	
											
											
											
										</div>	
									</div>

									<?php echo $cart; ?>	
	
								</div>		
						</div>
						
						<div class="visible-xs col-xs-12" style="text-align:center;display:inline-block;">
							<div class="my-account"	style="display:inline-block!important;">
										<?php echo $currency; ?>
									</div>
							<div class="my-account"	style="display:inline-block!important;">
										<?php echo $language; ?>
							</div>
							
							<div id="my-login" style="display:inline-block!important;">
								<a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
							</div>	
						</div>
						
						
					</div>
				</div>	
			</div>
			
			<div id="header">	
				<div class="container">
					<div class="row">
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 logo-inner">
							<div class="logo-store" >
								<a href="<?php echo $home; ?>">
									<img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" />
								</a>
							</div>
						</div>
						
						<?php 
							if($this->registry->has('theme_options') == true) { 
								require_once( DIR_TEMPLATE.$config->get('config_template')."/lib/module.php" );
								$modules = new Modules($this->registry);
								$language_id = $config->get( 'config_language_id' );
								$customfooter = $theme_options->get( 'customfooter' );
						?>
						<?php } ?>	

					<div class="visible-xs col-xs-12" style="text-align:center;display:inline-block; margin-bottom:20px;">
						<div id="megaMenuToggle">
							<div class="megamenuToogle-wrapper">
								<div class="megamenuToogle-pattern">
									<div class="container">
										<span class="fa fa-bars"></span>
									</div>
								</div>
							</div>
						</div>
						
						<a href="<?php echo $shopping_cart; ?>">
						<div class="tg-search" style="display:inline-block;">
							<span class="fa fa-shopping-cart"></span>
						</div>	
						</a>
						<div class="tg-search" style="display:inline-block;">
										<div id="tg-search2">
											<div class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
												<span class="fa fa-search"></span>
											</div>
											
											<ul class="dropdown-menu keep_open">
												<li>
												
												<div id="search">
														<input type="text" name="search2" placeholder="<?php if($theme_options->get( 'search_text', $config->get( 'config_language_id' ) ) != '') { echo html_entity_decode($theme_options->get( 'search_text', $config->get( 'config_language_id' ) )); } else { echo 'Search'; } ?>" value="" />
														<span class="button-search2 fa fa-search"></span>
												</li>
											</ul>	
										</div>	
						</div>	
						
					
					</div>	
						
						
						<?php 
					$menu = $modules->getModules('menu');
					if( count($menu) ) {
						foreach ($menu as $module) {
							echo $module;
						}
					} elseif($categories) {
					?>
					<div class="container-megamenu horizontal">
						
						<div class="megamenu-wrapper">
							<div class="megamenu-pattern">
								<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12" style="padding-left: 0px; padding-right: 0px;">
										<div class="menu-holder">
											<ul class="megamenu">
												
												<?php foreach ($categories as $category) { ?>
												<?php if ($category['children']) { ?>
												<li class="with-sub-menu hover"><p class="close-menu"></p>
													<a href="<?php echo $category['href'];?>"><span><strong><?php echo $category['name']; ?></strong></span></a>
												<?php } else { ?>
												<li>
													<a href="<?php echo $category['href']; ?>"><span><strong><?php echo $category['name']; ?></strong></span></a>
												<?php } ?>
													<?php if ($category['children']) { ?>
													<?php 
														$width = '100%';
														$row_fluid = 3;
														if($category['column'] == 1) { $width = '220px'; $row_fluid = 12; }
														if($category['column'] == 2) { $width = '500px'; $row_fluid = 6; }
														if($category['column'] == 3) { $width = '700px'; $row_fluid = 4; }
													?>
													<div class="sub-menu" style="width: <?php echo $width; ?>">
														<div class="content">
															<div class="row hover-menu">
																<?php for ($i = 0; $i < count($category['children']);) { ?>
																<div class="col-sm-<?php echo $row_fluid; ?>">
																	<div class="menu">
																		<ul>
																		  <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
																		  <?php for (; $i < $j; $i++) { ?>
																		  <?php if (isset($category['children'][$i])) { ?>
																		  <li><a href="<?php echo $category['children'][$i]['href']; ?>" onclick="window.location = '<?php echo $category['children'][$i]['href']; ?>';"><?php echo $category['children'][$i]['name']; ?></a></li>
																		  <?php } ?>
																		  <?php } ?>
																		</ul>
																	</div>
																</div>
																<?php } ?>
															</div>
														</div>
													</div>
													<?php } ?>
												</li>
												<?php } ?>
											</ul>
										</div>
								</div>
							</div>
						</div>
					</div>
					<?php
					}
					?>
					
					

							
						
						
	
					</div>
				</div>
			</div>	
			
			
			
			
					
		<?php $slideshow = $modules->getModules('slideshow'); ?>
	<?php  if(count($slideshow)) { ?>
	<!-- Slider -->
	<div id="slider" class="full-width slider-bottom">
				<?php foreach($slideshow as $module) { ?>
				<?php echo $module; ?>
				<?php } ?>
	</div>
	<?php } ?>			

	
</header>
