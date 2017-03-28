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
        <link href="css/secprog.css" rel="stylesheet">


    </head>

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
                                <li><a href="purchasehistory.jsp">Purchase History</a></li>
                                <li><form action="Logout" method="POST"><button type="submit" id="logout">Logout</button></form></li>
                            </ul>
                        </li>
                        
                    </ul>
                </div>
                
                
                
                
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>

        
        <div class="container" id="HistoryContainer">
            <div class="row">
                <legend id="history">Payment History</legend>
                <div class="panel panel-default">
                <table id="cart" class="table table-hover table-condensed">
                    <thead>
                        <tr>
                            <th style="width:20%">Product</th>
                            <th style="width:20%" class="text-center">Number of Pieces</th>
                            <th style="width:15%" class="text-center">Receipt No.</th>
                            <th style="width:15%" class="text-center">Total Price</th>
                            <th style="width:15%" class="text-center">Date of Purchase</th>
                            <th style="width:15%"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <td data-th="Product">
                            <div class="row">
                                <div class="col-sm-12">
                                    <ul>
                                        <li><h5 class="nomargin"> Product 1 </h5>
                                        <li><h5 class="nomargin"> Product 2 </h5>
                                        <li><h5 class="nomargin"> Product 3</h5>
                                    </ul>    
                                </div>
                            </div>
                        </td>
                        <td data-th="Author" name="Author" class="text-center">
                            <div class="row">
                                <div class="col-sm-10">
                                    <ul class="fa-ul">
                                        <li><h5 class="nomargin">1</h5>
                                        <li><h5 class="nomargin">2</h5>
                                        <li><h5 class="nomargin">3</h5>
                                    </ul>    
                                </div>
                            </div>
                        </td>
                        <td data-th="Genre" name="Genre" class="text-center">121112</td>
                        <td data-th="Price" name="Price" class="text-center">$1.99</td>
                        <td data-th="Rating" name="Rating" class="text-center">3/28/2017</td>
                        <td class="actions" data-th="">    
                            <button class="btn btn-danger btn-sm"><i class="fa fa-trash"></i> Delete</button>								
                        </td>
                        
                    </tbody>
                </table>
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

    <script>   
       
         $(".dropdown-menu li a").click(function () {
            var selText = $(this).text();
            $(this).parents('.btn-group').find('.dropdown-toggle').html(selText + ' <span class="caret"></span>');
            $("#dropdownselected").val(selText);
        });
        
       
        
    </script>

</html>
