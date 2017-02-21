<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">

        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="css/mdb.min.css" rel="stylesheet">
        <!-- Your custom styles (optional) -->
        <link href="css/style.css" rel="stylesheet">

        <title>Genres</title>
    </head>
    
    
    <style>
        body{
            background-color:#F05053;
        }
        
        #MainContainer{
            margin-top: 50px;
            text-align: center;
        }
        
        .btn{
            background-color: white;
            width:150px;
            height: 72.75;
            color: black!important;
            margin-right:auto;
            margin-left: auto;
            font-size: 18;
        }
        .btn:hover{
            color:white;
        }
        
        .fa.fa-search.prefix.active,  .fa.fa-search.prefix{
            color:white;
        }
        
        .navbar-brand{
            font-weight: 800;
            font-size: 30;
        }
        
        #Logout{
            font-weight: 300;
            font-size: 20;
            text-align: right;
        }
        
        .navbar{
            
            font-size: 18;
        }
        .nav-link.link.waves-effect.wave-light{
            
        }
        
        .divider-new{
            color: white;
            height:0;
            
        }
        
        input.input-alternate{
            background-color: white;
            width: 800;
            padding-right: 0;
            margin: 0;
        }
        
        
        .row{
            margin: 0;
            padding:0;
            margin: 0;
        }
        
        
        button.btn.btn-default.btn-sm.dropdown-toggle.waves-effect.waves-light{
            height:35;
            margin: 0;
        }
        button.btn.btn-sm.btn-default.waves-effect.waves-light{
            height:35;
            margin: 0;
            padding-top: 0;
            padding-bottom: 0;
        }
        .dropdown-divider{
            padding:0;
            margin: 0;
        }
        .dropdown-menu{
           padding:0;
        }
        
        .dropdown-item{
            padding-top: 10;
            padding-bottom: 10;
        
        }
        td#TdButton{
            padding-top: 6.5;
            padding-bottom: 6.5;
            
        }
        
        table{
            color: aliceblue;
        }
        
    </style>
    
    
    <body>
        
        <nav class="navbar navbar-toggleable-md navbar-dark teal">
            <a class="navbar-brand" href="Customer.jsp">
                    C S Bookstore 
            </a>
            <div class="container">
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#Navigator" aria-controls="Navigator" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                
                
                
                <div class="collapse navbar-collapse" id="Navigator">
                    <ul class="navbar-nav mr-auto">
                        <li >
                            <a class="Nav-link">Home <span class="sr-only">(current)</span></a>
                        
                        </li>
                        <li class="nav-item active">
                            <a class="Nav-link">Genres</a>
                        </li>
                        <li>
                            <a class="Nav-link">Deals</a>
                        </li>
   
                    </ul>
                    
                    <form class="form-inline waves-effect waves-light">
                        <i class="fa fa-search prefix"></i>
                        <input class="form-control" type="text" placeholder="Search">
                        
                    </form>
                    
                    <li class="nav-item btn-group">
                        <a class="nav-link dropdown-toggle" id="Settings" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Account</a>
                        <div class="dropdown-menu" aria-labelledby="Settings">
                            <a class="dropdown-item">Settings</a>
                            <a class="dropdown-item">Purchase History</a>
                            <a class="dropdown-item" href="Login.jsp">Logout</a>
                        </div>
                    </li>
    
                </div>

                
            </div>
            
        
        </nav>
        
        <div class="container" id="MainContainer">
            <div class="row">
                <div class="col-md-10" id="ta">
                    <input type="text" class="input-alternate" placeholder="Search"/>
                    
                </div>
                
                <div class="col-md-2" id= "Search">
                    
                    <div class="btn-group">
                        <button class="btn btn-default btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">All</button>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">Books</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Magazines</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">CDs</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">DVDs</a>
                        </div>
                    </div>
                </div>
                
                
            </div>
        </div>
        
        <br>
        <div class="container">
            <div class="row">
                
            
                <div class="col-md-12">
                
                    <table class="table table-hover">

                        <thead>
                            <tr>
                                <th></th>
                                <th>Product Name</th>
                                <th>Author/Artist</th>
                                <th>Price</th>
                                <th></th>
                            </tr>
                        </thead>

                        <tbody>

                            <tr>
                                <th scope="row">
                                </th>
                                <td>Harry Potter and the Deathly Hollows</td>
                                <td>J.K. Rowling</td>
                                <td>500.00</td>
                                <td id="TdButton"><button type="button" class="btn btn-sm btn-default">Add to Cart</button></td>
                            </tr>

                            <tr>
                                <th scope="row">
                                </th>
                                <td>Harry Potter and the Half Blood Prince</td>
                                <td>J.K. Rowling</td>
                                <td>550.00</td>
                                <td id="TdButton"><button type="button" class="btn btn-sm btn-default">Add to Cart</button></td>
                            </tr>
                             <tr>
                                <th scope="row">
                                </th>
                                <td>Game of Thrones</td>
                                <td>George R. R. Martin</td>
                                <td>600.00</td>
                                <td id="TdButton"><button type="button" class="btn btn-sm btn-default">Add to Cart</button></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                </th>
                                <td>How to Get Away with Murder</td>
                                <td>Ralph Bravante</td>
                                <td>600.00</td>
                                <td id="TdButton"><button type="button" class="btn btn-sm btn-default">Add to Cart</button></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                </th>
                                <td>Programming 101</td>
                                <td>Miguel Cruz</td>
                                <td>600.00</td>
                                <td id="TdButton"><button type="button" class="btn btn-sm btn-default">Add to Cart</button></td>
                            </tr>



                        </tbody>


                    </table>
                    </center>
                </div>
        
            </div>
        
        </div>
        
        
         <script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>

        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="js/tether.min.js"></script>

        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="js/bootstrap.min.js"></script>

        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="js/mdb.min.js"></script>
        
        
        
        
        
        
        
        
        
        
    </body>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
</html>