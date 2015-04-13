<?php 
if($this->registry->has('theme_options') == true) { 
	$theme_options = $this->registry->get('theme_options');
	$config = $this->registry->get('config');
	$language_id = $config->get( 'config_language_id' );
	$customfooter = $theme_options->get( 'customfooter' );
$class = 3; 
$id = rand(0, 5000)*rand(0, 5000); 
$all = 4; 
$row = 4; 

if($theme_options->get( 'gallery_per_pow' ) == 6) { $class = 2; }
if($theme_options->get( 'gallery_per_pow' ) == 5) { $class = 25; }
if($theme_options->get( 'gallery_per_pow' ) == 3) { $class = 4; }

if($theme_options->get( 'gallery_per_pow' ) > 1) { $row = $theme_options->get( 'gallery_per_pow' ); $all = $theme_options->get( 'gallery_per_pow' ); } 
?>
<?php } ?>

<?php echo $header;
$theme_options = $this->registry->get('theme_options');
$config = $this->registry->get('config'); ?>
<?php 
$grid_center = 12; 
if($column_left != '') { 
	$grid_center = $grid_center-3; 
}

if($column_right != '') { 
	$grid_center = $grid_center-3; 
} 

require_once( DIR_TEMPLATE.$config->get('config_template')."/lib/module.php" );
$modules = new Modules($this->registry);
?>

<!-- MAIN CONTENT
	================================================== -->
<div class="main-content full-width home">
			<div class="container">
				<?php 
				$preface_left = $modules->getModules('preface_left');
				$preface_right = $modules->getModules('preface_right');
				?>
				<?php if( count($preface_left) || count($preface_right) ) { ?>
				<div class="row">
					<div class="col-sm-9">
						<?php
						if( count($preface_left) ) {
							foreach ($preface_left as $module) {
								echo $module;
							}
						} ?>
					</div>
					
					<div class="col-sm-3">
						<?php
						if( count($preface_right) ) {
							foreach ($preface_right as $module) {
								echo $module;
							}
						} ?>
					</div>
				</div>
				<?php } ?>
				
				<?php 
				$preface_fullwidth = $modules->getModules('preface_fullwidth');
				if( count($preface_fullwidth) ) { ?>
				<div class="row">
					<div class="col-sm-12">
						<?php
							foreach ($preface_fullwidth as $module) {
								echo $module;
							}
						?>
					</div>
				</div>
				<?php } ?>
				
				<div class="row">				
					<?php 
					$columnleft = $modules->getModules('column_left');
					if( count($columnleft) ) { ?>
					<div class="col-sm-3" id="column_left">
						<?php
						foreach ($columnleft as $module) {
							echo $module;
						}
						?>
					</div>
					<?php } ?>
					<?php $grid_center = 12; if( count($columnleft) ) { $grid_center = 9; } ?>
					<div class="col-sm-<?php echo $grid_center; ?>">
						<?php 
						$content_big_column = $modules->getModules('content_big_column');
						if( count($content_big_column) ) { 
							foreach ($content_big_column as $module) {
								echo $module;
							}
						} ?>
						
						<div class="row">
							<?php 
							$grid_content_top = 12; 
							$grid_content_right = 3;
							$column_right = $modules->getModules('column_right'); 
							if( count($column_right) ) {
								if($grid_center == 9) {
									$grid_content_top = 8;
									$grid_content_right = 4;
								} else {
									$grid_content_top = 9;
									$grid_content_right = 3;
								}
							}
							?>
							<div class="col-sm-<?php echo $grid_content_top; ?>">
								<?php 
								$content_top = $modules->getModules('content_top');
								if( count($content_top) ) { 
									foreach ($content_top as $module) {
										echo $module;
									}
								} ?>
							</div>
							
							<?php if( count($column_right) ) { ?> 
							<div class="col-sm-<?php echo $grid_content_right; ?>" id="column_right">
								<?php foreach ($column_right as $module) {
									echo $module;
								} ?>
							</div>
							<?php } ?>
						</div>
					</div>
				</div>
				</div>
					
					
				
					
					
					
				
		</div>
		
					<!-- Middle Left Slider ->
					<?php $tg_middle_left = $modules->getModules('tg_middle_left'); ?>
						<?php  if(count($tg_middle_left)) { ?>
						<!-- Slider -->
						<div class="col-sm-6 slider-middle-bottom" style="padding-left: 0px; padding-right: 0px;">
									<?php foreach($tg_middle_left as $module) { ?>
									<?php echo $module; ?>
									<?php } ?>
						</div>
					<?php } ?>
					
					<!-- Middle Right Slider ->
					<?php $tg_middle_right = $modules->getModules('tg_middle_right'); ?>
						<?php  if(count($tg_middle_right)) { ?>
						<!-- Slider -->
						<div class="col-sm-6 slider-middle-bottom" style="padding-left: 0px; padding-right: 0px;">
									<?php foreach($tg_middle_right as $module) { ?>
									<?php echo $module; ?>
									<?php } ?>
						</div>
					<?php } ?>
		
		
					<!-- Content Bottom -->
					<?php 
						$contentbottom = $modules->getModules('content_bottom');
						if( count($contentbottom) ) { ?>
							<div class="bottom-holder">	
								<div class="container">
									<div class="row">	
										<div class="col-sm-12">	
											
												<?php
												foreach ($contentbottom as $module) {
													echo $module;
												}
												?>
											
										</div>
									</div>
								</div>
							</div>
					<?php } ?>
					
					<!-- Bottom Slider Position -->

						<?php $slideshow_bottom = $modules->getModules('slideshow_bottom'); ?>
						<?php  if(count($slideshow_bottom)) { ?>
						<!-- Slider -->
						<div id="slider" class="full-width" style="margin-bottom: 0px!important;">
									<?php foreach($slideshow_bottom as $module) { ?>
									<?php echo $module; ?>
									<?php } ?>
						</div>
						<?php } ?>
			

<?php echo $footer; ?>