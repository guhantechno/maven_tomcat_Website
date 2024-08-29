<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <link rel="stylesheet" href="home.css">
</head>
<style>
    a{
        text-decoration: none;
        color: rgb(252, 252, 252);
    }
    a:hover{
        color: aqua;
    }
</style>
<body>
    <header>
        <%@ include file="navbar.html" %>
    </header>
    <section>
        <div class="home-container">
            <div class="grid-container">
                <div class="grid-item">
                    <a href="link1.html">
                        <div class="image-container">
                            <img src="./image/dragonbooster.jpg" alt="Image 1">
                            <div class="caption">
                                <h3>Dragon Booster</h3>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="grid-item">
                    <a href="link2.html">
                        <div class="image-container">
                            <img src="./image/titans.jpg" alt="Image 2">
                            <div class="caption">
                                <h3>Teen Titans</h3>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="grid-item">
                    <a href="link3.html">
                        <div class="image-container">
                            <img src="./image/hmb.png" alt="Image 3">
                            <div class="caption">
                                <h3>Haddi Mera Buddy</h3>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
