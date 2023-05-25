<!DOCTYPE html>
<html>
<head>
    <title>Venue booking</title>
    <meta http-equiv="Content-Language" content="English"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width", initial-scale=1.0>
    <meta name="description" content="Book your desired fuction hall venues with your voice">
    <link rel="stylesheet" type="text/css" href="sass/style.css" media="screen"/>
    <link rel="shortcut icon" type="x-icon" href="images/nav_logo.webp">
    <!-- linking Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script type="text/javascript" src = "https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
    <!-- linking animations -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js" integrity="sha512-Rd5Gf5A6chsunOJte+gKWyECMqkG8MgBYD1u80LOOJBfl6ka9CtatRrD4P0P5Q5V/z/ecvOCSYC8tLoWNrCpPg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!--linking Voice Assistant (ANA)Automated Network Assistant-->
    <script defer src="js\audio_visualizer.js"></script>
    <script defer src="js\Full_Screen.js"></script>
</head>
<body>

    <jsp:include page="menu.html"/>


    <audio style="display: none;" id="audio" autoplay src="media/Welcome_audio.mp3" style="width: 720px;"></audio>

    <div id='audio_visualizer'>
        <canvas id="canvas" width="720"></canvas>
    </div>

    <img id="right_svg" src="./images/left.svg">
    <img id="left_svg" src="./images/right.svg">


    <div id="wrap">
        <div id="header">
            <h1 class="animate__animated animate__bounce"><center><a href="#">Online Venue Booking</a></center></h1>
        </div>

        <div style="clear: both;"> 
        </div>
    <jsp:include page="./effects.html" />

    </div>
</body>
</html>