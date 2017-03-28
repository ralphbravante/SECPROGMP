<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Welcome to Foobar Bookstore</title>

        <!-- Bootstrap Core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

        <!-- Plugin CSS -->
        <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

        <!-- Theme CSS -->
        <link href="css/creative.min.css" rel="stylesheet">
        <link href="css/cart.css" rel="stylesheet">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>

    <style>  

        .input-group{
            width:100%;
        }

        #SubmitButton{
            margin-right: auto;
            margin-left: auto;
            width: 50%;
        }


        #logout{
            background-color:transparent;
            border:none;
            padding-left: 120px;
            padding-right: 20px;
            width:auto;
            height:26px;
        }


        body {
            font-family: 'Merriweather', 'Helvetica Neue', Arial, sans-serif;
            background-image: url("img/pic1.jpeg");
            background-size:100%;
            background-repeat: no-repeat;
            height:auto;

        }

        .navbar-default{
            background-color:#333;
        }

        .btn.btn-danger.btn-block{
            background-color: #F05F40;
        }

        .container{
            margin-top: 100px;
            width:1300px;
        }

        legend{
            color: #F05F40;
            border-bottom-color: #F05F40;
        }


        .panel.panel-default{
            padding-left: 20px;
            padding-right: 20px;
            padding-bottom: 10px;
            padding-top: 10px;
        }

        .alert{
            display: none;
        }

        .btn.btn-default.dropdown-toggle{
            border-radius: 4px;
            border-style: solid;
            border-width: 0.5px;
            font-weight: normal;
            width:100%;
            text-transform: none;
            background-color:white;
            margin-bottom: 10px;

        }
        .dropdown-menu{
            margin-left: 15px;
            text-align: center;
            width:186.663px;
            margin-top: -10px;
        }


    </style>

    <body>
        <%
//allow access only if session exists
            String user = null;
            if (session.getAttribute("name") == null || session.getAttribute("userType") != "3") {
                request.getRequestDispatcher("Login.jsp");
            } else {
                user = (String) session.getAttribute("name");
            }
            String userName = null;
            String sessionID = null;
            Cookie[] cookies = request.getCookies();
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("Username")) {
                        userName = cookie.getValue();
                    }
                    if (cookie.getName().equals("JSESSIONID")) {
                        sessionID = cookie.getValue();
                    }
                }
            }
        %>  
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand page-scroll" href="#page-top">Foobar Bookstore</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a>Hello, <%=userName%>!</a>
                        </li>

                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">My Account<span class="caret"></span></a>
                            <ul class="dropdown-menu" style="text-align:right;">


                                <li><a href="Settings.jsp">Account Info</a></li>
                                <li><form action="Logout" method="POST"><button type="submit" id="logout">Logout</button></form></li>
                            </ul>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>
        <div class="container align-center">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">  
                        <div class="row">
                            <div class="col-md-10">
                            </div>
                            <div class="col-md-2">
                                <button href="#" class="btn btn-default dropdown-toggle align-right" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Sort by <span class="caret"></span></button>
                                <ul class="dropdown-menu" style="text-align:right;"> 
                                    <li><a href="#">Date</a></li>
                                    <li><a href="#">Month</a></li>
                                    <li><a href="#">Year</a></li>
                                </ul>
                            </div>
                        </div>

                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th style="width:10%">Product ID</th>
                                    <th style="width:10%">Purchase ID</th>
                                    <th style="width:10%">User ID</th>
                                    <th style="width:30%">Product Name</th>
                                    <th style="width:20%">Product Type</th>
                                    <th style="width:20%">Purchase Date</th>
                                </tr>
                            </thead>
                            <tbody>
                            <td data-th="Product ID">0112</td>
                            <td data-th="Purchase ID">24232</td>
                            <td data-th="User ID">021312</td>
                            <td data-th="Product Name">Harry Potter</td>
                            <td data-th="Product Type">Book</td>
                            <td data-th="Product ID">September 16, 2017</td>

                            </tbody>
                        </table> 
                    </div>
                </div>
            </div>
        </div>







        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
        <script src="vendor/scrollreveal/scrollreveal.min.js"></script>
        <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
        <script src="js/creative.min.js"></script>
        <script src="js/validator.js"></script>

    </body>

</html>
