
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
            background-image: url("img/pic2.jpg");
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
        
        #Search{
            
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
                            <a>Hello, Admin!</a>
                        </li>
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

        <div class="container" id="MainContainer">
            <div class="row">
                <div class="col-md-4">
                    <div class="panel panel-default" id="NavPanel">
                        <nav class="nav-sidebar">
                            <ul class="nav tabs">
                                <li class="active"><a href="#AddManager" data-toggle="tab">Add New Manager</a></li>
                                <li class=""><a href="#AddProduct" data-toggle="tab">Add New Product</a></li>
                                <li class=""><a href="#UserManagement" data-toggle="tab">User Management</a></li>
                                <li class=""><a href="#CheckLogs" data-toggle="tab">Check Logs</a></li>
                            </ul>
                            </nav>
                    </div>
                </div>
                
                <div class="col-md-8">
                    <div class="panel panel-default" id="MainPanel">
                        <div class="tab-content">
                            
                            <div class="tab-pane active text-style" id="AddManager">
                                <form data-toggle="validator" role="form">
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                                    </div>
                                                    <input class="form-control" id="LastName" type="text" placeholder="Last Name" required>
                                                </div>
                                                
                                            </div>
                                        </div>

                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <input class="form-control" id="FirstName" type="text" placeholder="First Name" required/>
                                                </div>
                                                
                                            </div>
                                        </div>

                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <input class="form-control" id="MI" type="text" placeholder="M.I" required/>
                                                </div>
                                                
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                                    </div>
                                                    <input class="form-control" id="Username" type="text" placeholder="Username" required>
                                                </div>
                                                <div class="help-block with-errors"></div>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div class="input-group-addon"><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
                                                    </div>
                                                    <input class="form-control" id="MobileNum" pattern="0-9" type="text" placeholder="Mobile Number" required>
                                                </div>
                                                <div class="help-block with-errors"></div>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div class="input-group-addon"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
                                                    </div>
                                                    <input class="form-control" id="Password" data-minlength="6" type="password" placeholder="Password" data-error="Minimum of 6 Characters." required>
                                                </div>
                                                <div class="help-block with-errors"></div>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div class="input-group-addon"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
                                                    </div>
                                                    <input class="form-control" id="RePassword" type="password" placeholder="Confirm Password" data-match="#Password" data-error="Entered Passwords doesn't match." required>
                                                </div>
                                                <div class="help-block with-errors"></div>
                                            </div>
                                        </div>

                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div class="input-group-addon"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                                                    </div>
                                                    <input class="form-control" id="Email" type="email" placeholder="Email Address" data-error="Please input a valid email." required>                                                       
                                                </div>
                                                <div class="help-block with-errors"></div>
                                            </div>
                                        </div>

                                    </div>
                                    <button type="submit" id="SubmitButton" class="btn btn-danger btn-block">Add</button>
                                    </div>
                                </form>
                                
                            
                            
                            <div class="tab-pane text-style" id="AddProduct">
                                <div class="row">
                                    <div class="col-md-10">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-addon"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                                                </div>
                                                <input class="form-control" id="ProdName" type="text" placeholder="Enter Product Name" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-10">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-addon"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                                                </div>
                                                <input class="form-control" id="ProdType" type="text" placeholder="Enter Product Type" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-10">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-addon"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                                                </div>
                                                <input class="form-control" id="ProdDesc" type="text" placeholder="Enter Product Description" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-10">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-addon"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                                                </div>
                                                <input class="form-control" id="ProdPrice" type="text" placeholder="Enter Product Price" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-10">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-addon"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                                                </div>
                                                <input class="form-control" id="ProdPrice" type="text" placeholder="Enter Initial Product Count" required>
                                            </div>
                                        </div>
                                    </div>
                                    <button type="submit" id="SubmitButton" class="btn btn-danger btn-block">Add</button>
                                </div>
                            </div>
                            <div class="tab-pane text-style" id="UserManagement">
                                
                                <div class="row">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                                </div>
                                                <input class="form-control" id="SearchUsername" type="text" placeholder="Search Username">
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="tab-pane text-style" id="CheckLogs">
                                
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
