<?php require('top.php')?>
<div class="body__overlay"></div>
        
        <div class="slider__container slider--one bg__cat--3">
            <div class="slide__container slider__activation__wrap owl-carousel">
                <div class="single__slide animation__style01 slider__fixed--height">
                    <div class="container">
                        <div class="row align-items__center">
                            <div class="col-md-7 col-sm-7 col-xs-12 col-lg-6">
                                <div class="slide">
                                    <div class="slider__inner">
                                        <h1 style="font-size: 60px;">Welcome to GLA's GADGET WONDERS</h1>
                                        <div class="cr__btn">
                                            <a href="cart.php">Cart</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-sm-5 col-xs-12 col-md-5">
                                <div class="slide__thumb">
                                    <img src="images/slider/fornt-img/1.png" alt="slider images">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            
                <div class="single__slide animation__style01 slider__fixed--height">
                    <div class="container">
                        <div class="row align-items__center">
                            <div class="col-md-7 col-sm-7 col-xs-12 col-lg-6">
                                <div class="slide">
                                    <div class="slider__inner">
                                        <h2>Collection 2023</h2>
                                        <h1 style="font-size: 60px;">New Launched</h1>
                                        <div class="cr__btn">
                                            <a href="cart.php">Cart</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-sm-5 col-xs-12 col-md-5">
                                <div class="slide__thumb">
                                    <img src="images/slider/fornt-img/2.png" alt="slider images">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <section class="htc__category__area ptb--100">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="section__title--2 text-center">
                            <h2 class="title__line">New Arrivals</h2>
                            <p>Latest trending products</p>
                        </div>
                    </div>
                </div>
                <div class="htc__product__container">
                    <div class="row">
                        <div class="product__list clearfix mt--30">
							<?php
							$get_product=get_product($con,4);
							foreach($get_product as $list){
							?>
                            <div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
                                <div class="category">
                                    <div class="ht__cat__thumb">
                                        <a href="product.php?id=<?php echo $list['id']?>">
                                            <img src="<?php echo PRODUCT_IMAGE_SITE_PATH.$list['image']?>" alt="product images">
                                        </a>
                                    </div>
                                    <div class="fr__hover__info">
                                    <ul class="product__action">
                                        <li><a href="javascript:void(0)" onclick="wishlist_manage('<?php echo $list['id']?>','add')"><i class="icon-heart icons"></i></a></li>
                                    </ul>
                                </div>
                                    <div class="fr__product__inner">
                                    <h4><a href="product.php?id=<?php echo $list['id']?>"><?php echo $list['name']?></a></h4>
                                        <ul class="fr__pro__prize">
                                            <li class="old__prize">Rs. <?php echo $list['mrp']?></li>
                                            <li>Rs. <?php echo $list['price']?></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
							<?php } ?>
                        </div>
                    </div>
                </div>
            </div>
        </section>
<?php require('footer.php')?>        