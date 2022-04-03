<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">
<head>
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="ISO-8859-1">
    <title>HOME</title>
    <link rel="stylesheet" type="text/css" href="./style.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="smooth-scroll" >


    
         <nav class="navbar navbar-expand-md  navbar-dark bg-dark fixed-top">
                <div class="container-fluid">
                    <a class="navbar-brand" style="color: #ffbf00ec; font-size:xx-large;" href="#">ElectionBox</a>

                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsenavbar" >
                        <span class="navbar-toggler-icon"></span>
                      </button>

                      <div class="collapse navbar-collapse text-center" id="collapsenavbar">
                        <ul class="navbar-nav ml-auto ">
                            <li class="nav-item">
                              <a class="nav-link active text-white" aria-current="page" href="./home.jsp">Home</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link text-white" href="#footerr">About</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link text-white" href="#footerr">Contact</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link text-white" href="#services">Services</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link text-white" href="voterLogin.jsp">Voter Login</a>
                            </li>
                          </ul>


                      </div>

                     
                    
                </div>
        </nav>

        <div class="bgimg">
            
            <div class="nextbg" id="services">
            <h1>Easy & Secure Online Election</h1>
            <p>ElectionBox is the easiest way to improve voter engagement,<br>time, create a batter experience, and guarante election integrity </p>

          
            <a class="btnsignup btn btn-warning text-center text-white btn-lg" href="voterLogin.jsp">Voter Login</a>
            
            
            </div>
        </div>


        <section class="container ourservices" >
          
            <h1 class="text-center" >Services</h1>
            <p class="text-center">Industries We Serve</p>
<hr>
            <div class="row text-center">
                    <div class="col-lg-4 col-md-4 d-block m-auto">

                        
                      <ul>
                        <li>Associations</li><br>
                        <li>Unions</li><br>
                        <li>Law Firms</li><br>
                        
                      </ul>


                    </div>
                    <div class="col-lg-4 col-md-4 d-block m-auto">

                        
                      <ul>
                        <li>Universities</li><br>
                        <li>Award Shows</li><br>
                        <li>Schools</li><br>
                       
                      </ul>


                    </div>
                    <div class="col-lg-4 col-md-4 d-block m-auto">

                        
                      <ul>
                        <li>Healthcare & Hospitals</li><br>
                        <li>Sports</li><br>
                        <li>Clubs</li><br>
                      </ul>


                    </div>
                
                  


            </div>
            <hr>
            
        </section>






    
 <section class="" id="footerr">
   <!-- Remove the container if you want to extend the Footer to full width. -->
<div class=" my-5">

  <!-- Footer -->
  <footer
          class="text-center text-lg-start text-white"
          style="background-color: #1c2331"
          >
  
    <section
             class="d-flex justify-content-between p-4"
             style="background-color: #1c2331"
             >
    
    </section>
    

    <!-- Section: Links  -->
    <section class="">
      <div class="container text-center text-md-start mt-5">
        <!-- Grid row -->
        <div class="row mt-3">
          <!-- Grid column -->
          <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
            <!-- Content -->
            <h6 class="text-uppercase  fw-bold" style="color: #ffbf00ec;">About Us</h6>
            <hr
                class="mb-4 mt-0 d-inline-block mx-auto"
                style="width: 60px; background-color: whitesmoke; height: 2px"
                />
            <p> 
              Our team of Election Experts build and deliver easy to use, high integrity, affordable voting solutions 
              to voters and voting administrators of member-based organizations.
            </p>
          </div>
          <!-- Grid column -->

          <!-- Grid column -->
          <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
            <!-- Links -->
            <h6 class="text-uppercase fw-bold" style="color: #ffbf00ec;">explore</h6>
            <hr
                class="mb-4 mt-0 d-inline-block mx-auto"
                style="width: 60px; background-color: whitesmoke; height: 2px"
                />
            <p>
              <a href="#!" class="text-white">Home</a>
            </p>
            <p>
              <a href="#!" class="text-white">Admin Login</a>
            </p>
            <p>
              <a href="#!" class="text-white">Voter Registration</a>
            </p>
            <p>
              <a href="#!" class="text-white">Voter Login</a>
            </p>
          </div>
        

          <!-- Grid column -->
          <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
            <!-- Links -->
            <h6 class="text-uppercase fw-bold" style="color: #ffbf00ec;">Contact</h6>
            <hr
                class="mb-4 mt-0 d-inline-block mx-auto"
                style="width: 60px; background-color: whitesmoke; height: 2px"
                />
            <p><i class="fas fa-home mr-3"></i> Hudco, Aurangabad MH,431001.</p>
            <p><i class="fas fa-envelope mr-3"></i> election@box.com</p>
            <p><i class="fas fa-phone mr-3"></i> +91 234 567 88</p>
            <p><i class="fas fa-print mr-3"></i> +91 234 567 89</p>
          </div>
          <!-- Grid column -->
        </div>
        <!-- Grid row -->
      </div>
    </section>
    <!-- Section: Links  -->

    <!-- Copyright -->
    <div
         class="text-center p-3"
         style="background-color: rgba(0, 0, 0, 0.2)"
         >
      © 2022 Copyright |
      <a class="text-white" href="https://mdbootstrap.com/"
         >Onkar Tayde</a
        >
    </div>
  </footer>
  <!-- Footer -->
</div>
<!-- End of .container -->
 </section>   
</body>
</html>
