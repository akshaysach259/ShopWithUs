<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ShopWithUs</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<link rel="stylesheet" href="css/style.css">
</head>
<body>


   <!--Navbar -->
   <div>
        <nav class="mb-4 navbar navbar-expand-lg navbar-dark navbar1 navbar-fixed-top">
             <a>  <i class="fa fa-bell" style="color:#ececec"> Get Minimum 30-70% Off On Over 1,50,000 Styles!</i>  </a> 
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-4" aria-controls="navbarSupportedContent-4" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
               
                <div class="collapse navbar-collapse" id="navbarSupportedContent-4">
                    <ul class="navbar-nav ml-auto">
                    
                        <li class="nav-item active">
                            <a class="nav-link" href="#"><i class="fa fa-envelope"></i> Contact <span class="sr-only">(current)</span></a>
                        </li>
                        
                        <li class="nav-item">
                            <a class="nav-link" href="#"><i class="fa fa-gear"></i> Settings</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><i class="fa fa-question-circle"></i> Whats This !</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link " id="navbarDropdownMenuLink-4" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user"></i> <%=  request.getAttribute("name") %> </a>
                            
                              
                    </ul>
                </div>
            </nav>
       </div>
       
       <!-- Navbar 2 -->
       <div>
        <nav class="mb-4 navbar navbar-expand-lg navbar-default">
             <img alt="" class="logo" src="images/ShopWithUs.png">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-4" aria-controls="navbarSupportedContent-4" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button> 
                <div class="collapse navbar-collapse" id="navbarText">
                    <ul class="navbar-nav ml-auto">
                      <li class="nav-item">
                            <a class="nav-link waves-effect waves-light" href="#">Home</a>
                        </li>
                        <!-- Dropdown -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Clothing & Footwear </a>
                            <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
                                <a class="dropdown-item" href="#">Nike</a>
                                <a class="dropdown-item" href="#">Ralph Lauren</a>
                                <a class="dropdown-item" href="#">Old Navy</a>
                                <a class="dropdown-item" href="#">Forever 21</a>
                                <a class="dropdown-item" href="#">American Eagle</a>
                                <a class="dropdown-item" href="#">PacSun</a>
                                <a class="dropdown-item" href="#">H&M</a>
                                <a class="dropdown-item" href="#">Vineyard Vines</a>
                                <a class="dropdown-item" href="#">Nordstrom</a>
                                
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Electronics & Gadgets </a>
                            <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
                            <div class="container-fluid">
                                <a class="dropdown-item" href="#">Samsung</a>
                                
                                <a class="dropdown-item" href="#">Dell</a>
                                <a class="dropdown-item" href="#">HP</a>
                                <a class="dropdown-item" href="#">Apple</a>
                                <a class="dropdown-item" href="#">Canon</a>
                                <a class="dropdown-item" href="#">Nikon</a>
                                <a class="dropdown-item" href="#">Sony</a>
                                <a class="dropdown-item" href="#">GoPro</a>
                                <a class="dropdown-item" href="#">Sandisk</a>
                                </div>
                            </div>
                            
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Kitchen & Furniture </a>
                            <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
                            <div class="container-fluid">
                                <a class="dropdown-item" href="#">Samsung</a>
                                
                                <a class="dropdown-item" href="#">Dell</a>
                                <a class="dropdown-item" href="#">HP</a>
                                <a class="dropdown-item" href="#">Apple</a>
                                <a class="dropdown-item" href="#">Canon</a>
                                <a class="dropdown-item" href="#">Nikon</a>
                                <a class="dropdown-item" href="#">Sony</a>
                                <a class="dropdown-item" href="#">GoPro</a>
                                <a class="dropdown-item" href="#">Sandisk</a>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Bathroom & Toilet </a>
                            <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
                            <div class="container-fluid">
                                <a class="dropdown-item" href="#">Samsung</a>
                                
                                <a class="dropdown-item" href="#">Dell</a>
                                <a class="dropdown-item" href="#">HP</a>
                                <a class="dropdown-item" href="#">Apple</a>
                                <a class="dropdown-item" href="#">Canon</a>
                                <a class="dropdown-item" href="#">Nikon</a>
                                <a class="dropdown-item" href="#">Sony</a>
                                <a class="dropdown-item" href="#">GoPro</a>
                                <a class="dropdown-item" href="#">Sandisk</a>
                                </div>
                            </div>
                        </li>
                        
                       
                        <li class="nav-item">
                            <li class="nav-link"><a >Contact Us</a>
                        </li>
                    </ul>
                    </div>
                    
                    </nav>
                    </div>
       </body>
       </html>
       
