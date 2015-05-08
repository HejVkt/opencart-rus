  <button type="button" data-toggle="dropdown" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-inverse btn-block btn-lg dropdown-toggle"><b>Корзина</b> :&nbsp;<span id="cart-total"><?php echo $text_items; ?></span></button>
  <div id="cart_content" class="content">
      <span id="span_cart_content">
      <?php if ($products) : ?>
      <span class="latest-added">Последние добавленные товары:</span>
      <div class="mini-cart-info">
          <table class="cart">
          <?php foreach ($products as $product) : ?>
              <tr>
                  <td class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a></td>
                  <td class="name">
                      <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                        <div></div>
                        <span class="quantity">x&nbsp;<?php echo $product['quantity']; ?></span>
                        <span class="total"><?php echo $product['total']; ?></span>
                  </td>
                  <td class="remove">
                      <span><img src="catalog/view/theme/themesly/image/close.png" alt="Remove" title="Remove" onclick="cart.remove('<?php echo $product['key']; ?>');"></span>
                  </td>
              </tr>
          <?php endforeach ?>
          </table>

          <table class="total">

              <?php foreach ($totals as $total) { ?>
              <tr>
                  <td align="right" class="total-right"><b><?php echo $total['title']; ?>:</b></td>
                  <td align="left" class="total-left"><span class="t-price"><?php echo $total['text']; ?></span></td>
              </tr>
              <?php } ?>

          </table>

          <div class="checkout"><a class="button" href="<?php echo $cart; ?>"><span>В корзину</span></a> <a class="button" href="<?php echo $checkout; ?>"><span>Оформить</span></a></div>
      </div>

      <?else:?>
          <p class="text-center"><?php echo $text_empty; ?></p>
      <?endif?>
      </span>
  </div>