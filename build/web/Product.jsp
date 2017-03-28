<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Welcome to Foobar Bookstore</title>

        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
        <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">
        <link href="css/creative.min.css" rel="stylesheet">


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
        
        .btn.btn-danger.btn-block{
          background-color: #F05F40;
         

        }
        
        body {
            font-family: 'Merriweather', 'Helvetica Neue', Arial, sans-serif;
            background-image: url("img/pic1.jpeg");
            background-size:100%;
            background-repeat: no-repeat;
            height:auto;
            
        }
    
        #NavPanel{
            width:300px; 
        }
        
        .navbar-default{
            background-color:#333;
        }

        legend{
            color: #F05F40;
            border-bottom-color: #F05F40;
        }
        
        #MainContainer{
            margin-top: 150px;
            margin-left: auto;
            margin-right: auto;

        }
        .tab-content{
            padding:20px;
        }
        
        .jumbotron{
            margin-top: 100px;
            padding-top:20px;
        }
        
        .btn{
            border-radius: 4px;
            font-weight: normal;
        }
        
        
        .panel.panel-default{
            padding-left: 20px;
            padding-right: 20px;
        }
        
        .alert{
            display: none;
        }

        
  
    </style>

    <body>
        
        <%
//allow access only if session exists
            String user = null;
            if (session.getAttribute("name") == null) {
                response.sendRedirect("Login.jsp");
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
                            <a>Hello, Customer!</a>
                        </li>
                        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span>Cart(0)</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">My Account<span class="caret"></span></a>
                            <ul class="dropdown-menu" style="text-align:right;">
                                
                                
                                <li><a href="Settings.jsp">Account Info</a></li>
                                <li><a href="#">Payment Info</a></li>
                                <li><a href="#">Purchase History</a></li>
                                <li><form action="Logout" method="POST"><button type="submit" id="logout">Logout</button></form></li>
                            </ul>
                        </li>
                        
                    </ul>
                </div>
                
                
                
                
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>

        
        <div class="container" id="MainContainer" >
            <div class="panel panel-default">
                <div class="row">
                <br>
                <legend> Product Info:</legend>
                    
                    <div class="col-md-5">
                       <img src="http://placehold.it/600x600" alt="..." class="img-responsive"/>
                    </div>
                    <div class="col-md-6">
                        
                        <h1>Harry Potter</h1>
                        <p>Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet.</p>
                        <p><b>Price: </b>$1.99</p>
                        <p><b>Author: </b>J.K. Rowling</p>
                        <p><b>Rating: </b>4.3/5.0</p>
                        <p><b>No. of Reviews: </b>12</p>

                    </div>
                </div>
                <div class="row">
                    <legend></legend>
                    <legend>Reviews:</legend>
                    <div class="col-md-2">
                        <img src="http://placehold.it/150x150" alt="..." class="img-responsive"/>
                    </div>
                    <div class="col-md-8">
                        <h3>Ralphie says...</h3>
                        <p>Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet.</p>
                        <p><b>Rating: </b>4/5</p>
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
