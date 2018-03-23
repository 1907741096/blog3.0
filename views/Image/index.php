<div class="am-g am-g-fixed blog-fixed blog-content">
    <figure data-am-widget="figure" class="am am-figure am-figure-default "   data-am-figure="{  pureview: 'true' }">
        <div id="container">
            <?php foreach($images as $image): ?>
                <div><img src="/assets/images/<?php echo $image->thumb;?>.jpg"><h3><?php echo $image->name?></h3></div>
            <?php endforeach; ?>
        </div>
    </figure>
</div>