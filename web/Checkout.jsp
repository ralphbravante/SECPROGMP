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

        #MainContainer{
            margin-top: 150px;
            margin-left: 20px;
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


        
        .alert{
            display: none;
        }
        
        #logout{
            background-color:transparent;
            border:none;
            padding-left: 120px;
            padding-right: 20px;
            width:auto;
            height:26px;
        }
        
        #items{
            background-color:rgb(250, 250, 250);
            padding-left: 30px;
            
        }
        
        #checkout{
            width: 1450px;
        }
        
        #itemcontainer{
            padding-top: 40px;
            padding-bottom: 30px;
            width:auto;
        }
        #light{
            color:#969696;
        }

        #pic{
            padding-left: 0px;
        }
        
        #cardinfo{
            font-size:11px;
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
                            <a>Hello, <%=userName %>!</a>
                        </li>
                        <li><a href="Cart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span>Cart(0)</a></li>
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
            
            
        <div class="container" id="checkout">
            <div class="row">
                <div class="col-md-7">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><b>Payment Method</b></h3>
                        </div>
                        <center>
                            <div class="panel-body">
                                <form data-toggle="validator" role="form">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h3 class="panel-title">Credit Card</h3>
                                        </div>
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-md-2"></div>
                                                <div class="col-md-8">
                                                    <div class="form-group">
                                                        <input type="text" id="cardinfo" class="form-control" placeholder="Card Number" required>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="row">
                                                <div class="col-md-2"></div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <input type="text" id="cardinfo" class="form-control" placeholder="Name on Card" required>
                                                    </div>
                                                </div>
                                                
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <input type="text" id="cardinfo" class="form-control" placeholder="Expiration (MM/YY)" required>
                                                    </div>
                                                </div>
                                                
                                                <div class="col-md-2">
                                                    <div class="form-group">
                                                        <input type="text" id="cardinfo" class="form-control" placeholder="Security Code" required>
                                                    </div>
                                                </div>
                                                
                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h3 class="panel-title">Billing Address</h3>
                                        </div>
                                        <div class="panel-body">
                                            <div class="form-group">
                                                <textarea type="text" rows="4" class="form-control"  placeholder="1001 ABC Building 30th St. Corner 10th Avenue, Bonifacio Global City, Taguig" required></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <button type="submit" class="btn btn-danger">Complete order</button>
                                </form>
                            </div>
                        </center> 
                    </div>                        
                </div>
                
                <div class="col-md-5" id="items">
                    <div class="container" id="itemcontainer">
                        <div class="row">
                            <div class="col-md-3" id="pic">
                                <img src="http://placehold.it/100x100" class="img-rounded" alt="">
                            </div>
                            <div class="col-md-4">
                                <h4><b>Harry Potter (1)</b></h4>
                                <h5 id="light">J.K. Rowling</h5>
                            </div>
                            <div class="col-md-2">
                                
                            </div>
                            <div class="col-md-3">
                                <h4>$5.99</h4>
                            </div>
                            
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-3" id="pic">
                                <img src="http://placehold.it/100x100" class="img-rounded" alt="">
                            </div>
                            <div class="col-md-4">
                                <h4><b>Harry Potter (1)</b></h4>
                                <h5 id="light">J.K. Rowling</h5>
                            </div>
                            <div class="col-md-2">
                                
                            </div>
                            <div class="col-md-3">
                                <h4>$5.99</h4>
                            </div>
                            
                        </div>
                    </div>
                    
                    <legend></legend>
                    
                    <form data-toggle="validator" role="form">
                        <div class="row">
                            <div class="col-md-8">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Gift Card or Discount Code" required>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <button type="submit" class="btn btn-danger">Apply</button>
                            </div>
                        </div>
                    </form>
                    
                    <legend></legend>
                    
                    <div class="row">
                        <div class="col-md-3">
                            <h5 id="light">Subtotal:</h5>
                            <h5 id="light">Shipping:</h5>
                        </div>
                        <div class="col-md-6">

                        </div>

                        <div class="col-md-3">
                            <h4>$11.98</h4>
                            <h4>$2.00</h4>
                        </div>

                    </div>
                    
                    <legend></legend>
                    <div class="row">
                        <div class="col-md-3">
                            <h4><b>Total:</b></h4>
                        </div>
                        <div class="col-md-6">

                        </div>

                        <div class="col-md-3">
                            <h4><b>$13.98</b></h4>
                        </div>

                    </div>
                    <br>
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
