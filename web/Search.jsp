
<%@page import="Services.ProductServices"%>
<%@page import="Beans.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%ResultSet resultset = null;%>
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


        #logout{
            background-color:transparent;
            border:none;
            padding-left: 120px;
            padding-right: 20px;
            width:auto;
            height:26px;
        }

        #products{
            padding:30px;
        }






    </style>

    <body>
                <%
//allow access only if session exists
            String user = null;
            //System.out.println(session.getAttribute("name"));
            if (((String)session.getAttribute("name")) == null|| ( (Integer) session.getAttribute("userType")) != 1) {
                System.out.println("MOVE BIIIIATCCHHHHHHH2222222 pasok");
                request.getRequestDispatcher("Login.jsp").forward(request, response);
            } else {
                System.out.println("MOVE BIIIIATCCHHHHHHH2222222");
                user = (String) session.getAttribute("name");
            }
            String userName = null;
            String sessionID = null;
            Cookie[] cookies = request.getCookies();
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("name")) {
                        userName = cookie.getValue();
                    }
                    if (cookie.getName().equals("JSESSIONID")) {
                        sessionID = cookie.getValue();
                    }
                }
            }

            ArrayList<Product> prodFeatured = ProductServices.retrieveFeaturedProducts();

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
                            <a>Hello, <%=userName%>!</a>
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


        <div class="container" id="MainContainer">
            <div class="row">

                <div class="col-md-4"></div>

                <div class="col-md-4 ">
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                            </div>
                            <input class="form-control" id="Search" name="Search" type="text" placeholder="Search here">
                        </div>  

                    </div>
                </div>
                <%

                    Class.forName("com.mysql.jdbc.Driver");
                    Connection connection = DriverManager.getConnection(
                            "jdbc:mysql://localhost:3306/secprog", "root", "p@ssword");

                    Statement statement = connection.createStatement();

                    resultset = statement.executeQuery(" select distinct producttype.prodType from producttype;");

                %>
                <div class="col-md-1">
                    <div class="btn-group">
                        <select name="prodType">
                            <option value="" disabled selected>Genre</option>
                            <%  while (resultset.next()) {%>
                            <option value ="<%= resultset.getString(1)%>"><%= resultset.getString(1)%></option>
                            <% }%>
                        </select>
                    </div>
                </div>
                
                        <div class="col-md-1"></div>
                        
                <div class="col-md-2">
                    <button type="submit" id="SubmitButton" class="btn btn-danger btn-block" name="Search">Search</button>
                </div>
            </div>


        </div>

        <div class="container">
            <div class="panel panel-default" id="products">
                <div class="row text-center">
                    <% for (int i = 0; i < prodFeatured.size(); i++) { %>
                    <div class="col-md-3">
                        <div class="thumbnail">
                            <img src="http://placehold.it/800x500" alt="">
                            <div class="caption">
                                <h3><% out.println(prodFeatured.get(i).getProdName()); %></h3>
                                <h6>by <% out.println(prodFeatured.get(i).getProdAuthor()); %></h6>
                                <p><% out.println(prodFeatured.get(i).getProdDesc()); %></p>
                                <p>
                                    <button type="button" class="btn btn-primary">Add to Cart</button>

                                    <button type="button" class="btn btn-warning">More Info</button>
                                </p>
                            </div>  
                        </div>
                    </div>
                    <%}%>





                </div>
                <div class="row text-center">
                    

                   

                    

                    
                    <div class="col-md-12" text-center>
                        <nav aria-label="Page Navigation">
                            <ul class="pagination">
                                <li class="disabled"><a href="#"><span>&laquo;</span></a></li>
                                <li class="disabled"><a href="#"><span><</span></a></li>
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">></a></li>
                                <li><a href="#"><span>&raquo;</span></a></li>
                            </ul>
                        </nav>
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

    <script>

        $(".dropdown-menu li a").click(function () {
            var selText = $(this).text();
            $(this).parents('.btn-group').find('.dropdown-toggle').html(selText + ' <span class="caret"></span>');
            $("#dropdownselected").val(selText);
        });



    </script>

</html>
