<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>



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

<style>
.logo {
	font-size: 40px;
	color: aliceblue;
	margin-left: 30px;
	margin-top: 10px;
	font-family: Copperplate Gothic Light;
}

.back {
	background-color: transparent;
	color: aliceblue;
	font-size: 20px;
	font-family: Bahnschrift SemiBold;
	margin-top: 30px;
	margin-left: 1000px;
	border: transparent;
}

.nation {
	width: 315px;
}

.card-registration {
	width: 700px;
}
</style>

</head>

<body style="background-color: rgb(9, 9, 9);">
	<div style="display: flex;">
		<div class="logo">
			<p>
				<b>MEDI+</b>
			</p>
		</div>

		<div>
			<a href="details.jsp"><button class="back">BACK</button></a>
		</div>
	</div>
	<section class="vh-100 gradient-custom">
		<div class="container   box">
			<div class="row justify-content-center align-items-center h-100">
				<div>

					<div class="card-body p-4 p-md-5 ">
						<h3 class="mb-4 pb-2 pb-md-0 mb-md-5" style="color: aliceblue;">Customer
							Registration</h3>
						<table align="center">
							<tr>
								<td style="font-style: italic; color: red;">${message}</td>

							</tr>
						</table>
						<form id="registerCustomer" modelAttribute="customer"
							action="registerCustomer" method="post">

							<div class="row">
								<div class="col-md-3 mb-4">

									<div class="form-outline">
										<label class="form-label" for="fname"
											style="color: aliceblue;">Customer ID<span
											style="color: red;"> *</span></label> <input type="number" id="id"
											name="id" class="form-control form-control-lg" 
											placeholder="ID" /> <span id="error_id" class="text-danger"></span>

									</div>

								</div>
								<div class="col-md-3 mb-4">

									<div class="form-outline">
										<label class="form-label" for="fname"
											style="color: aliceblue;">First Name<span
											style="color: red;"> *</span></label> <input type="text" id="fname"
											name="fname" class="form-control form-control-lg"
											placeholder="First Name" /> <span id="error_fname"
											class="text-danger"></span>

									</div>

								</div>
								<div class="col-md-3 mb-4">

									<div class="form-outline">
										<label class="form-label" for="lname"
											style="color: aliceblue;">Last Name <span
											style="color: red;"> *</span></label> <input type="text" id="lname"
											name="lname" class="form-control form-control-lg"
											placeholder="Last Name" /> <span id="error_lname"
											class="text-danger"></span>

									</div>

								</div>

								<div class="col-md-3 mb-4 d-flex align-items-center">

									<div class="form-outline datepicker w-100">
										<label for="birthdayDate" class="form-label"
											style="color: aliceblue;">Date of Birth <span
											style="color: red;"> *</span></label> <input type="date" name="dob"
											class="form-control form-control-lg" id="dob" /> <span
											id="error_dob" class="text-danger"></span>

									</div>


								</div>

								<div class="row">

									<div class="col-md-4 mb-4">

										<h6 class="mb-2 pb-1" style="color: aliceblue;">
											Gender: <span style="color: red;"> *</span>
										</h6>

										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="gender"
												id="femaleGender" value="female" checked /> <label
												class="form-check-label" for="femaleGender"
												style="color: aliceblue;">Female</label>
										</div>

										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="gender"
												id="maleGender" value="male" /> <label
												class="form-check-label" for="maleGender"
												style="color: aliceblue;">Male</label>
										</div>

										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="gender"
												id="otherGender" value="others" /> <label
												class="form-check-label" for="otherGender"
												style="color: aliceblue;">Other</label>
										</div>
									</div>

									<div class="col-md-4 ">
										<label class="form-label select-label"
											style="color: aliceblue;">Nationality <span
											style="color: red;"> *</span></label>
										<div class="col-12">
											<select class="select form-control-lg nation"
												name="nationality">
												<option value="null">Choose option</option>
												<option value="indian">Indian</option>
												<option value="american">American</option>
												<option value="british">British</option>
												<option value="mexican">Mexican</option>
												<option value="japanese">Japanese</option>
												<option value="singaporean">Singaporean</option>
												<option value="talibans">Talibans</option>
												<option value="chinese">chinese</option>
												<option value="Cambodians">Cambodians</option>
											</select>


										</div>

									</div>

									<div class="col-md-4 ">

										<div class="form-outline">
											<label class="form-label" for="phonenumber"
												style="color: aliceblue;"> Contact Number <span
												style="color: red;"> *</span></label> <input type="tel"
												id="phonenumber" class="form-control form-control-lg"
												name="mobileno" placeholder="Mobile Number" /> <span
												id="error_number" class="text-danger"></span>

										</div>

									</div>

								</div>



								<div>
									<div class="form-outline">
										<label class="form-label" for="address"
											style="color: aliceblue;"> Address <span
											style="color: red;"> *</span></label> <input type="text" id="address"
											name="address" class="form-control form-control-lg"
											placeholder="Address" /> <span id="error_address"
											class="text-danger"></span>

									</div>
								</div>
								<div class="row" style="margin-top: 10px;">
									<div class="col-md-6 mb-4"
										style="width: 380px; margin-left: 155px;">

										<div class="form-outline">
											<label class="form-label" for="username"
												style="color: aliceblue;">User Name <span
												style="color: red;"> *</span></label> <input type="text"
												id="username" class="form-control form-control-lg"
												name="username" placeholder="Username" /> <span
												id="error_username" class="text-danger"></span>

										</div>

									</div>
									<div class="col-md-6 mb-4"
										style="margin-left: 100px; width: 380px;">

										<div class="form-outline">
											<label class="form-label" for="password"
												style="color: aliceblue;"> Password <span
												style="color: red;"> *</span></label> <input type="text"
												id="password" class="form-control form-control-lg"
												name="password" placeholder="Password" /> <span
												id="error_password" class="text-danger"></span>

										</div>

									</div>
								</div>

								<div class="mt-4 pt-2" style="margin-left: 510px;">
									<input class="btn btn-primary btn-lg" type="submit" id="submit"
										value="Submit" />
								</div>
						</form>

					</div>
				</div>
			</div>
		</div>

	</section>

	<script>
		$(document)
				.ready(
						function() {
							$flag = 1;
							
							$("#id")
							.focusout(
									function() {
										if ($(this).val() == '') {
											$(this).css("border-color",
													"#FF0000");
											$('#submit').attr(
													'disabled', true);
											$("#error_id")
													.text(
															"* You have to enter your first name!");
										} else {
											$(this).css("border-color",
													"#2eb82e");
											$('#submit').attr(
													'disabled', false);
											$("#error_id").text("");

										}
									});

							$("#firstName")
									.focusout(
											function() {
												if ($(this).val() == '') {
													$(this).css("border-color",
															"#FF0000");
													$('#submit').attr(
															'disabled', true);
													$("#error_fname")
															.text(
																	"* You have to enter your first name!");
												} else {
													$(this).css("border-color",
															"#2eb82e");
													$('#submit').attr(
															'disabled', false);
													$("#error_fname").text("");

												}
											});
							$("#lastname")
									.focusout(
											function() {
												if ($(this).val() == '') {
													$(this).css("border-color",
															"#FF0000");
													$('#submit').attr(
															'disabled', true);
													$("#error_lname")
															.text(
																	"* You have to enter your Last name!");
												} else {
													$(this).css("border-color",
															"#2eb82e");
													$('#submit').attr(
															'disabled', false);
													$("#error_lname").text("");
												}
											});
							$("#dob")
									.focusout(
											function() {
												if ($(this).val() == '') {
													$(this).css("border-color",
															"#FF0000");
													$('#submit').attr(
															'disabled', true);
													$("#error_dob")
															.text(
																	"* You have to enter your Date of Birth!");
												} else {
													$(this).css("border-color",
															"#2eb82e");
													$('#submit').attr(
															'disabled', false);
													$("#error_dob").text("");
												}
											});
							$("#gender").focusout(function() {
								$(this).css("border-color", "#2eb82e");

							});

							$("#phoneNumber")
									.focusout(
											function() {
												$pho = $("#phoneNumber").val();
												if ($(this).val() == '') {
													$(this).css("border-color",
															"#FF0000");
													$('#submit').attr(
															'disabled', true);
													$("#error_number")
															.text(
																	"* You have to enter your Phone Number!");
												} else if ($pho.length != 10) {
													$(this).css("border-color",
															"#FF0000");
													$('#submit').attr(
															'disabled', true);
													$("#error_number")
															.text(
																	"* Lenght of Phone Number Should Be Ten");
												} else if (!$.isNumeric($pho)) {
													$(this).css("border-color",
															"#FF0000");
													$('#submit').attr(
															'disabled', true);
													$("#error_number")
															.text(
																	"* Phone Number Should Be Numeric");
												} else {
													$(this)
															.css(
																	{
																		"border-color" : "#2eb82e"
																	});
													$('#submit').attr(
															'disabled', false);
													$("#error_number").text("");
												}

											});

							$("#username")
									.focusout(
											function() {
												if ($(this).val() == '') {
													$(this).css("border-color",
															"#FF0000");
													$('#submit').attr(
															'disabled', true);
													$("#error_username")
															.text(
																	"* You have to create your own user name!");
												} else {
													$(this).css("border-color",
															"#2eb82e");
													$('#submit').attr(
															'disabled', false);
													$("#error_username").text(
															"");

												}
											});

							$("#password")
									.focusout(
											function() {
												if ($(this).val() == '') {
													$(this).css("border-color",
															"#FF0000");
													$('#submit').attr(
															'disabled', true);
													$("#error_password")
															.text(
																	"* You have to create your own password!");
												} else {
													$(this).css("border-color",
															"#2eb82e");
													$('#submit').attr(
															'disabled', false);
													$("#error_password").text(
															"");

												}
											});

							$("#address")
									.focusout(
											function() {
												if ($(this).val() == '') {
													$(this).css("border-color",
															"#FF0000");
													$('#submit').attr(
															'disabled', true);
													$("#error_address")
															.text(
																	"* You have to enter your home address!");
												} else {
													$(this).css("border-color",
															"#2eb82e");
													$('#submit').attr(
															'disabled', false);
													$("#error_address")
															.text("");

												}
											});

							$("#submit")
									.click(
											function() {
												if ($("#id").val() == '') {
													$("#id").css(
															"border-color",
															"#FF0000");
													$('#submit').attr(
															'disabled', true);
													$("#error_id")
															.text(
																	"* You have to enter your employee id!");
												}
												if ($("#fname").val() == '') {
													$("#fname").css(
															"border-color",
															"#FF0000");
													$('#submit').attr(
															'disabled', true);
													$("#error_fname")
															.text(
																	"* You have to enter your first name!");
												}
												if ($("#lname").val() == '') {
													$("#lname").css(
															"border-color",
															"#FF0000");
													$('#submit').attr(
															'disabled', true);
													$("#error_lname")
															.text(
																	"* You have to enter your Last name!");
												}
												if ($("#dob").val() == '') {
													$("#dob").css(
															"border-color",
															"#FF0000");
													$('#submit').attr(
															'disabled', true);
													$("#error_dob")
															.text(
																	"* You have to enter your Date of Birth!");
												}
												if ($("#address").val() == '') {
													$("#address").css(
															"border-color",
															"#FF0000");
													$('#submit').attr(
															'disabled', true);
													$("#error_address")
															.text(
																	"* You have to enter your Home address!");
												}
												if ($("#phonenumber").val() == '') {
													$("#phonenumber").css(
															"border-color",
															"#FF0000");
													$('#submit').attr(
															'disabled', true);
													$("#error_number")
															.text(
																	"* You have to enter your Phone Number!");
												}
												if ($("#username").val() == '') {
													$("#username").css(
															"border-color",
															"#FF0000");
													$('#submit').attr(
															'disabled', true);
													$("#error_username")
															.text(
																	"* You have to create your own username!");
												}
												if ($("#password").val() == '') {
													$("#password").css(
															"border-color",
															"#FF0000");
													$('#submit').attr(
															'disabled', true);
													$("#error_password")
															.text(
																	"* You have to create your own password!");
												}
											});

						});
	</script>
</body>
</html>