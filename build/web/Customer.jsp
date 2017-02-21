<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Welcome to CSBookStore</title>

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
        
        
        .panel.panel-default{
            padding-left: 20px;
            padding-right: 20px;
        }
        
        .alert{
            display: none;
        }
        
  
    </style>

    <body>

        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand page-scroll" href="#page-top">CSBookstore</a>
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
                                
                                
                                <li><a href="#">AccounSettings</a></li>
                                <li><a href="#">Logout</a></li>
                            </ul>
                        </li>
                        
                    </ul>
                </div>
                
                
                
                
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>

        
        <div class="container">
            <div class="jumbotron">
                <h1>Welcome to CSBookstore</h1>
                <p>The only online bookstore you'll ever need.</p>
                <br>
                <p><a class="btn btn-primary btn-lg" href="#" role="button">Check our products here</a></p>
            </div>
            <hr>
            
            <div class="panel panel-default">
                <div class="row">
                    <div class="col-lg-12">
                        <h3>Featured Items</h3>
                    </div>
                </div>
                
                <div class="row text-center">
                    <div class="col-md-3">
                        <div class="thumbnail">
                            <img src="http://placehold.it/800x500" alt="">
                            <div class="caption">
                                <h3>Feautured Item 1</h3>
                                <p>Description Here...</p>
                                <p>
                                    <button type="button" class="btn btn-primary">Add to Cart</button>
                                    
                                    <button type="button" class="btn btn-warning">More Info</button>
                                </p>
                            </div>  
                        </div>
                    </div>
                    
                    <div class="col-md-3">
                        <div class="thumbnail">
                            <img src="http://placehold.it/800x500" alt="">
                            <div class="caption">
                                <h3>Feautured Item 1</h3>
                                <p>Description Here...</p>
                                <p>
                                    <button type="button" class="btn btn-primary">Add to Cart</button>
                                    <button type="button" class="btn btn-warning">More Info</button>
                                </p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-3">
                        <div class="thumbnail">
                            <img src="http://placehold.it/800x500" alt="">
                            <div class="caption">
                                <h3>Feautured Item 1</h3>
                                <p>Description Here...</p>
                                <p>
                                    <button type="button" class="btn btn-primary">Add to Cart</button>
                                    <button type="button" class="btn btn-warning">More Info</button>
                                </p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-3">
                        <div class="thumbnail">
                            <img src="http://placehold.it/800x500" alt="">
                            <div class="caption">
                                <h3>Feautured Item 1</h3>
                                <p>Description Here...</p>
                                <p>
                                    <button type="button" class="btn btn-primary">Add to Cart</button>
                                    <button type="button" class="btn btn-warning">More Info</button>
                                </p>
                            </div>
                        </div>
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