<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
		
		<title>Customer Relationship Management</title>
</head>
<body>

		<img alt="" src="https://www.tidio.com/wp-content/uploads/customer-relations.png" style="width: 100%; height: 380px">

		<div class="container text-center ">

			<h1 class="" style="color:#303F9F; font-family: inherit; ">Customer Relationship Management</h1>
		
		</div>


		<div class="container">

				<a href="/CustomerRelationshipManagement/addNewCustomer"
				class="btn btn-outline-primary btn-m mb-3">
				New Customer 
				</a>
				 
				<table class="table table-bordered border-primary table-striped text-center">
					<thead class="table-primary">
						<tr>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Email</th>
							<th>Action</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach items="${Customers}" var="temp">
							<tr>
								<td><c:out value="${temp.first_name}" /></td>
								<td><c:out value="${temp.last_name}" /></td>
								<td><c:out value="${temp.email}" /></td>
								<td>
									<!-- Add "update" button/link --> <a
									href="/CustomerRelationshipManagement/updateCustomer?id=${temp.id}&action=1"
									class="btn btn-info btn-sm"> Update </a> <!-- Add "delete" button/link -->
									<a href="/CustomerRelationshipManagement/delete?id=${temp.id}"
									class="btn btn-danger btn-sm"
									onclick="if (!(confirm('Are you sure you want to delete this Customer Name: ${temp.first_name} ${temp.last_name}?'))) return false">
										Delete </a>
		
								</td>

							</tr>
					    </c:forEach>

					</tbody>
				</table>
		</div>	
</body>
</html>