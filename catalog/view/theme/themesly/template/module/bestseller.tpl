<div class="box bestsellers">
    <div class="box-heading">Хиты продаж</div>
    <div class="box-content">
        <div class="box-product">
            <ul>
                <?php foreach ($products as $product) : ?>
                <li class="first-in-line">

                    <div class="image2"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a></div>
                    <div class="inner">
                        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                        <div class="description">
                            <?php echo $product['description']; ?>
                        </div>
                        <div class="f-left">
                                <?php if (!$product['special']) : ?>
                                    <span class="price"><?php echo $product['price']; ?></span>
                                <?else:?>
                                    <div class="price">
                                       <span class="price-new"><?php echo $product['special']; ?></span><span class="price-old"><?php echo $product['price']; ?></span>
                                    </div>
                                <?endif?>
                        </div>

                        <div class="cart">
                            <a data-id="40;" onclick="cart.add('<?php echo $product['product_id']; ?>');" class="button addToCart"><span>Купить</span><strong style="overflow: hidden; width: 0px; left: 50%; top: 50%; height: 0px;"></strong></a>
                        </div>

                        <div class="clear"></div>
                        <div class="rating"></div>
                    </div>

                </li>
                <?endforeach?>
            </ul>
        </div>
    </div>
</div>