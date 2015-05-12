</div><!--- end divcontent -->
<div class="clear"></div>
<footer>
<div class="footer-wrap">
    <div id="footer">
        <div class="wrapper">
            <?php if ($informations):  ?>
                <div class="column col-1">
                    <h3><?php echo $text_information; ?></h3>
                    <ul>
                        <?php foreach ($informations as $information) : ?>
                        <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?><em></em></a></li>
                        <? endforeach?>
                    </ul>
                </div>
            <? endif ?>

            <div class="column col-2">
                <h3><?php echo $text_service; ?></h3>
                <ul>
                    <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                    <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
                    <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
                </ul>
            </div>
            <div class="column col-3">
                <h3><?php echo $text_extra; ?></h3>
                <ul>
                    <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
                    <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
                    <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
                    <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
                </ul>
            </div>
            <div class="column col-4">
                <h3><?php echo $text_account; ?></h3>
                <ul>
                    <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                    <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                    <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
                    <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
                </ul>
            </div>

        </div>

    </div>
    <div class="wrapper">
        <div id="powered">Все права защищены. Копирование материалов без разрешения правообладателя запрещено. Обращаем Ваше внимание на то, что данный интернет-сайт носит исключительно информационный характер и ни при каких условиях не является публичной офертой, определяемой положениями ч. 2 ст. 437 Гражданского кодекса РФ. Вся предоставленная информация может быть изменена без предварительного уведомления. Уточняйте информацию у менеджеров.
			<div style="text-align: right;"><?php echo $_SERVER['SERVER_NAME']; ?> <?php echo date('Y'); ?></div></div>
    </div>
</div>
</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- end of body div -->
    </div>
</div>
<!-- end of body div -->

<!-- Theme created by Sly hejvkt@gmail.com -->

</body></html>