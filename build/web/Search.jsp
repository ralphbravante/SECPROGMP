
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Welcome to CSBookStore</title>

        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
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
        
        .btn.btn-danger.btn-block{
          background-color: #F05F40;
         

        }
        .btn.btn-danger.btn-block.btn-small{
            border-radius: 4px;
            width: 80%!important;
            margin-left: 0px!important;
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
            margin-top: 100px;
            margin-left: 20px;
        }
        

        .btn.btn-default.dropdown-toggle{
            border-radius: 0px;
            background-color:none;
            margin-bottom: 0px;
            font-weight: normal;
            width:100%;
            text-transform: none;
        }
        .dropdown-menu{
            text-align: center;
            width:165px;
        }
        .btn-group{

            font-weight: normal;
            width:100%;
            text-transform: none;
            background-color:white;
            margin-bottom: 0px;

        }
      
        
        
        .btn{
            border-radius: 4px;
            font-weight: normal;
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
                                
                                
                                <li><a href="Settings.html">Account Info</a></li>
                                <li><a href="#">Payment Info</a></li>
                                <li><a href="#">Purchase History</a></li>
                                <li><a href="#">Logout</a></li>
                            </ul>
                        </li>
                        
                    </ul>
                </div>
                
                
                
                
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>

        
        <div class="container" id="MainContainer">
            <div class="row">

                <div class="col-md-4"></div>
                
                <div class="col-md-6 ">
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                            </div>
                            <input class="form-control" id="Search" name="Search" type="text" placeholder="Search here">
                        </div>
                    </div>
                </div>
   
                <div class="col-md-2">
                    <div class="btn-group">
                        <button href="#" id="AccountStatus" class="btn btn-default dropdown-toggle align-right" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">Genre<span class="caret"></span></button>
                        <ul id="Status" class="dropdown-menu">
                            
                            <li><a href="#">Books</a></li>
                            <li><a href="#">DVDs</a></li>
                            <li><a href="#">CDs</a></li>
                            <li><a href="#">Magazines</a></li>
                        </ul>
                    </div>
                </div>

            </div>

            
        </div>

        <div class="container">
            <div class="panel panel-default">
                <table id="cart" class="table table-hover table-condensed">
                    <thead>
                        <tr>
                            <th style="width:50%">Product</th>
                            <th style="width:10%" class="text-center">Author</th>
                            <th style="width:10%" class="text-center">Genre</th>
                            <th style="width:10%" class="text-center">Price</th>
                            <th style="width:8%" class="text-center">Rating</th>
                            <th style="width:12%"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <td data-th="Product">
                            <div class="row">
                                <div class="col-sm-4 hidden-xs"><img src="http://placehold.it/140x140" alt="..." class="img-responsive"/></div>
                                <div class="col-sm-8">
                                    <h4 class="nomargin">Harry Potter</h4>
                                    <p>Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet.</p>
                                </div>
                            </div>
                        </td>
                        <td data-th="Author" class="text-center">J.K. Rowling</td>
                        <td data-th="Genre" class="text-center">Book</td>
                        <td data-th="Price" class="text-center">$1.99</td>
                        <td data-th="Rating" class="text-center">4/5</td>
                        <td class="actions" data-th="">
                                
                            <button class="btn btn-danger btn-sm"><i class="fa fa-shopping-cart"></i>Add to Cart</button>								
                        </td>
                        
                    </tbody>
                </table>
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

    <script>   
       
         $("#AccountStatus li a").click(function () {
            var selText = $(this).text();
            $(this).parents('.btn-group').find('.dropdown-toggle').html(selText + ' <span class="caret"></span>');
            $("#dropdownselected").val(selText);
        });
        
       
        
    </script>

</html>
