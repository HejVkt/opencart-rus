<!DOCTYPE html>
<?php /*
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<!--<![endif]-->
*/ ?>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>

<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />


<link href="catalog/view/theme/themesly/stylesheet/stylesheet.css" rel="stylesheet">

<script src="catalog/view/theme/themesly/javascript/superfish.js" type="text/javascript"></script>
<link href="catalog/view/theme/themesly/stylesheet/superfish.css" rel="stylesheet">

<script src="catalog/view/theme/themesly/javascript/camera.js" type="text/javascript"></script>
<link href="catalog/view/theme/themesly/stylesheet/camera.css" rel="stylesheet">

<link href='http://fonts.googleapis.com/css?family=Oswald:400,700' rel='stylesheet' type='text/css'>

<?php foreach ($styles as $style) { ?>
    <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>


<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>

<body class="common-home">

<div class="bottom-space">
    <div class="outer">
        <form action="http://livedemo00.template-help.com/opencart_41345/index.php?route=module/currency" method="post" enctype="multipart/form-data">
            <div id="currency"><span>
    Currency</span>
                <a title="Euro" onClick="$('input[name=\'currency_code\']').attr('value', 'EUR').submit(); $(this).parent().parent().submit();"><span>€</span></a>
                <a title="Pound Sterling" onClick="$('input[name=\'currency_code\']').attr('value', 'GBP').submit(); $(this).parent().parent().submit();"><span>£</span></a>
                <a title="US Dollar"><span class="act">$</span></a>
                <input type="hidden" name="currency_code" value=""/>
                <input type="hidden" name="redirect" value="/"/>
            </div>
        </form>
        <div class="clear"></div>
    </div>

    <div class="main-shining">
        <div class="row-1">
            <div id="header">
                <div id="logo"><a href="http://livedemo00.template-help.com/opencart_41345/index.php?route=common/home"><img src="http://livedemo00.template-help.com/opencart_41345/image/data/logo.png" title="Underwear online store" alt="Underwear online store"/></a></div>
                <div class="header-top1">
                    <ul class="links">
                        <li><a class="" href="http://livedemo00.template-help.com/opencart_41345/index.php?route=account/wishlist" id="wishlist-total">Wish list <span>(0)</span></a></li>
                        <li><a class="" href="http://livedemo00.template-help.com/opencart_41345/index.php?route=account/account">My account</a></li>
                        <li><a class="" href="http://livedemo00.template-help.com/opencart_41345/index.php?route=checkout/cart">Shopping cart</a></li>
                        <li><a class="" href="http://livedemo00.template-help.com/opencart_41345/index.php?route=checkout/checkout">Checkout</a></li>
                    </ul>
                    <div class="clear"></div>
                    <div class="cart-position">
                        <div class="cart-inner">
                            <div id="cart">
                                <div class="heading">
                                    <a>
                                        <b>Cart :&nbsp;</b>
                                        <span class="sc-button"></span>
                                        <span id="cart-total">0 item(s) - <strong>$0.00</strong></span>
                                        <span class="clear"></span>
                                    </a>
                                </div>

                                <div class="content">
                                    <div class="empty">Your shopping cart is empty!</div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div id="welcome">
                        Welcome visitor you can <a style="color: rgb(255, 0, 0);" href="/index.php?route=account/login">Вход</a> или <a style="color: rgb(255, 0, 0);" href="/index.php?route=account/register">Зарегистрироваться</a>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
            </div>
            <div id="menu">
                <div id="search"><?php echo $search; ?></div>

                <ul class="menu">
                    <li class="cat_1">
                        <a href="http://livedemo00.template-help.com/opencart_41345/index.php?route=product/category&amp;path=25">Swimwear</a>
                        <ul>
                            <li>
                                <a class="screenshot1" href="http://livedemo00.template-help.com/opencart_41345/index.php?route=product/category&amp;path=25_30">Ctetur adipisicing </a>
                            </li>
                            <li>
                                <a class="screenshot1" href="http://livedemo00.template-help.com/opencart_41345/index.php?route=product/category&amp;path=25_29">Lorem ipsum dolor</a>
                            </li>
                            <li>
                                <a class="screenshot1" href="http://livedemo00.template-help.com/opencart_41345/index.php?route=product/category&amp;path=25_28">Sit amet conse </a>
                                <ul>
                                    <li>
                                        <a href="http://livedemo00.template-help.com/opencart_41345/index.php?route=product/category&amp;path=25_28_36">Dolore magna aliqua</a>
                                    </li>
                                    <li>
                                        <a href="http://livedemo00.template-help.com/opencart_41345/index.php?route=product/category&amp;path=25_28_35">Ut labore et </a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a class="screenshot1" href="http://livedemo00.template-help.com/opencart_41345/index.php?route=product/category&amp;path=25_32">Tmpor incididunt </a>
                            </li>
                        </ul>
                    </li>
                    <li class="cat_2">
                        <a href="http://livedemo00.template-help.com/opencart_41345/index.php?route=product/category&amp;path=57">Panties</a>
                    </li>
                    <li class="cat_3">
                        <a href="http://livedemo00.template-help.com/opencart_41345/index.php?route=product/category&amp;path=17">Boxers</a>
                    </li>
                    <li class="cat_4">
                        <a href="http://livedemo00.template-help.com/opencart_41345/index.php?route=product/category&amp;path=20">Briefs</a>
                    </li>
                    <li class="cat_5">
                        <a href="http://livedemo00.template-help.com/opencart_41345/index.php?route=product/category&amp;path=24">Sexy</a>
                    </li>
                    <li class="cat_6">
                        <a href="http://livedemo00.template-help.com/opencart_41345/index.php?route=product/category&amp;path=59">Sleep</a>
                    </li>
                    <li class="cat_7">
                        <a href="http://livedemo00.template-help.com/opencart_41345/index.php?route=product/category&amp;path=60">Thongs</a>
                    </li>
                    <li class="cat_8">
                        <a href="http://livedemo00.template-help.com/opencart_41345/index.php?route=product/category&amp;path=31">Tops</a>
                    </li>
                </ul>
                <div class="clear"></div>
            </div>
        </div>
        <div class="clear"></div>

		<div class="header-modules">
			<div class="bg-1">
				<div id="banner2" class="banner">
					<div><a href="http://livedemo00.template-help.com/opencart_41345/index.php?route=product/category&amp;path=25"><img src="/catalog/view/theme/themesly/image/banner-1-354x185.jpg" alt="" title=""></a></div>
					<div><a href="http://livedemo00.template-help.com/opencart_41345/index.php?route=product/category&amp;path=17"><img src="/catalog/view/theme/themesly/image/banner-2-354x185.jpg" alt="" title=""></a></div>
				</div>
				<script>
/*
					jQuery(function(){
						jQuery('#camera_wrap_0').camera({
							height: '370px',
							fx: 'stampede',
							navigation: false,
							playPause: false,
							thumbnails: true,
							barPosition: 'top',
							loader: false,
							time: 3000,
							transPeriod:800
						});
					});
					*/
				</script>
				<div class="fluid_container" style="width: 670px; height: 370px;">
					<div style="display: block; margin-bottom: 23px; height: 370px;" class="camera_gold_skin camera_wrap" id="camera_wrap_0"><div class="camera_fakehover"><div class="camera_src camerastarted camerasliding">
								<div title="" data-thumb="/catalog/view/theme/themesly/image/slide-3-670x370.jpg" data-link="index.php?route=information/information&amp;information_id=6" data-src="/catalog/view/theme/themesly/image/slide-3-670x370.jpg">
								</div>
								<div title="" data-thumb="/catalog/view/theme/themesly/image/slide-1-670x370.jpg" data-link="index.php?route=product/category&amp;path=83" data-src="/catalog/view/theme/themesly/image/slide-1-670x370.jpg">
								</div>
								<div title="" data-thumb="/catalog/view/theme/themesly/image/slide-2-670x370.jpg" data-link="index.php?route=product/product&amp;product_id=41" data-src="/catalog/view/theme/themesly/image/slide-2-670x370.jpg">
								</div>
								<div title="" data-thumb="/catalog/view/theme/themesly/image/slide-4-670x370.jpg" data-link="index.php?route=product/product&amp;product_id=40" data-src="/catalog/view/theme/themesly/image/slide-4-670x370.jpg">
								</div>
							</div>

							<div class="camera_target">
								<div class="cameraCont">
									<div style="visibility: visible; display: none; z-index: 1;" class="cameraSlide cameraSlide_0">
										<img data-portrait="" data-alignment="" style="visibility: visible; height: 370px; margin-left: 0px; margin-top: 0px; position: absolute; width: 670px;" class="imgLoaded" src="/catalog/view/theme/themesly/image/slide-3-670x370_002.jpg" height="370" width="670">
										<div style="width: 670px; height: 370px;" class="camerarelative"></div>
									</div>
									<div style="display: none; z-index: 1;" class="cameraSlide cameraSlide_1">
										<img data-portrait="" data-alignment="" style="visibility: visible; height: 370px; margin-left: 0px; margin-top: 0px; position: absolute; width: 670px;" class="imgLoaded" src="/catalog/view/theme/themesly/image/slide-1-670x370.jpg" height="370" width="670">
										<div style="width: 670px; height: 370px;" class="camerarelative"></div>
									</div>
									<div style="display: block; z-index: 999;" class="cameraSlide cameraSlide_2 cameracurrent">
										<img data-portrait="" data-alignment="" style="visibility: visible; height: 370px; margin-left: 0px; margin-top: 0px; position: absolute; width: 670px;" class="imgLoaded" src="/catalog/view/theme/themesly/image/slide-2-670x370.jpg" height="370" width="670">
										<div style="width: 670px; height: 370px;" class="camerarelative"></div>
									</div>
									<div style="display: none; z-index: 1;" class="cameraSlide cameraSlide_3 cameranext">
										<img data-portrait="" data-alignment="" style="visibility: visible; height: 370px; margin-left: 0px; margin-top: 0px; position: absolute; width: 670px;" class="imgLoaded" src="/catalog/view/theme/themesly/image/slide-4-670x370_002.jpg" height="370" width="670">
										<div style="width: 670px; height: 370px;" class="camerarelative"></div>
									</div>
									<div style="z-index: 1; display: none;" class="cameraSlide cameraSlide_4 cameranext">
										<div style="width: 670px; height: 370px;" class="camerarelative"></div>
									</div>
									<div class="cameraappended" style="display: block; overflow: hidden; position: absolute; z-index: 1000; height: 3.6797px; left: 0px; top: 0px; width: 4.42347px; margin-left: -128.754px; margin-top: -71.1032px; opacity: 1;"><div style="z-index: 1; height: 370px; margin-left: 0px; margin-top: 0px; width: 670px;" class="cameraSlide cameraSlide_3 cameranext"><img data-portrait="" data-alignment="" style="visibility: visible; height: 370px; margin-left: 0px; margin-top: 0px; position: absolute; width: 670px;" class="imgLoaded" src="/catalog/view/theme/themesly/image/slide-4-670x370_002.jpg" height="370" width="670"><div style="width: 670px; height: 370px;" class="camerarelative"></div></div></div><div class="cameraappended" style="display: block; overflow: hidden; position: absolute; z-index: 1000; height: 3.6797px; left: 112px; top: 0px; width: 4.42347px; margin-left: -386.263px; margin-top: -71.1032px; opacity: 1;"><div style="z-index: 1; height: 370px; margin-left: -112px; margin-top: 0px; width: 670px;" class="cameraSlide cameraSlide_3 cameranext"><img data-portrait="" data-alignment="" style="visibility: visible; height: 370px; margin-left: 0px; margin-top: 0px; position: absolute; width: 670px;" class="imgLoaded" src="/catalog/view/theme/themesly/image/slide-4-670x370_002.jpg" height="370" width="670"><div style="width: 670px; height: 370px;" class="camerarelative"></div></div></div><div class="cameraappended" style="display: block; overflow: hidden; position: absolute; z-index: 1000; height: 3.6797px; left: 224px; top: 0px; width: 4.42347px; margin-left: 128.754px; margin-top: 142.206px; opacity: 1;"><div style="z-index: 1; height: 370px; margin-left: -224px; margin-top: 0px; width: 670px;" class="cameraSlide cameraSlide_3 cameranext"><img data-portrait="" data-alignment="" style="visibility: visible; height: 370px; margin-left: 0px; margin-top: 0px; position: absolute; width: 670px;" class="imgLoaded" src="/catalog/view/theme/themesly/image/slide-4-670x370_002.jpg" height="370" width="670"><div style="width: 670px; height: 370px;" class="camerarelative"></div></div></div><div class="cameraappended" style="display: block; overflow: hidden; position: absolute; z-index: 1000; height: 3.6797px; left: 336px; top: 0px; width: 4.42347px; margin-left: -386.263px; margin-top: 142.206px; opacity: 1;"><div style="z-index: 1; height: 370px; margin-left: -336px; margin-top: 0px; width: 670px;" class="cameraSlide cameraSlide_3 cameranext"><img data-portrait="" data-alignment="" style="visibility: visible; height: 370px; margin-left: 0px; margin-top: 0px; position: absolute; width: 670px;" class="imgLoaded" src="/catalog/view/theme/themesly/image/slide-4-670x370_002.jpg" height="370" width="670"><div style="width: 670px; height: 370px;" class="camerarelative"></div></div></div><div class="cameraappended" style="display: block; overflow: hidden; position: absolute; z-index: 1000; height: 3.6797px; left: 448px; top: 0px; width: 4.38433px; margin-left: 0px; margin-top: 0px; opacity: 1;"><div style="z-index: 1; height: 370px; margin-left: -448px; margin-top: 0px; width: 670px;" class="cameraSlide cameraSlide_3 cameranext"><img data-portrait="" data-alignment="" style="visibility: visible; height: 370px; margin-left: 0px; margin-top: 0px; position: absolute; width: 670px;" class="imgLoaded" src="/catalog/view/theme/themesly/image/slide-4-670x370_002.jpg" height="370" width="670"><div style="width: 670px; height: 370px;" class="camerarelative"></div></div></div><div class="cameraappended" style="display: block; overflow: hidden; position: absolute; z-index: 1000; height: 3.6797px; left: 559px; top: 0px; width: 4.38433px; margin-left: -257.509px; margin-top: 142.206px; opacity: 1;"><div style="z-index: 1; height: 370px; margin-left: -559px; margin-top: 0px; width: 670px;" class="cameraSlide cameraSlide_3 cameranext"><img data-portrait="" data-alignment="" style="visibility: visible; height: 370px; margin-left: 0px; margin-top: 0px; position: absolute; width: 670px;" class="imgLoaded" src="/catalog/view/theme/themesly/image/slide-4-670x370_002.jpg" height="370" width="670"><div style="width: 670px; height: 370px;" class="camerarelative"></div></div></div><div class="cameraappended" style="display: block; overflow: hidden; position: absolute; z-index: 1000; height: 3.6797px; left: 0px; top: 93px; width: 4.42347px; margin-left: -257.509px; margin-top: 0px; opacity: 1;"><div style="z-index: 1; height: 370px; margin-left: 0px; margin-top: -93px; width: 670px;" class="cameraSlide cameraSlide_3 cameranext"><img data-portrait="" data-alignment="" style="visibility: visible; height: 370px; margin-left: 0px; margin-top: 0px; position: absolute; width: 670px;" class="imgLoaded" src="/catalog/view/theme/themesly/image/slide-4-670x370_002.jpg" height="370" width="670"><div style="width: 670px; height: 370px;" class="camerarelative"></div></div></div><div class="cameraappended" style="display: block; overflow: hidden; position: absolute; z-index: 1000; height: 3.6797px; left: 112px; top: 93px; width: 4.42347px; margin-left: 128.754px; margin-top: -71.1032px; opacity: 1;"><div style="z-index: 1; height: 370px; margin-left: -112px; margin-top: -93px; width: 670px;" class="cameraSlide cameraSlide_3 cameranext"><img data-portrait="" data-alignment="" style="visibility: visible; height: 370px; margin-left: 0px; margin-top: 0px; position: absolute; width: 670px;" class="imgLoaded" src="/catalog/view/theme/themesly/image/slide-4-670x370_002.jpg" height="370" width="670"><div style="width: 670px; height: 370px;" class="camerarelative"></div></div></div><div class="cameraappended" style="display: block; overflow: hidden; position: absolute; z-index: 1000; height: 3.6797px; left: 224px; top: 93px; width: 4.42347px; margin-left: -386.263px; margin-top: 0px; opacity: 1;"><div style="z-index: 1; height: 370px; margin-left: -224px; margin-top: -93px; width: 670px;" class="cameraSlide cameraSlide_3 cameranext"><img data-portrait="" data-alignment="" style="visibility: visible; height: 370px; margin-left: 0px; margin-top: 0px; position: absolute; width: 670px;" class="imgLoaded" src="/catalog/view/theme/themesly/image/slide-4-670x370_002.jpg" height="370" width="670"><div style="width: 670px; height: 370px;" class="camerarelative"></div></div></div><div class="cameraappended" style="display: block; overflow: hidden; position: absolute; z-index: 1000; height: 3.6797px; left: 336px; top: 93px; width: 4.42347px; margin-left: -257.509px; margin-top: 71.1032px; opacity: 1;"><div style="z-index: 1; height: 370px; margin-left: -336px; margin-top: -93px; width: 670px;" class="cameraSlide cameraSlide_3 cameranext"><img data-portrait="" data-alignment="" style="visibility: visible; height: 370px; margin-left: 0px; margin-top: 0px; position: absolute; width: 670px;" class="imgLoaded" src="/catalog/view/theme/themesly/image/slide-4-670x370_002.jpg" height="370" width="670"><div style="width: 670px; height: 370px;" class="camerarelative"></div></div></div><div class="cameraappended" style="display: block; overflow: hidden; position: absolute; z-index: 1000; height: 3.6797px; left: 448px; top: 93px; width: 4.38433px; margin-left: 0px; margin-top: 142.206px; opacity: 1;"><div style="z-index: 1; height: 370px; margin-left: -448px; margin-top: -93px; width: 670px;" class="cameraSlide cameraSlide_3 cameranext"><img data-portrait="" data-alignment="" style="visibility: visible; height: 370px; margin-left: 0px; margin-top: 0px; position: absolute; width: 670px;" class="imgLoaded" src="/catalog/view/theme/themesly/image/slide-4-670x370_002.jpg" height="370" width="670"><div style="width: 670px; height: 370px;" class="camerarelative"></div></div></div><div class="cameraappended" style="display: block; overflow: hidden; position: absolute; z-index: 1000; height: 3.6797px; left: 559px; top: 93px; width: 4.38433px; margin-left: 257.509px; margin-top: -71.1032px; opacity: 1;"><div style="z-index: 1; height: 370px; margin-left: -559px; margin-top: -93px; width: 670px;" class="cameraSlide cameraSlide_3 cameranext"><img data-portrait="" data-alignment="" style="visibility: visible; height: 370px; margin-left: 0px; margin-top: 0px; position: absolute; width: 670px;" class="imgLoaded" src="/catalog/view/theme/themesly/image/slide-4-670x370_002.jpg" height="370" width="670"><div style="width: 670px; height: 370px;" class="camerarelative"></div></div></div><div class="cameraappended" style="display: block; overflow: hidden; position: absolute; z-index: 1000; height: 3.64056px; left: 0px; top: 186px; width: 4.42347px; margin-left: 0px; margin-top: -71.1032px; opacity: 1;"><div style="z-index: 1; height: 370px; margin-left: 0px; margin-top: -186px; width: 670px;" class="cameraSlide cameraSlide_3 cameranext"><img data-portrait="" data-alignment="" style="visibility: visible; height: 370px; margin-left: 0px; margin-top: 0px; position: absolute; width: 670px;" class="imgLoaded" src="/catalog/view/theme/themesly/image/slide-4-670x370_002.jpg" height="370" width="670"><div style="width: 670px; height: 370px;" class="camerarelative"></div></div></div><div class="cameraappended" style="display: block; overflow: hidden; position: absolute; z-index: 1000; height: 3.64056px; left: 112px; top: 186px; width: 4.42347px; margin-left: -257.509px; margin-top: -71.1032px; opacity: 1;"><div style="z-index: 1; height: 370px; margin-left: -112px; margin-top: -186px; width: 670px;" class="cameraSlide cameraSlide_3 cameranext"><img data-portrait="" data-alignment="" style="visibility: visible; height: 370px; margin-left: 0px; margin-top: 0px; position: absolute; width: 670px;" class="imgLoaded" src="/catalog/view/theme/themesly/image/slide-4-670x370_002.jpg" height="370" width="670"><div style="width: 670px; height: 370px;" class="camerarelative"></div></div></div><div class="cameraappended" style="display: block; overflow: hidden; position: absolute; z-index: 1000; height: 3.64056px; left: 224px; top: 186px; width: 4.42347px; margin-left: -128.754px; margin-top: 71.1032px; opacity: 1;"><div style="z-index: 1; height: 370px; margin-left: -224px; margin-top: -186px; width: 670px;" class="cameraSlide cameraSlide_3 cameranext"><img data-portrait="" data-alignment="" style="visibility: visible; height: 370px; margin-left: 0px; margin-top: 0px; position: absolute; width: 670px;" class="imgLoaded" src="/catalog/view/theme/themesly/image/slide-4-670x370_002.jpg" height="370" width="670"><div style="width: 670px; height: 370px;" class="camerarelative"></div></div></div><div class="cameraappended" style="display: block; overflow: hidden; position: absolute; z-index: 1000; height: 3.64056px; left: 336px; top: 186px; width: 4.42347px; margin-left: 128.754px; margin-top: 0px; opacity: 1;"><div style="z-index: 1; height: 370px; margin-left: -336px; margin-top: -186px; width: 670px;" class="cameraSlide cameraSlide_3 cameranext"><img data-portrait="" data-alignment="" style="visibility: visible; height: 370px; margin-left: 0px; margin-top: 0px; position: absolute; width: 670px;" class="imgLoaded" src="/catalog/view/theme/themesly/image/slide-4-670x370_002.jpg" height="370" width="670"><div style="width: 670px; height: 370px;" class="camerarelative"></div></div></div><div class="cameraappended" style="display: block; overflow: hidden; position: absolute; z-index: 1000; height: 3.64056px; left: 448px; top: 186px; width: 4.38433px; margin-left: 257.509px; margin-top: 142.206px; opacity: 1;"><div style="z-index: 1; height: 370px; margin-left: -448px; margin-top: -186px; width: 670px;" class="cameraSlide cameraSlide_3 cameranext"><img data-portrait="" data-alignment="" style="visibility: visible; height: 370px; margin-left: 0px; margin-top: 0px; position: absolute; width: 670px;" class="imgLoaded" src="/catalog/view/theme/themesly/image/slide-4-670x370_002.jpg" height="370" width="670"><div style="width: 670px; height: 370px;" class="camerarelative"></div></div></div><div class="cameraappended" style="display: block; overflow: hidden; position: absolute; z-index: 1000; height: 3.64056px; left: 559px; top: 186px; width: 4.38433px; margin-left: -128.754px; margin-top: 0px; opacity: 1;"><div style="z-index: 1; height: 370px; margin-left: -559px; margin-top: -186px; width: 670px;" class="cameraSlide cameraSlide_3 cameranext"><img data-portrait="" data-alignment="" style="visibility: visible; height: 370px; margin-left: 0px; margin-top: 0px; position: absolute; width: 670px;" class="imgLoaded" src="/catalog/view/theme/themesly/image/slide-4-670x370_002.jpg" height="370" width="670"><div style="width: 670px; height: 370px;" class="camerarelative"></div></div></div><div class="cameraappended" style="display: block; overflow: hidden; position: absolute; z-index: 1000; height: 3.64056px; left: 0px; top: 278px; width: 4.42347px; margin-left: 257.509px; margin-top: 71.1032px; opacity: 1;"><div style="z-index: 1; height: 370px; margin-left: 0px; margin-top: -278px; width: 670px;" class="cameraSlide cameraSlide_3 cameranext"><img data-portrait="" data-alignment="" style="visibility: visible; height: 370px; margin-left: 0px; margin-top: 0px; position: absolute; width: 670px;" class="imgLoaded" src="/catalog/view/theme/themesly/image/slide-4-670x370_002.jpg" height="370" width="670"><div style="width: 670px; height: 370px;" class="camerarelative"></div></div></div><div class="cameraappended" style="display: block; overflow: hidden; position: absolute; z-index: 1000; height: 3.64056px; left: 112px; top: 278px; width: 4.42347px; margin-left: 0px; margin-top: 71.1032px; opacity: 1;"><div style="z-index: 1; height: 370px; margin-left: -112px; margin-top: -278px; width: 670px;" class="cameraSlide cameraSlide_3 cameranext"><img data-portrait="" data-alignment="" style="visibility: visible; height: 370px; margin-left: 0px; margin-top: 0px; position: absolute; width: 670px;" class="imgLoaded" src="/catalog/view/theme/themesly/image/slide-4-670x370_002.jpg" height="370" width="670"><div style="width: 670px; height: 370px;" class="camerarelative"></div></div></div><div class="cameraappended" style="display: block; overflow: hidden; position: absolute; z-index: 1000; height: 3.64056px; left: 224px; top: 278px; width: 4.42347px; margin-left: -128.754px; margin-top: 142.206px; opacity: 1;"><div style="z-index: 1; height: 370px; margin-left: -224px; margin-top: -278px; width: 670px;" class="cameraSlide cameraSlide_3 cameranext"><img data-portrait="" data-alignment="" style="visibility: visible; height: 370px; margin-left: 0px; margin-top: 0px; position: absolute; width: 670px;" class="imgLoaded" src="/catalog/view/theme/themesly/image/slide-4-670x370_002.jpg" height="370" width="670"><div style="width: 670px; height: 370px;" class="camerarelative"></div></div></div><div class="cameraappended" style="display: block; overflow: hidden; position: absolute; z-index: 1000; height: 3.64056px; left: 336px; top: 278px; width: 4.42347px; margin-left: 128.754px; margin-top: 71.1032px; opacity: 1;"><div style="z-index: 1; height: 370px; margin-left: -336px; margin-top: -278px; width: 670px;" class="cameraSlide cameraSlide_3 cameranext"><img data-portrait="" data-alignment="" style="visibility: visible; height: 370px; margin-left: 0px; margin-top: 0px; position: absolute; width: 670px;" class="imgLoaded" src="/catalog/view/theme/themesly/image/slide-4-670x370_002.jpg" height="370" width="670"><div style="width: 670px; height: 370px;" class="camerarelative"></div></div></div><div class="cameraappended" style="display: block; overflow: hidden; position: absolute; z-index: 1000; height: 3.64056px; left: 448px; top: 278px; width: 4.38433px; margin-left: -386.263px; margin-top: 71.1032px; opacity: 1;"><div style="z-index: 1; height: 370px; margin-left: -448px; margin-top: -278px; width: 670px;" class="cameraSlide cameraSlide_3 cameranext"><img data-portrait="" data-alignment="" style="visibility: visible; height: 370px; margin-left: 0px; margin-top: 0px; position: absolute; width: 670px;" class="imgLoaded" src="/catalog/view/theme/themesly/image/slide-4-670x370_002.jpg" height="370" width="670"><div style="width: 670px; height: 370px;" class="camerarelative"></div></div></div><div class="cameraappended" style="display: block; overflow: hidden; position: absolute; z-index: 1000; height: 3.64056px; left: 559px; top: 278px; width: 4.38433px; margin-left: 257.509px; margin-top: 0px; opacity: 1;"><div style="z-index: 1; height: 370px; margin-left: -559px; margin-top: -278px; width: 670px;" class="cameraSlide cameraSlide_3 cameranext"><img data-portrait="" data-alignment="" style="visibility: visible; height: 370px; margin-left: 0px; margin-top: 0px; position: absolute; width: 670px;" class="imgLoaded" src="/catalog/view/theme/themesly/image/slide-4-670x370_002.jpg" height="370" width="670"><div style="width: 670px; height: 370px;" class="camerarelative"></div></div></div></div></div><div class="camera_overlayer"></div><div class="camera_target_content"><div class="cameraContents"><div style="display: none;" class="cameraContent"><a class="camera_link" href="http://livedemo00.template-help.com/opencart_41345/index.php?route=information/information&amp;information_id=6" target=""></a></div><div style="display: none;" class="cameraContent"><a class="camera_link" href="http://livedemo00.template-help.com/opencart_41345/index.php?route=product/category&amp;path=83" target=""></a></div><div style="display: none;" class="cameraContent cameracurrent"><a class="camera_link" href="http://livedemo00.template-help.com/opencart_41345/index.php?route=product/product&amp;product_id=41" target=""></a></div><div style="display: none;" class="cameraContent"><a class="camera_link" href="http://livedemo00.template-help.com/opencart_41345/index.php?route=product/product&amp;product_id=40" target=""></a></div></div></div><div class="camera_bar" style="display: none; bottom: auto; height: 7px;"><span style="opacity: 0.8; position: absolute; left: 0px; right: 0px; top: 0px; bottom: 0px; background-color: rgb(34, 34, 34);" class="camera_bar_cont"><span style="opacity: 0; position: absolute; background-color: rgb(238, 238, 238); left: 0px; right: 0px; top: 2px; bottom: 2px; display: block;" id="pie_0"></span></span></div></div><div style="visibility: visible;" class="camera_thumbs_cont"></div><div class="camera_pag"><ul class="camera_pag_ul"><li class="pag_nav_0" style="position:relative; z-index:1002"><span><span>0</span></span><img style="position: absolute; opacity: 0;" class="camera_thumb" src="/catalog/view/theme/themesly/image/slide-3-670x370.jpg"><div style="opacity: 0;" class="thumb_arrow"></div></li><li class="pag_nav_1" style="position:relative; z-index:1002"><span><span>1</span></span><img style="position: absolute; opacity: 0;" class="camera_thumb" src="/catalog/view/theme/themesly/image/slide-1-670x370_002.jpg"><div style="opacity: 0;" class="thumb_arrow"></div></li><li class="pag_nav_2" style="position:relative; z-index:1002"><span><span>2</span></span><img style="position: absolute; opacity: 0;" class="camera_thumb" src="/catalog/view/theme/themesly/image/slide-2-670x370_002.jpg"><div style="opacity: 0;" class="thumb_arrow"></div></li><li class="pag_nav_3 cameracurrent" style="position:relative; z-index:1002"><span><span>3</span></span><img style="position: absolute; opacity: 0;" class="camera_thumb" src="/catalog/view/theme/themesly/image/slide-4-670x370.jpg"><div style="opacity: 0;" class="thumb_arrow"></div></li></ul></div><div style="display: none; visibility: visible;" class="camera_loader"></div></div>
							</div>

				<div class="clear"></div>
			</div>
		</div>

		<div class="clear"></div>

	</div>

111111111111111111111111111111111111111111111111111
</div>>

<nav id="top">
  <div class="container">
    <?php echo $currency; ?>
    <?php echo $language; ?>
    <div id="top-links" class="nav pull-right">
      <ul class="list-inline">
        <li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php echo $telephone; ?></span></li>
        <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-right">
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
            <?php } ?>
          </ul>
        </li>
        <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
        <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li>
        <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>
      </ul>
    </div>
  </div>
</nav>
<header>
  <div class="container">
    <div class="row">
      <div class="col-sm-4">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
      <div class="col-sm-5"><?php echo $search; ?>
      </div>
      <div class="col-sm-3"><?php echo $cart; ?></div>
    </div>
  </div>
</header>
<?php if ($categories) { ?>
<div class="container">
  <nav id="menu" class="navbar">
    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled">
                <?php foreach ($children as $child) { ?>
                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                <?php } ?>
              </ul>
              <?php } ?>
            </div>
            <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
        </li>
        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
    </div>
  </nav>
</div>
<?php } ?>
