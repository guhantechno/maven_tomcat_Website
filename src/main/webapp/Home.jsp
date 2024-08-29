<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <link rel="stylesheet" href="home.css">
</head>
<body style="background-image: url('home.jpg');">
    <header>
        <%@ include file="navbar.html" %>
    </header>
    <section>
    <div class="home-container">
        <div class="slider-container">
            <div class="slides">
                <div class="slide">
                    <img src="image/dragonBall.jpg" alt="Image 1">
                </div>
                <div class="slide">
                    <img src="image/Ben10.jpg" alt="Image 2">
                </div>
                <div class="slide">
                    <img src="image/HaddiMeraBuddy.jpg" alt="Image 3">
                </div>
                <div class="slide">
                    <img src="image/TeenTitans.jpg" alt="Image 4">
                </div>
            </div>
            <!-- Dots for each slide -->
            <div class="dot-container">
                <span class="dot" onclick="currentSlide(1)"></span>
                <span class="dot" onclick="currentSlide(2)"></span>
                <span class="dot" onclick="currentSlide(3)"></span>
                <span class="dot" onclick="currentSlide(4)"></span>
            </div>
        </div>
    </div>

    <script>
        let slideIndex = 1;
        showSlides(slideIndex);

        function currentSlide(n) {
            showSlides(slideIndex = n);
        }

        function showSlides(n) {
            let i;
            let slides = document.getElementsByClassName("slide");
            let dots = document.getElementsByClassName("dot");

            if (n > slides.length) { slideIndex = 1 }
            if (n < 1) { slideIndex = slides.length }

            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }

            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }

            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
        }

        // Automatic slide
        setInterval(() => {
            slideIndex++;
            if (slideIndex > document.getElementsByClassName("slide").length) { slideIndex = 1; }
            showSlides(slideIndex);
        }, 3000); // Change slide every 3 seconds
    </script>
    </section>
</body>
</html>
