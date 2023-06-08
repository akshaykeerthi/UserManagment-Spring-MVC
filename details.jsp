<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>

<style>
.logo {
	font-size: 40px;
	color: aliceblue;
	margin-left: 30px;
	margin-top: 10px;
	font-family: Copperplate Gothic Light;
}

.regbutton {
	background-color: transparent;
	color: aliceblue;
	margin-left: 900px;
	font-size: 20px;
	font-family: Bahnschrift SemiBold;
	margin-top: 30px;
	border: transparent;
}

.back {
	background-color: transparent;
	color: aliceblue;
	font-size: 20px;
	font-family: Bahnschrift SemiBold;
	margin-top: 30px;
	margin-left: 30px;
	border: transparent;
}

.heading {
	font-size: 25px;
	text-align: center;
	margin-top: 90px;
}
</style>
</head>
<body style="background-color: black;">
	<div style="display: flex;">
		<div class="logo">
			<p>
				<b>MEDI+</b>
			</p>
		</div>
		<div>
			<a href="#"><button class="regbutton">
					HOME
				</button></a>
		</div>
		
		<div>
			<a href="addCustomer.jsp"><button class="back">ADD-CUSTOMER</button></a>
		</div>
		<div>
			<a href="homeLogin.jsp"><button class="back">BACK</button></a>
		</div>
		
	</div>


	<div class="container">
		<div class="row">


			<div class="col-md-12">
				<div class="heading">
					<h3 style="margin-bottom: 20px;color:white">
						<b>CUSTOMER INFORMATION</b>
					</h3>
				</div>
				<table align="center">
					<tr>
						<td style="font-style: italic; color: red;">${message}</td>

					</tr>
				</table>

				<div class="table-responsive table">


					<table id="mytable" class="table table-bordred table-striped"
						style="border-color: aliceblue;">

						<thead>

							<th>ID</th>
							<th>FIRST NAME</th>
							<th>LAST NAME</th>
							<th>CONTACT NUMBER</th>
							<th>DATE OF BIRTH</th>
							<th>GENDER</th>
							<th>ADDRESS</th>
							<th>NATIONALITY</th>
							<th>USERNAME</th>
							<th>DELETE</th>
							<th>EDIT</th>
						</thead>



						<tbody>
							<c:forEach items="${custList}" var="cust">
								<tr>

									<td>${cust.getId()}</td>
									<td>${cust.getFname()}</td>
									<td>${cust.getLname()}</td>
									<td>${cust.getMobileno()}</td>
									<td>${cust.getDob()}</td>
									<td>${cust.getGender()}</td>
									<td>${cust.getAddress()}</td>
									<td>${cust.getNationality()}</td>
									<td>${cust.getUsername()}</td>

									<td>
										
										<form name="delete" action="delete" >
											<input type="hidden" name="username"
												value="${cust.getUsername()}">
											<button type="submit">DELETE</button>
										</form>
									</td>
									<td>
										<form name="edit" action="edit" >
											<input type="hidden" name="id"
												value="${cust.getId()}">
												<button type="submit">EDIT</button>
										</form>
									</td>
								</tr>
							</c:forEach>
						</tbody>


					</table>
				</div>
			</div>
		</div>

		<script>
			$(document).ready(function() {
				$("#mytable #checkall").click(function() {
					if ($("#mytable #checkall").is(':checked')) {
						$("#mytable input[type=checkbox]").each(function() {
							$(this).prop("checked", true);
						});
					} else {
						$("#mytable input[type=checkbox]").each(function() {
							$(this).prop("checked", false);
						});
					}
				});

				$("[data-toggle=tooltip]").tooltip();
			});
		</script>
</body>
</html>


<!-- <td><p data-placement="top" data-toggle="tooltip"
										title="Edit">
										<button class="btn btn-primary btn-xs" data-title="Edit"
											data-toggle="modal" data-target="#edit">
											<span class="glyphicon glyphicon-pencil"></span>
										</button>
									</p></td>
								<td><p data-placement="top" data-toggle="tooltip"
										title="Delete">
										<button class="btn btn-danger btn-xs" data-title="Delete"
											data-toggle="modal" data-target="#delete">
											<span class="glyphicon glyphicon-trash"></span>
										</button>
								</p></td> -->