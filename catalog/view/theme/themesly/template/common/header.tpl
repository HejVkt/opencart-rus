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
