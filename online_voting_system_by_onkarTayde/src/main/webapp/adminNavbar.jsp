<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
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
<body>
  <!-- navbar -->
    <nav class="navbar navbar-expand-md  navbar-dark bg-dark fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand" style="color: #ffbf00ec; font-size:xx-large;" href="#">ElectionBox</a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsenavbar" >
                <span class="navbar-toggler-icon"></span>
              </button>

              <div class="collapse navbar-collapse text-center" id="collapsenavbar">
                <ul class="navbar-nav ml-auto ">
            
                    
					
						<li class="nav-item"><a class="nav-link text-whit" href="adminDashboard.jsp">Home</a></li>
			<a href="adminlogin.jsp"class="text-white p-2 no-underline hidden md:block lg:block">Logout</a>
                  </ul>
              </div>        
      </div>
</nav>
</body>
</html>