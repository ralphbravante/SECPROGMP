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
        <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">
        <link href="css/creative.min.css" rel="stylesheet">
        <link href="css/cart.css" rel="stylesheet">
       

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
            width:1000px;
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
            margin-bottom: 0px;
            
        }
        .dropdown-menu{
            margin-left: 15px;
            text-align: center;
            width:209.60px;
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
                            <a>Hello, Manager!</a>
                        </li>
                        
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" type="button" aria-haspopup="true" aria-expanded="false">My Account<span class="caret"></span></a>
                            <ul class="dropdown-menu" style="text-align:right;">
                                
                                
                                <li><a href="Settings.html">Account Info</a></li>
                                <li><a href="#">Logout</a></li>
                            </ul>
                        </li>
                        
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container align-center">
            
            <div class="panel panel-default"> 
                <form data-toggle="validator" role="form">
                <legend>Add New Product:</legend>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="input-group">
                                    <input class="form-control" id="ProdName" type="text" placeholder="Product Name" required/>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <div class="input-group">
                                    <input class="form-control" id="ProdCount" type="text" placeholder="Product Count" required/>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <button href="#" class="btn btn-default dropdown-toggle align-right" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">Product Type<span class="caret"></span></button>
                            <ul class="dropdown-menu"> 
                                <li><a href="#">Book</a></li>
                                <li><a href="#">CD</a></li>
                                <li><a href="#">DVD</a></li>
                            </ul>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="input-group">
                                    <input class="form-control" id="ProdPrice" type="text" placeholder="Product Price" required/>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-10">
                            <div class="form-group">
                                <div class="input-group">
                                    <input class="form-control" id="ProdDesc" type="text" placeholder="Product Description" required/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <button type="submit" id="SubmitButton" class="btn btn-danger btn-block">Add</button><br>
                </form>
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
