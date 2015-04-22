<script type="text/javascript">
    jQuery(document).ready(function() {
/*
        jQuery('#mycarousel').jcarousel({
            scroll:1,
            vertical:true
        });
*/
    });

</script>

<div class="box specials">
    <div class="box-heading special-heading"><h3><span>Акционная</span> продукция</h3></div>
    <div class="box-content">
        <div class="box-product">
            <div class="jcarousel">

                <ul id="mycarousel" class="jcarousel jcarousel-skin-tango">
                    <?php $i=0; foreach ($products as $product) : $i++; ?>
                        <li>
                            <div class="image2"><a href="<?php echo $product['href']; ?>"><img alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" src="<?php echo $product['thumb']; ?>"></a></div>
                            <div class="inner extra-wrap">
                                <div class="description">
                                    <a href="<?php echo $product['href']; ?>"><?php echo $product['description']; ?></a></div>
                                <div class="f-left">
                                    <div class="price">
                                        <span class="price-new"><?php echo $product['special']; ?></span><span class="price-old">Old price:&nbsp;<?php echo $product['price']; ?></span>
                                    </div>
                                </div>

                                <div class="clear"></div>
                                <div class="rating"></div>
                            </div>

                        </li>
                    <?php endforeach?>
                </ul>
            </div>
        </div>
    </div>
</div>
