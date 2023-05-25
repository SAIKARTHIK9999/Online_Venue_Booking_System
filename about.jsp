<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>About</title>
    <link rel="shortcut icon" type="x-icon" href="images/nav_logo.webp">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1"/>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="./sass/about.css">
    <link rel="shortcut icon" type="x-icon" href="images/transparent_logo.webp">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script type="text/javascript" src = "https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
  </head>

  <body>
  <jsp:include page="./menu.html" />
    <div class="swiper mySwiper">
      <div class="swiper-wrapper">
        <div class="swiper-slide">
          <img src="./images/img1.webp"/>
          <h3>karthik<br><span>Teamate</span></h3>
        </div>
        <div class="swiper-slide">
          <img src="./images/img2.webp"/>
          <h3>kiran<br><span>Teamate</span></h3>  
        </div>
        <div class="swiper-slide">
          <img src="./images/img2.webp"/>
          <h3>Shiva<br><span>Teamate</span></h3>
        </div>
      </div>
      <div class="swiper-pagination"></div>
    </div>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="./js/swipe.js"></script>
  </body>
</html>
