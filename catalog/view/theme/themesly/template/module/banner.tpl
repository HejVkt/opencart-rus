<div id="banner<?php echo $module; ?>">
  <?php foreach ($banners as $banner) { ?>

    <?php if ($banner['link']) { ?>
        <div><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="" title="" /></a></div>
    <?php } else { ?>
        <div><img src="<?php echo $banner['image']; ?>" alt="" title="" /></div>
    <?php } ?>
  <?php }?>
</div>
