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

<link href="catalog/view/theme/themesly/stylesheet/stylesheet.css" rel="stylesheet">

<script src="catalog/view/theme/themesly/javascript/superfish.js" type="text/javascript"></script>
<link href="catalog/view/theme/themesly/stylesheet/superfish.css" rel="stylesheet">

<script src="catalog/view/theme/themesly/javascript/jcarousel.js" type="text/javascript"></script>
<link href="catalog/view/theme/themesly/stylesheet/jcarousel.css" rel="stylesheet">

<script src="catalog/view/theme/themesly/javascript/camera.js" type="text/javascript"></script>
<link href="catalog/view/theme/themesly/stylesheet/camera.css" rel="stylesheet">

<script src="catalog/view/theme/themesly/javascript/script.js" type="text/javascript"></script>

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
<p id="back-top"> <a href="#top"><span></span></a></p>
<div class="bottom-space">
    <div class="outer">
        <?php //echo $currency; ?>
        <div class="clear"></div>
    </div>

    <div class="main-shining">
        <header>
        <div class="row-1">
            <div id="header">
                <div id="logo">
                    <?php if ($logo) { ?>
                    <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
                    <?php } else { ?>
                    <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
                    <?php } ?>
                </div>

                <div class="header-top1">
                    <ul class="links">
                        <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span ><?php echo $text_wishlist; ?></span></a></li>
                        <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                        <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span ><?php echo $text_shopping_cart; ?></span></a></li>
                        <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span ><?php echo $text_checkout; ?></span></a></li>
                    </ul>

                    <div class="clear"></div>
                    <div class="cart-position">
                        <div id="cart" class="btn-group btn-block">
                            <?php echo $cart; ?>
                        </div>
                    </div>

                    <div id="welcome">

                        <?php if ($logged) { ?>
                            <?php echo $text_logged; ?>
                        <?php } else { ?>
                            Приветствуем посетитель, Вы можете  <a href="<?php echo $login; ?>">Войти</a> или <a href="<?php echo $register; ?>">Зарегистрироваться</a>
                        <?php } ?>

                    </div>
                    <div class="clear"></div>
                </div>
                <div id="search"><?php echo $search; ?></div>
            </div>
            <div class="clear"></div>
            <div id="menu">
                <div class="clear"></div>
                <?php if ($categories) { $i=0; ?>
                <ul class="menu">
                    <?php foreach ($categories as $category) : $i++;?>

                    <?php if ($category['children']) { ?>

                    <li class="cat_<?php echo $i;?>">
                        <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                            <ul>
                                <?php foreach ($category['children'] as $child) { ?>
                                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                                <?php } ?>
                            </ul>
                    </li>
                    <?php } else { ?>
                    <li class="cat_<?php echo $i;?>">
                        <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                    </li>
                    <?php }?>
                    <?php endforeach ?>

                </ul>
                <?php } ?>

                <div class="clear"></div>
            </div>
        </div>
        </header>
        <div id="content">
        <div class="clear"></div>