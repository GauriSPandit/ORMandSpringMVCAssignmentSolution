<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
		<!-- Required meta tags -->
		<meta charset="utf-8">
		<meta name="viewport"
			content="width=device-width, initial-scale=1, shrink-to-fit=no">
		
		<!-- Bootstrap CSS -->
		<link rel="stylesheet"
			href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
			integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
			crossorigin="anonymous">
		
		<title>Customer Add Update</title>
</head>

<body style="background-color: #DCE9F7; color: #2361A7">
		
		<a href="/CustomerRelationshipManagement/"> 
			<div class="ml-5 mt-5">	
				<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-house" viewBox="0 0 16 16">
			  		<path fill-rule="evenodd" d="M2 13.5V7h1v6.5a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5V7h1v6.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5zm11-11V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
			  		<path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
				</svg>
			</div>
		</a>
		
		<h3 class="text-center mt-3">${action} Customer Details</h3>	
	
		<div class="container border border-info border-5 grid text-center" style="margin-top: 10%">
	
				<form class="row g-3" action="/CustomerRelationshipManagement/save" method="POST">
 
 						  <input type="hidden" name="id" value="${Customer.id}"  />
  
						  <label class="ml-2 mt-3">First name</label>
						  <div class="col-md-5">
						    <input type="text" name="first_name" value="${Customer.first_name}" class="form-control mb-4 mt-2" placeholder="First Name" required>
						  </div>
  
						  <label class=" mt-3">Last Name</label>
						  <div class="col-md-5">  
						    <input type="text" name="last_name" value="${Customer.last_name}" class="form-control mb-4 mt-2" placeholder="Last Name" required>
						  </div>
  
						  <label class="ml-2 mr-4 mt-2">Email</label>
						  <div class="col-11">
						    <input type="text" name="email" value="${Customer.email}" class="form-control mb-4 ml-2" placeholder="Email" required>
						  </div>
  
  						  <button type="submit" class="btn btn-info mb-2" style="margin-left: 88%; width: 10%">Save</button>
  				</form>
		</div>
</body>

</html>