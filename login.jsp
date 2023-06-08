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

.username #email_error, .password #pass_error {
	margin-top: 5px;
	width: 345px;
	font-size: 18px;
	color: #c62828;
	background: rgba(255, 0, 0, 0.1);
	text-align: center;
	padding: 5px 8px;
	border-radius: 3px;
	border: 1px solid #EF9A9A;
	display: none;
}
</style>

</head>
<body style="background-color: black">
	<div style="display: flex;">
		<div class="logo">
			<p>
				<b>MEDI+</b>
			</p>
		</div>
		<div>
			<a href="register.jsp"><button class="regbutton">REGISTRATION</button></a>
		</div>
		<div>
			<a href="index.jsp"><button class="back">HOME</button></a>
		</div>
	</div>

	<section class="background-radial-gradient overflow-hidden">


		<div
			class="container px-4 py-5 px-md-5 text-center text-lg-start my-5">
			<div class="row gx-lg-5 align-items-center mb-5">
				<div class="col-lg-6 mb-5 mb-lg-0" style="z-index: 10">
					<h1 class="my-5 display-5 fw-bold ls-tight"
						style="color: hsl(218, 81%, 95%)">
						There can always be healing, <br /> <span
							style="color: hsl(218, 81%, 75%)">even if there is no cure</span>
					</h1>
					<p class="mb-4 opacity-70" style="color: hsl(218, 81%, 85%)">
						Welcome messages for customers is an opportunity to build a strong
						relationship as it is the initial interaction and eventually make
						them more receptive in the future.</p>
				</div>

				<div class="col-lg-6 mb-5 mb-lg-0 position-relative">
					<div id="radius-shape-1"
						class="position-absolute rounded-circle shadow-5-strong"></div>
					<div id="radius-shape-2" class="position-absolute shadow-5-strong"></div>

					<div class="card bg-glass">
						<div class="card-body px-4 py-5 px-md-5">
							<form id="LoginForm" modelAttribute="login" action="loginProcess"
								method="post">
								<!-- 2 column grid layout with text inputs for the first and last names -->
								<div class="row">
									<div style="font-size: 20px;">
										<p>
											<b>LOGIN</b>
										</p>
									</div>

									<!-- Email input -->
									<div class="form-outline mb-4 username">
										<label class="form-label" for="form3Example3">Username</label>
										<input type="text" id="form3Example3" class="form-control"
											name="username" />
										<div id="error_username">Please fill up your Username</div>
									</div>

									<!-- Password input -->
									<div class="form-outline mb-4 password">
										<label class="form-label" for="form3Example4">Password</label>
										<input type="password" id="form3Example4" class="form-control"
											name="password" />
										<div id="error_password">Please fill up your Password</div>
									</div>



									<div class="row mb-4">
										<div class="col-md-6 d-flex justify-content-center">
											<!-- Checkbox -->
											<div class="form-check mb-3 mb-md-0">
												<input class="form-check-input" type="checkbox" value=""
													id="loginCheck" checked /> <label class="form-check-label"
													for="loginCheck"> Remember me </label>
											</div>
										</div>

										<div class="col-md-6 d-flex justify-content-center">
											<!-- Simple link -->
											<a href="#!">Forgot password?</a>
										</div>
									</div>

									<button type="submit" class="btn btn-primary btn-block mb-4">Sign
										in</button>

									<!-- Submit button -->
									<div class="text-center">
										<p>
											Not a member? <a href="register.jsp">Register</a>
										</p>

									</div>
							</form>
							<table align="center">
								<tr>
									<td style="font-style: italic; color: red;">${message}</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Section: Design Block -->
	<script src="valid.js"></script>
	<script>
    $(document).ready(function(){
		$flag=1;

    	

      $("#username").focusout(function(){
    		if($(this).val()==''){
        		$(this).css("border-color", "#FF0000");
        			$('#submit').attr('disabled',true);
        			 $("#error_username").text("* You have to create your own user name!");
        	}
        	else
        	{
        		$(this).css("border-color", "#2eb82e");
        		$('#submit').attr('disabled',false);
        		$("#error_username").text("");

        	}
       });

       $("#password").focusout(function(){
    		if($(this).val()==''){
        		$(this).css("border-color", "#FF0000");
        			$('#submit').attr('disabled',true);
        			 $("#error_password").text("* You have to create your own password!");
        	}
        	else
        	{
        		$(this).css("border-color", "#2eb82e");
        		$('#submit').attr('disabled',false);
        		$("#error_password").text("");

        	}
       });

       

   		$( "#submit" ).click(function() {
   		
          if($("#username" ).val()=='')
   			{
        		$("#username").css("border-color", "#FF0000");
        			$('#submit').attr('disabled',true);
        			 $("#error_username").text("* You have to create your own username!");
        	}
          if($("#password" ).val()=='')
   			{
        		$("#password").css("border-color", "#FF0000");
        			$('#submit').attr('disabled',true);
        			 $("#error_password").text("* You have to create your own password!");
        	}
			});


    	
	});

  </script>
</body>
</html>
