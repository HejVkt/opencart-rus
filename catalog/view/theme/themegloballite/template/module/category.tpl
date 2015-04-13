<?php 
$theme_options = $this->registry->get('theme_options');
$config = $this->registry->get('config');
?>
<div class="box">
    <div class="box-heading"><?php if($theme_options->get( 'category_text', $config->get( 'config_language_id' ) ) != '') { echo html_entity_decode($theme_options->get( 'category_text', $config->get( 'config_language_id' ) )); } else { echo 'Categories'; } ?></div>
  <div class="box-content box-category">
    <ul>
      <?php foreach ($categories as $category) { ?>
      <li>
        <?php if ($category['category_id'] == $category_id) { ?>
        <a href="<?php echo $category['href']; ?>" class="active"><?php echo $category['name']; ?></a>
			<?php if ($category['children']) { ?>
				<ul>
				  <?php foreach ($category['children'] as $child) { ?>
				  <li>
					<?php if ($child['category_id'] == $child_id) { ?>
					<a href="<?php echo $child['href']; ?>" class="active"> - <?php echo $child['name']; ?></a>
					<?php } else { ?>
					<a href="<?php echo $child['href']; ?>"> - <?php echo $child['name']; ?></a>
					<?php } ?>
				  </li>
				  <?php } ?>
				</ul>
        <?php } ?>	
        <?php } else { ?>
        <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
        <?php } ?>
        
      </li>
      <?php } ?>
    </ul>
	</div>
	</div>
