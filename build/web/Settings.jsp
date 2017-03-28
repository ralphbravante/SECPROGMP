<%@page import="Services.ProductServices"%>
<%@page import="Beans.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
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
                    <a class="navbar-brand page-scroll" href="Customer.jsp">Foobar Bookstore</a>
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
                                <li><a href="PaymentInfo.jsp">Purchase History</a></li>
                                <li><a href="purchasehistory.jsp">Purchase History</a></li>
                                <li><form action="Logout" method="POST"><button type="submit" id="logout">Logout</button></form></li>
                            </ul>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>

        <div class="container" id="defaultcontainer">

            <div class="panel panel-default" id="defaultpanel">

                <legend id="orangelegend">Your Account Info:</legend>


                <div class="row">
                    <div class="col-md-5">
                        Lastname:
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                </div>
                                <input class="form-control" id="LastName" type="text" value=${Settings.Lastname}>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5">
                        Firstname:
                        <div class="form-group">
                            <div class="input-group">
                                <input class="form-control" id="FirstName" type="text" required/>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2">
                        M.I.:
                        <div class="form-group">
                            <div class="input-group">
                                <input class="form-control" id="MI" type="text" required/>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        Username:
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                </div>
                                <input class="form-control" id="SearchUsername" type="text" required>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        Password:
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                </div>
                                <input class="form-control" id="SearchUsername" type="text" required>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        Email Address:
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                </div>
                                <input class="form-control" id="SearchUsername" type="text" required>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        Mobile Number:
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                </div>
                                <input class="form-control" id="SearchUsername" type="text" required>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8">
                        Delivery Address:
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                </div>
                                <input class="form-control" id="SearchUsername" type="text" required>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8">
                        Billing Address:
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                </div>
                                <input class="form-control" id="SearchUsername" type="text" required>
                            </div>
                        </div>
                    </div>
                </div>
                <button type="submit" id="SubmitButton" class="btn btn-danger btn-block">Apply</button>
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
