<%@page import="java.util.ArrayList"%>
<%@ page import="java.sql.*" %>
<%ResultSet resultset = null;%>
<!DOCTYPE html>
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
            text-align: center;
            width:150px;
        }
        .btn-group{

            font-weight: normal;
            width:100%;
            text-transform: none;
            background-color:white;
            margin-bottom: 0px;

        }

    </style>

    <body>
        <%
//allow access only if session exists
            String user = null;
            if (session.getAttribute("name") == null) {
                response.sendRedirect("Login.jsp");
            } else {
                user = (String) session.getAttribute("name");
            }
            String userName = null;
            String sessionID = null;
            Cookie[] cookies = request.getCookies();
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("Username")) {
                        userName = cookie.getValue();
                    }
                    if (cookie.getName().equals("JSESSIONID")) {
                        sessionID = cookie.getValue();
                    }
                }
            }
        %>

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
                            <a>Hello, <%=userName%>!</a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">My Account<span class="caret"></span></a>
                            <ul class="dropdown-menu" style="text-align:right;">
                                <li><a href="Settings.jsp">Account Settings</a></li>
                                <li><form action="Logout" method="POST"><button type="submit" value = "Logout"></button></form></li>
                                
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
                                <li class="active"><a href="#UserManagement" data-toggle="tab">User Management</a></li>
                                <li class=""><a href="#AddManager" data-toggle="tab">Add New Manager</a></li>
                                <li class=""><a href="#AddGenre" data-toggle="tab">Add New Genre</a></li>
                                <li class=""><a href="#CheckLogs" data-toggle="tab">Check Logs</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>

                <div class="col-md-8">
                    <div class="panel panel-default" id="MainPanel">
                        <div class="tab-content">

                            <div class="tab-pane active text-style" id="UserManagement">

                                <div class="row">
                                    <form role="form" method="GET" action="Search">
                                        <div class="col-md-2"></div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                                    </div>
                                                    <input class="form-control" id="SearchUsername" name="SearchUsername" type="text" placeholder="Search Username">

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <button type="submit" id="Search" class="btn btn-danger btn-block btn-small">Search</button>
                                        </div>
                                    </form>
                                </div>
                                </form>

                                <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
                                <form role="form" method="post" action="EditProfileServlet">
                                    <div class="row">
                                        <div class="col-md-5">
                                            Last Name:
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                                    </div>
                                                    <input class="form-control" id="SearchUsername" name="editLastname" value="${aResult.getLastName()}" type="text">
                                                    <input type="hidden" name="presentUsername" value="${aResult.getUsername()}">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            First Name:
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                                    </div>  
                                                    <input class="form-control" id="SearchUsername" name="editFirstname" value="${aResult.getFirstName()}" type="text">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-2">
                                            MI:
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                                    </div>
                                                    <input class="form-control" id="SearchUsername" name="editMI" maxlength="1" value="${aResult.getMI()}" type="text">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            Username:
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                                    </div>
                                                    <input class="form-control" id="SearchUsername" name="editUsername" value="${aResult.getUsername()}" type="text">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            Password:
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div class="input-group-addon"><span class="glyphicon glyphicon-" aria-hidden="true"></span>
                                                    </div>
                                                    <input class="form-control" id="SearchUsername" name="editPassword" value="${aResult.getPassword()}" type="password">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            Email Address:
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                                    </div>
                                                    <input class="form-control" id="SearchUsername" name="editEmail" value="${aResult.getEmailAddress()}" type="text">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            Mobile Number:
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                                    </div>
                                                    <input class="form-control" id="SearchUsername" name="editMobileNumber" maxlength = "11" value="${aResult.getMobileNumber()}" type="text">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            Delivery Address:
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                                    </div>
                                                    <input class="form-control" id="SearchUsername" name="editDeliveryAdd" value="${aResult.getDeliveryAddress()}" type="text">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            Status:
                                            <div class="btn-group">
                                                <select name="editStatus">
                                                    <option value="" disabled selected>Choose Status</option>
                                                    <option value="1">Locked</option>
                                                    <option value="0">Unlocked</option>
                                                </select>
                                            </div>

                                        </div>
                                        <div class="col-md-8">
                                            Billing Address:
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                                    </div>
                                                    <input class="form-control" id="SearchUsername" name="editBillingAdd" value="${aResult.getBillingAddress()}" type="text">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <button type="submit" id="SubmitButton" class="btn btn-danger btn-block">Apply</button>
                                </form>
                            </div>

                            <div class="tab-pane text-style" id="AddManager">
                                <form data-toggle="validator" role="form" method="POST" action = "AddManager">
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div class="input-group-addon"><span class=" Name glyphicon glyphicon-user" aria-hidden="true"></span>
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
                                                    <input class="form-control" id="Email" type="email" name="Email" placeholder="Email Address" data-error="Please input a valid email." required>                                                       
                                                </div>
                                                <div class="help-block with-errors"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <button type="submit" id="SubmitButton" class="btn btn-danger btn-block">Add</button>
                            </div>
                            </form>



                            <div class="tab-pane text-style" id="AddGenre" >
                                <form role="form" method="post" action="AddGenre">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div class="input-group-addon"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                                                    </div>
                                                    <input class="form-control" id="ProdTypeName" type="text" name ="ProdType" placeholder="Enter Product Type Name" required>
                                                </div>
                                            </div>
                                        </div>
                                        <%

                                            Class.forName("com.mysql.jdbc.Driver");
                                            Connection connection = DriverManager.getConnection(
                                                    "jdbc:mysql://localhost:3306/secprog", "root", "p@ssword");

                                            Statement statement = connection.createStatement();

                                            resultset = statement.executeQuery(" select distinct user.userUsername from user where user.userID NOT in  (select distinct productType.userID from productType) AND user.userTypeID=4;");

                                        %>

                                        <div class="col-md-3">
                                            <div class="btn-group">
                                                <select name="ProdManager">
                                                    <option value="" disabled selected>Choose Manager</option>
                                                    <%  while (resultset.next()) {%>
                                                    <option value ="<%= resultset.getString(1)%>"><%= resultset.getString(1)%></option>
                                                        <% }%>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-10">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div class="input-group-addon"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                                                    </div>
                                                    <input class="form-control" id="ProdDesc" type="text" name = "ProdDesc" placeholder="Enter Product Description" required>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <button type="submit" id="SubmitButton" class="btn btn-danger btn-block">Add</button> 
                                </form>
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



        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script>


            $(".dropdown-menu li a").click(function () {
                var selText = $(this).text();
                $(this).parents('.btn-group').find('.dropdown-toggle').html(selText + ' <span class="caret"></span>');
                $("#dropdownselected").val(selText);
            });

            if ("#Search").click(function() {

            var Status = ${aResult.getStatus()};
            if (Status === 0) {
            $(this).parents('.btn-group').find('.dropdown-toggle').html("Unlocked" + ' <span class="caret"></span>');
            } else {
            $(this).parents('.btn-group').find('.dropdown-toggle').html("Locked" + ' <span class="caret"></span>');
            }
            )};
        </script>

    </body>

</html>
