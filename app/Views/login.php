<!DOCTYPE html>
<html lang="pl">
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <title>Dopasuj Podróż</title>
    <link href="<?= base_url(); ?>/vendor/css/font-face.css" rel="stylesheet">
    <link href="<?= base_url(); ?>/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="<?= base_url(); ?>/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="<?= base_url(); ?>/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="<?= base_url(); ?>/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">
    <link href="<?= base_url(); ?>/vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="<?= base_url(); ?>/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="<?= base_url(); ?>/vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="<?= base_url(); ?>/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="<?= base_url(); ?>/vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="<?= base_url(); ?>/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="<?= base_url(); ?>/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">
    <link href="<?= base_url(); ?>/vendor/vector-map/jqvmap.min.css" rel="stylesheet" media="all">
    <link href="<?= base_url(); ?>/vendor/css/theme.css" rel="stylesheet" media="all">
</head>

<body class="animsition">
    <div class="page-wrapper">
        <div class="page-content--bge5">
            <div class="container">
                <div class="login-wrap">
                    <div class="login-content">
                        <div class="login-logo">
                            <a href="#">
                               
                            </a>
                        </div>
                        <div class="login-form">
                            <form action="/login" method="post">
                                <div class="form-group">
                                    <label>Email </label>
                                    <input class="au-input au-input--full" type="email" name="email" placeholder="Email">
                                </div>
                                <div class="form-group">
                                    <label>Hasło</label>
                                    <input class="au-input au-input--full" type="password" name="password" placeholder="hasło">
                                </div>
                                <div class="login-checkbox">
                                    <label>
                                        <a href="/password">Zapomniałeś hasło?</a>
                                    </label>
                                </div>
                                <button class="au-btn au-btn--block au-btn--green m-b-20" type="submit">Zaloguj</button>
                                <div class="social-login-content">
                                    
                                </div>
                            </form>
                            <div class="register-link">
                                <p>
                                    Nie masz konta <a href="<?= base_url(); ?>/register"> kliknij aby się zarejestrować</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Jquery JS-->
    <script src="<?= base_url(); ?>/vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="<?= base_url(); ?>/vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="<?= base_url(); ?>/vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="<?= base_url(); ?>/vendor/slick/slick.min.js">
    </script>
    <script src="<?= base_url(); ?>/vendor/wow/wow.min.js"></script>
    <script src="<?= base_url(); ?>/vendor/animsition/animsition.min.js"></script>
    <script src="<?= base_url(); ?>/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="<?= base_url(); ?>/vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="<?= base_url(); ?>/vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="<?= base_url(); ?>/vendor/circle-progress/circle-progress.min.js"></script>
    <script src="<?= base_url(); ?>/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="<?= base_url(); ?>/vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="<?= base_url(); ?>/vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="<?= base_url(); ?>/vendor/js/main.js"></script>

</body>

</html>
<!-- end document-->