<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <link rel="stylesheet" href="./home.css">
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
                            <img src="./image/dragon.jpg" alt="Image 1">
                            <div class="caption">
                                <h3>Dragon Ball</h3>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="grid-item">
                    <a href="link2.html">
                        <div class="image-container">
                            <img src="./image/ben10.jpg" alt="Image 2">
                            <div class="caption">
                                <h3>Ben 10</h3>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="grid-item">
                    <a href="link3.html">
                        <div class="image-container">
                            <img src="./image/jackie.jpg" alt="Image 3">
                            <div class="caption">
                                <h3>Jackie Chan</h3>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
