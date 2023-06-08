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

.regbutton {
	background-color: transparent;
	color: aliceblue;
	margin-left: 750px;
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
			<a href="#"><button class="regbutton">
					<span style="color: hsl(218, 81%, 75%)">HOME</span>
				</button></a>
		</div>
		<div>
			<a href="details"><button class="back">CUSTOMER-DETAILS</button></a>
		</div>
		<div>
			<a href="#"><button class="back">PROFILE</button></a>
		</div>
		<div>
			<a href="index"><button class="back">LOG-OUT</button></a>
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
			</div>
		</div>
	</section>
	<!-- Section: Design Block -->

</body>
</html>