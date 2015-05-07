<?php echo $header; ?>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-xs-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-xs-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-xs-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?> category">
    <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
    </ul>
      <?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <?php if ($thumb || $description) { ?>
      <div class="row">
        <?php if ($thumb) { ?>
        <div class="col-xs-2 category-img"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
        <?php } ?>
        <?php if ($description) { ?>
        <div class="category-info">
            <div class="col-xs-10">
                    <?php echo $description; ?>
            </div>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      <?php if ($categories) { ?>

        <div class="box">
            <div class="box-heading"><?php echo $text_refine; ?></div>
            <div class="box-content">

                <div class="box-product box-subcat">
                    <ul>
                        <?php $i=0; foreach ($categories as $category) { $i++; ?>
                            <li class="cat-height <?php ($i % 3 == 0) ? "first-in-line" : ""; ?>">
                                <div class="image"><a href="<?php echo $category['href']; ?>">
                                    <?php if ($category['thumb']) : ?>
                                        <img src="<?php echo $category['thumb'];?>" alt="<?php echo $category['name']; ?>" title="<?php echo $category['name']; ?>" />
                                    <?else:?>
                                        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNgYAAAAAMAASsJTYQAAAAASUVORK5CYII=" alt="<?php echo $category['name']; ?>" title="<?php echo $category['name']; ?>" width="80" height="80" />
                                    <?endif?>
                                    </a>
                                </div>
                                <div class="name subcatname"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></div>
                            </li>
                        <?php } ?>
                    </ul>
                </div>
            </div>
        </div>
        <br/>
      <?php } ?>

      <?php if ($products) { ?>

        <div class="btn-group">

            <div class="product-filter">
                <div class="display"><b>Отображеать:</b>
                    <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"></button>
                    <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"></button>
                </div>
                <div class="sort"><?php echo $text_sort; ?>

                    <select id="input-sort"  onchange="location = this.value;">
                        <?php foreach ($sorts as $sorts) { ?>
                        <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                        <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                        <?php } else { ?>
                        <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                        <?php } ?>
                        <?php } ?>
                    </select>

                </div>
                <div class="limit"><?php echo $text_limit; ?>

                    <select id="input-limit" onchange="location = this.value;">
                        <?php foreach ($limits as $limits) { ?>
                        <?php if ($limits['value'] == $limit) { ?>
                        <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                        <?php } else { ?>
                        <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                        <?php } ?>
                        <?php } ?>
                    </select>

                </div>
                <div class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div>
            </div>
        </div>
      <br />
      <div class="row">
          <div class="product-grid" id="product-view">
              <ul>
                  <?php $pNum=0; foreach ($products as $product) :
                    $pNum++;
                    if($pNum == 4){
                        $pNum = 1;
                    }
                  ?>
                  <li class="<?php echo ($pNum == 1) ? "first-in-line" : "" ?> <?php echo ($pNum == 3) ? "last-in-line" : "" ?>">

                  <div class="left" style="float: left;">
                      <div class="image"><a href="<?php echo $product['href']; ?>"><img alt="<?php echo $product['name']; ?>" id="img_45" src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>"></a></div>
                      <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                      <div class="description"><?php echo $product['description']; ?></div>
                  </div>

                      <div class="right">
                          <div class="price">
                              <?php if ($product['special']) : ?>
                                  <span class="price-new"><?php echo $product['special']; ?></span>
                                  <span class="price-old"><?php echo $product['price']; ?></span>
                              <?php else:?>
                                  <span class="price"><?php echo $product['price']; ?></span>
                              <?php endif?>
                              <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                          </div>
                              <?php if ($product['rating'] and 1==2) { ?>
                                  <div class="rating">
                                      <?php for ($i = 1; $i <= 5; $i++) { ?>
                                      <?php if ($product['rating'] < $i) { ?>
                                      <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                      <?php } else { ?>
                                      <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                      <?php } ?>
                                      <?php } ?>
                                  </div>
                              <?php } ?>

                          <div class="cart">
                              <a data-id="<?php echo $product['product_id']; ?>" onclick="cart.add('<?php echo $product['product_id']; ?>');" class="button addToCart"><span>Купить</span><strong style="overflow: hidden; width: 0px; left: 50%; top: 50%; height: 0px;"></strong></a>
                          </div>
                          <div class="wishlist">
                              <button type="button" class="btn btn-default heart" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
                          </div>
                          <div class="compare">
                              <button type="button" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
                          </div>
                      </div>

                  </li>
                  <?php endforeach?>
              </ul>
          </div>
      </div>
      <div class="row">
        <div class="col-xs-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-xs-6 text-right"><?php echo $results; ?></div>
      </div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>