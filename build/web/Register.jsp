
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
                    <a class="navbar-brand page-scroll" href="Login.jsp">Foobar Bookstore</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="Login.jsp">Home</a></li> 
                        <li><a href="Login.jsp">Login</a></li> 
                    </ul>
                </div>
                
                
                
                
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>

        
        <div class="container" id="defaultcontainer">
            <div class="panel panel-default" id="defaultpanel">
                <div class="panel-body">
                    <form data-toggle="validator" role="form" method="post" action="Register">
                        <legend id="orangelegend">User Info:</legend>
                        <div class="row">
                            <div class="col-md-5">
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                        </div>
                                        <input class="form-control" id="LastName" name="LastName" type="text" placeholder="Last Name" required>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-5">
                                <div class="form-group">
                                    <div class="input-group">
                                        <input class="form-control" id="FirstName" name="FirstName" type="text" placeholder="First Name" required/>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-2">
                                <div class="form-group">
                                    <div class="input-group">
                                        <input class="form-control" id="MI" name="MI" type="text" maxlength = "1" placeholder="M.I" required/>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                        </div>
                                        <input class="form-control" id="Username" name="Username" type="text" placeholder="Username" required>
                                    </div>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-addon"><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
                                        </div>
                                        <input class="form-control" id="MobileNum" name="MobileNum" maxlength = "11" type="text" placeholder="Mobile Number" required>
                                    </div>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-addon"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
                                        </div>
                                        <input class="form-control" id="Password" name="Password" data-minlength="6" type="password" placeholder="Password" data-error="Minimum of 6 Characters." required>
                                    </div>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-addon"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
                                        </div>
                                        <input class="form-control" id="RePassword" name="RePassword" type="password" placeholder="Confirm Password" data-match="#Password" data-error="Entered Passwords doesn't match." required>
                                    </div>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-addon"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                                        </div>
                                        <input class="form-control" id="Email" name="Email" type="email" placeholder="Email Address" data-error="Please input a valid email." required>                                                       
                                    </div>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div> 
                        </div>
                        <legend id="orangelegend">Shipping Info:</legend>
                        <div class="row">
                            <div class="col-md-10">
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-addon"><span class="glyphicon glyphicon-send" aria-hidden="true"></span>
                                        </div>
                                        <input class="form-control" id="DelAdd" name="DelAdd" type="text" placeholder="Delivery Address (House No./Unit No. Street, City, Country)" data-error="Please input a valid address." required>                                                       
                                    </div>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>

                            <div class="col-md-10">
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-addon"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>
                                        </div>
                                        <input class="form-control" id="BillAdd" name="BillAdd" type="text" placeholder="Billing Address (House No./Unit No. Street, City, Country)" data-error="Please input a valid address." required>                                                       
                                    </div>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                        </div>
                        <button type="submit" id="SubmitButton" class="btn btn-danger btn-block">Register</button><br>
                    </form>
                    
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
