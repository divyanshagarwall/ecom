<?php
require ('top.php');
if (isset($_GET['id'])) {
    $product_id = mysqli_real_escape_string($con, $_GET['id']);
    if ($product_id > 0) {
        $get_product = get_product($con, '', '', $product_id);
    } else {
        ?>
        <script>
            window.location.href = 'index.php';
        </script>
        <?php
    }
} else {
    ?>
    <script>
        window.location.href = 'index.php';
    </script>
    <?php
}

if (isset($_POST['review_submit'])) {
    $rating = get_safe_value($con, $_POST['rating']);
    $review = get_safe_value($con, $_POST['review']);

    $added_on = date('Y-m-d h:i:s');
    mysqli_query($con, "insert into product_review(product_id,user_id,rating,review,status,added_on) values('$product_id','" . $_SESSION['USER_ID'] . "','$rating','$review','0','$added_on')");

}


$product_review_res = mysqli_query($con, "select users.name,product_review.id,product_review.rating,product_review.review,product_review.added_on from users,product_review where product_review.status=1 and product_review.user_id=users.id and product_review.product_id='$product_id' order by product_review.added_on desc");

?>

<div class="ht__bradcaump__area"
    style="background: rgba(0, 0, 0, 0) url(images/bg/4.jpg) no-repeat scroll center center / cover ;">
    <div class="ht__bradcaump__wrap">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="bradcaump__inner">
                        <nav class="bradcaump-inner">
                            <a class="breadcrumb-item" href="index.php">Home</a>
                            <span class="brd-separetor"><i class="zmdi zmdi-chevron-right"></i></span>
                            <a class="breadcrumb-item"
                                href="categories.php?id=<?php echo $get_product['0']['categories_id'] ?>">
                                <?php echo $get_product['0']['categories'] ?>
                            </a>
                            <span class="brd-separetor"><i class="zmdi zmdi-chevron-right"></i></span>
                            <span class="breadcrumb-item active">
                                <?php echo $get_product['0']['name'] ?>
                            </span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<section class="htc__product__details bg__white ptb--100">
    <div class="htc__product__details__top">
        <div class="container">
            <div class="row">
                <div class="col-md-5 col-lg-5 col-sm-12 col-xs-12">
                    <div class="htc__product__details__tab__content">
                        <div class="product__big__images">
                            <div class="portfolio-full-image tab-content">
                                <div role="tabpanel" class="tab-pane fade in active imageZoom" id="img-tab-1">
                                    <img data-origin="<?php echo PRODUCT_IMAGE_SITE_PATH . $get_product['0']['image'] ?>"
                                        src="<?php echo PRODUCT_IMAGE_SITE_PATH . $get_product['0']['image'] ?>">
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-md-7 col-lg-7 col-sm-12 col-xs-12 smt-40 xmt-40">
                    <div class="ht__product__dtl">
                        <h2>
                            <?php echo $get_product['0']['name'] ?>
                        </h2>
                        <ul class="pro__prize">
                            <li class="old__prize">Rs.
                                <?php echo $get_product['0']['mrp'] ?>
                            </li>
                            <li>Rs.
                                <?php echo $get_product['0']['price'] ?>
                            </li>
                        </ul>
                        <p class="pro__info">
                            <?php echo $get_product['0']['short_desc'] ?>
                        </p>
                        <div class="ht__pro__desc">
                            <div class="sin__desc">
                                <?php
                                $productSoldQtyByProductId = productSoldQtyByProductId($con, $get_product['0']['id']);

                                $pending_qty = $get_product['0']['qty'] - $productSoldQtyByProductId;

                                $cart_show = 'yes';
                                if ($get_product['0']['qty'] > $productSoldQtyByProductId) {
                                    $stock = 'In Stock';
                                } else {
                                    $stock = 'Not in Stock';
                                    $cart_show = '';
                                }
                                ?>
                                <p><span>Availability:</span>
                                    <?php echo $stock ?>
                                </p>
                            </div>
                            <div class="sin__desc">
                                <?php
                                if ($cart_show != '') {
                                    ?>
                                    <p><span>Qty:</span>
                                        <select id="qty">
                                            <?php
                                            for ($i = 1; $i <= $pending_qty; $i++) {
                                                echo "<option>$i</option>";
                                            }
                                            ?>
                                        </select>
                                    </p>
                                <?php } ?>
                            </div>
                            <div class="sin__desc align--left">
                                <p><span>Categories:</span></p>
                                <ul class="pro__cat__list">
                                    <li><a href="#">
                                            <?php echo $get_product['0']['categories'] ?>
                                        </a></li>
                                </ul>
                            </div>

                        </div>

                    </div>
                    <?php
                    if ($cart_show != '') {
                        ?>
                        <a class="fr__btn" href="javascript:void(0)"
                            onclick="manage_cart('<?php echo $get_product['0']['id'] ?>','add')">Add to cart</a>

                        <a class="fr__btn buy_now" href="javascript:void(0)"
                            onclick="manage_cart('<?php echo $get_product['0']['id'] ?>','add','yes')">Buy Now</a>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>
<section class="htc__produc__decription bg__white">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <ul class="pro__details__tab" role="tablist">
                    <li role="presentation" class="description active"><a href="#description" role="tab"
                            data-toggle="tab">description</a></li>
                    <li role="presentation" class="review"><a href="#review" role="tab" data-toggle="tab"
                            class="active show" aria-selected="true">review</a></li>
                </ul>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <div class="ht__pro__details__content">
                    <div role="tabpanel" id="description" class="pro__single__content tab-pane fade in active">
                        <div class="pro__tab__content__inner">
                            <?php echo $get_product['0']['description'] ?>
                        </div>
                    </div>
                    <div role="tabpanel" id="review" class="pro__single__content tab-pane fade active show">
                        <div class="pro__tab__content__inner">
                            <?php
                            if (mysqli_num_rows($product_review_res) > 0) {

                                while ($product_review_row = mysqli_fetch_assoc($product_review_res)) {
                                    ?>

                                    <article class="row">
                                        <div class="col-md-12 col-sm-12">
                                            <div class="panel panel-default arrow left">
                                                <div class="panel-body">
                                                    <header class="text-left">
                                                        <div><span class="comment-rating">
                                                                <?php echo $product_review_row['rating'] ?>
                                                            </span> (
                                                            <?php echo $product_review_row['name'] ?>)
                                                        </div>
                                                        <time class="comment-date">
                                                            <?php
                                                            $added_on = strtotime($product_review_row['added_on']);
                                                            echo date('d M Y', $added_on);
                                                            ?>
                                                        </time>
                                                    </header>
                                                    <div class="comment-post">
                                                        <p>
                                                            <?php echo $product_review_row['review'] ?>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </article>
                                <?php }
                            } else {
                                echo "<h3 class='submit_review_hint'>No review added</h3><br/>";
                            }
                            ?>


                            <h3 class="review_heading">Enter your review</h3><br />
                            <?php
                            if (isset($_SESSION['USER_LOGIN'])) {
                                ?>
                                <div class="row" id="post-review-box" style=>
                                    <div class="col-md-12">
                                        <form action="" method="post">
                                            <select class="form-control" name="rating" required>
                                                <option value="">Select Rating</option>
                                                <option>&#11088 (Worst)</option>
                                                <option>&#11088 &#11088 (Bad)</option>
                                                <option>&#11088 &#11088 &#11088 (Good)</option>
                                                <option>&#11088 &#11088 &#11088 &#11088 (Very Good)</option>
                                                <option>&#11088 &#11088 &#11088 &#11088 &#11088 (Fantastic)</option>
                                            </select> <br />
                                            <textarea class="form-control" cols="50" id="new-review" name="review"
                                                placeholder="Enter your review here..." rows="5"></textarea>
                                            <div class="text-right mt10">
                                                <button class="btn btn-success btn-lg" type="submit"
                                                    name="review_submit">Submit</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            <?php } else {
                                echo "<span class='submit_review_hint'>Please <a href='login.php'>login</a> to submit your review</span>";
                            }
                            ?>
                        </div>
                    </div>
                </div>
            </div>
</section>


<?php require ('footer.php') ?>