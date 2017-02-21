<%-- 
    Document   : Manager
    Created on : 02 1, 17, 9:46:23 AM
    Author     : ralph
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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

        <title>Home</title>
    </head>
    <style>
        body{
            background-color:#F05053;

            /* background-image: url("pic1.jpeg");
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;*/
        }




        .card{
            width: 650px;
            margin-right:auto;
            margin-left: auto;
            border-radius: 10px;

        }

        .card-header{
            background-color: inherit;

        }

        .card-header{
            background-color: inherit;
        }

        .md-form{
            width: 500px;
            margin-right:auto;
            margin-left: auto;
            text-align: left;
        }

        .btn-danger{
            border-radius: 20px;
            width:300px;
            margin-right:auto;
            margin-left: auto;
        }

        .md-form:focus{
            border-color:#F05053; 
        }

        .fa.fa-user.prefix.active, .fa.fa-lock.prefix.active {
            color:#F05053;
        }

        #InputLabel{
            font-size: 12px;
            font-weight:600;

        }

        #InputLabel.active{
            color:#F05053;
        }
        
        .container{
            margin-left: auto;
            margin-right: auto;
        }
    </style>
    <body>
        <div class="container">
            </br>
            <div class="card text-center"> 
                </br></br>
                <h1>Hello Manager!!!</h1>
               
            
            <div class="container">
                        <form action="ProductServlet" method="POST">
                            <div class="row">
                                
                                <div class="col-md-8">
                                    <div class="md-form">
                                        <input type="text" id="prodName" name="prodName" class="form-control">
                                        <label id="InputLabel" for="prodName">Product Name</label>
                                    </div>
                                </div>
                                
                                <div class="col-md-8">
                                    <div class="md-form">
                                        <input type="text" id="prodType" name="prodType" class="form-control">
                                        <label id="InputLabel" for="prodType">Product Type</label>
                                    </div>
                                </div>
                                
                                <div class="col-md-8">
                                    <div class="md-form">
                                        <input type="text" id="prodDesc" name="prodDesc" class="form-control">
                                        <label id="InputLabel" for="prodDesc">Product Description</label>
                                    </div>
                                </div>
                                
                                <div class="col-md-8">
                                    <div class="md-form">
                                        <input type="text" id="prodCount" name="prodCount" class="form-control">
                                        <label id="InputLabel" for="prodCount">Product Count</label>
                                    </div>
                                </div>
                                
                                <div class="col-md-8">
                                    <div class="md-form">
                                        <input type="text" id="prodPrice" name="prodPrice" class="form-control">
                                        <label id="InputLabel" for="prodPrice">Product Price</label>
                                    </div>
                                </div>
                                
                                <div class="col-md-8">
                                    <div class="md-form">
                                        <input type="text" id="prodBy" name="prodBy" class="form-control">
                                        <label id="InputLabel" for="prodBy">Product By</label>
                                    </div>
                                </div>
                            </div>
                            
                            <br>
                                <button type="submit" id="SubmitButton" class="btn btn-danger">Add Product</button>
                            <br>
                        </form>
            </div>   
            
                        </div>

        </div>
        
        <form method="GET" action="Logout">
            <input type="submit" class="btn btn-danger" value="Sign Out" />
        </form>

        <!-- SCRIPTSSSSS -->


        <script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>

        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="js/tether.min.js"></script>

        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="js/bootstrap.min.js"></script>

        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="js/mdb.min.js"></script>


    </body>
</html>
