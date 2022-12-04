<!-- Slideshow container -->
<div class="slideshow-container">

  <!-- Full-width images with number and caption text -->
  <div class="mySlides fade">
    <div class="numbertext">1 / 3</div>
    <img src="view/image/anh1.jpg" style="width:100%">
    <!-- <div class="text">Caption Text</div> -->
  </div>

  <div class="mySlides fade">
    <div class="numbertext">2 / 3</div>
    <img src="view/image/anh2.jpg" style="width:100%">
    <!-- <div class="text">Caption Two</div> -->
  </div>

  <div class="mySlides fade">
    <div class="numbertext">3 / 3</div>
    <img src="view/image/anh3.jpg" style="width:100%">
    <!-- <div class="text">Caption Three</div> -->
  </div>

  <!-- Next and previous buttons -->
  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
<br>

<!-- The dots/circles -->
<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span>
  <span class="dot" onclick="currentSlide(2)"></span>
  <span class="dot" onclick="currentSlide(3)"></span>
</div>

<style>
  .slideshow-container {
    max-width: 1200px;
    position: relative;

  }

  /* Hide the images by default */
  .mySlides {
    display: none;

  }



  /* Next & previous buttons */
  .prev,
  .next {
    cursor: pointer;
    position: absolute;
    top: 50%;
    width: auto;
    margin-top: -22px;
    padding: 16px;
    color: white;
    font-weight: bold;
    font-size: 18px;
    transition: 0.6s ease;
    border-radius: 0 3px 3px 0;
    user-select: none;
  }

  /* Position the "next button" to the right */
  .next {
    right: 0;
    border-radius: 3px 0 0 3px;
  }

  /* On hover, add a black background color with a little bit see-through */
  .prev:hover,
  .next:hover {
    background-color: rgba(0, 0, 0, 0.8);
  }

  /* Caption text */
  /* .text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
} */

  /* Number text (1/3 etc) */
  .numbertext {
    color: #f2f2f2;
    font-size: 12px;
    padding: 8px 12px;
    position: absolute;
    top: 0;
  }

  /* The dots/bullets/indicators */
  .dot {
    cursor: pointer;
    height: 15px;
    width: 15px;
    margin: 0 2px;
    background-color: #bbb;
    border-radius: 50%;
    display: inline-block;
    transition: background-color 0.6s ease;
  }

  .active,
  .dot:hover {
    background-color: #717171;
  }

  /* Fading animation */
  .fade {
    animation-name: fade;
    animation-duration: 1.5s;
  }

  @keyframes fade {
    from {
      opacity: .4
    }

    to {
      opacity: 1
    }
  }
</style>


<script>
  let slideIndex = 1;
  showSlides(slideIndex);

  // Next/previous controls
  function plusSlides(n) {
    showSlides(slideIndex += n);
  }

  // Thumbnail image controls
  function currentSlide(n) {
    showSlides(slideIndex = n);
  }

  function showSlides(n) {
    let i;
    let slides = document.getElementsByClassName("mySlides");
    let dots = document.getElementsByClassName("dot");
    if (n > slides.length) {
      slideIndex = 1
    }
    if (n < 1) {
      slideIndex = slides.length
    }
    for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
    }
    for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex - 1].style.display = "block";
    dots[slideIndex - 1].className += " active";
  }
</script>

<section class="dm-list">
  <h2>DANH MỤC SẢN PHẨM</h2>
  <?php
  foreach ($dsdm as $dm) {
    extract($dm);
    $linkdm = "index.php?act=sanpham&iddm=" . $id;
    echo '<li>
                <a href="' . $linkdm . '">' . $name . '</a>
             </li>';
  }
  ?>
  <style>
    .dm-list {
      text-align: center;
      margin-top: 40px;
    }

    h2 {
      margin-bottom: 30px;
    }

    .dm-list li {
      display: inline-block;
    }

    .dm-list li a {
      text-decoration: none;
      color: black;
      padding: 0px 20px 0 20px;
      font-size: 18px;
    }

    .dm-list li a:hover {
      color: red;
      text-decoration: underline;
      font-weight: bold;
    }
  </style>

</section>

<h2 class="topyeuthich">TOP SẢN PHẨM YÊU THÍCH</h2>
<article>
  <!-- hiển thị top 10 sản phẩm yêu thích nhất -->

  <section class="top10">

    <?php
    foreach ($dstop10 as $sp) {
      extract($sp);
      $linksp = "index.php?act=sanphamct&idsp=" . $id;
      $img = $img_path . $img;
      echo '  <div class="top10-list">
                    
                    <div class="anh">
                    <a href="' . $linksp . '"><img src="' . $img . '"  class="image"></a>
                    </div>
                    <h5 class="top10-name"><a href="">$' . $price . '</a></h5>
                    <h5 class="top10-name"> <a href="' . $linksp . '">' . $name . '</a></h5>
                   <div class="top10-cn">
                   <form action="index.php?act=addtocart" method="post">
                      <input type="hidden" name="id" value="' . $id . '">
                      <input type="hidden" name="name" value="' . $name . '">
                      <input type="hidden" name="img" value="' . $img . '">
                      <input type="hidden" name="price" value="' . $price . '">
                      <input type="submit" class="text" name="addtocart" value="Thêm giỏ hàng">
                    </form>
                   
                   <a href="' . $linksp . '"> <input type="submit" class="text" value="Xem chi tiết"> </a>
                  
                   
                   </div>
                </div>';
    }
    ?>




  </section>

</article>
<!-- hiển thị sản phẩm mới ra mắt -->
<aside>

  <h2>SẢN PHẨM </h2>
  <section class="product-new">

    <?php
    $i = 0;
    foreach ($spnew as $sp) {
      extract($sp);
      $linksp = "index.php?act=sanphamct&idsp=" . $id;
      $img = $img_path . $img;
      if (($i == 2) || ($i == 5) || ($i == 8)) {
        $mr = "";
      } else {
        $mr = "mr";
      }
      echo '  <div class="product-list" ' . $mr . '>
                <!-- hiển thị top 10 sản phẩm yêu thích nhất -->
                <div class="anh">
                <a href="' . $linksp . '"><img src="' . $img . '"  class="image"></a>
                </div>
                <h5 class="product-name"><a href="">$' . $price . '</a></h5>
                <h5 class="product-name"> <a href="' . $linksp . '">' . $name . '</a></h5>
               <div class="product-cn">
               <form action="index.php?act=addtocart" method="post">
                      <input type="hidden" name="id" value="' . $id . '">
                      <input type="hidden" name="name" value="' . $name . '">
                      <input type="hidden" name="img" value="' . $img . '">
                      <input type="hidden" name="price" value="' . $price . '">
                      <input type="submit" class="text" name="addtocart" value="Thêm giỏ hàng">
                    </form>
                   <a href="' . $linksp . '"> <input type="submit" class="text" value="Xem chi tiết"> </a>
               </div>
            </div>
';
      $i += 1;
    }
    ?>






  </section>
</aside>
