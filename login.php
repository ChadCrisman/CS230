<?php
require 'includes/header.php'
?>
<main>
<link rel="stylesheet" href="css/login.css">
    <div class="background">
        <div id="carouselIndicators" class="carousel-slide" data-ride="carousel" style="margin-top: 80px">
            <ol class="carousel-indicators">
                <li data-target="#carouselIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselIndicators" data-slide-to="1"></li>
                <li data-target="#carouselIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/carousel1.jpg" class="d-block " alt="First Image">
                </div>
                <div class="carousel-item">
                    <img src="images/carousel2.jpg" class="d-block " alt="Second Image">
                </div>
                <div class="carousel-item">
                    <img src="images/carousel4.jpg" class="d-block " alt="Third Image">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <div class="back-screen">
            <div class="h-40 center-me">
                <div class="my-auto">
                    <form class="form-signin" action="includes/login-helper.php" method="post" Style="background: lightblue;">
                        <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
                        <label for="inputEmail" class="sr-only">Username or Email Address</label>
                        <input type="text" id="inputEmail" name="uname" class="form-control" placeholder="Username/ Email" required
                            autofocus>
                        <label for="inputPassword" class="sr-only">Password</label>
                        <input type="password" id="inputPassword" name="pwd" class="form-control" placeholder="Password" required>
                        <div class="checkbox mb-3">
                            <label>
                                <input type="checkbox" value="remember-me"> Remember me
                            </label>
                        </div>
                        <button class="btn btn-lg btn-primary btn-block" name="login-submit" type="submit">Sign in</button>
                        <div class="text-center">Not a member? <a href="signup.php">Signup Today!</a></div>
                        <p class="mt-5 mb-3 text-muted">&copy; 2020-2021</p>
                    </form>
                </div>
            </div>
        </div>
    </div>
</main>