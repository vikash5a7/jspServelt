<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

<!-- Compiled and minified JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="UTF-8">
<title>Login-page</title>
</head>
<body>
<body
	style="background: url('img/background.jpg'); background-size: cover; background-attachment: fixed;">
	<div class="container" style="margin-top: 10%;">
		<div class="row">
			<div class="col m6 offset-m3 ">
				<div class="card">
					<div class="card-content">
						<h3 style="margin-top: 10px; align-items: center;">Login Here</h3>
						<!-- Creating form here -->
						<div class="form center-align">
							<form action="Register" method="post" id="myForm">
								<input type="text" name="user_name"
									placeholder="Enter your name" /> <input type="password"
									name="user_pass" placeholder="Enter your password" /> 
								<button type="submit" id="sumbimt-btn" class="btn #7b1fa2 purple darken-2">Submit</button>
							</form>

						</div>


						<!-- Loader Here -->
						<div class="loader center-align" id="loader"
							style="margin-top: 10px; display: none;">
							<div class="preloader-wrapper big active">
								<div class="spinner-layer spinner-blue">
									<div class="circle-clipper left">
										<div class="circle"></div>
									</div>
									<div class="gap-patch">
										<div class="circle"></div>
									</div>
									<div class="circle-clipper right">
										<div class="circle"></div>
									</div>
								</div>

								<div class="spinner-layer spinner-red">
									<div class="circle-clipper left">
										<div class="circle"></div>
									</div>
									<div class="gap-patch">
										<div class="circle"></div>
									</div>
									<div class="circle-clipper right">
										<div class="circle"></div>
									</div>
								</div>

								<div class="spinner-layer spinner-yellow">
									<div class="circle-clipper left">
										<div class="circle"></div>
									</div>
									<div class="gap-patch">
										<div class="circle"></div>
									</div>
									<div class="circle-clipper right">
										<div class="circle"></div>
									</div>
								</div>

								<div class="spinner-layer spinner-green">
									<div class="circle-clipper left">
										<div class="circle"></div>
									</div>
									<div class="gap-patch">
										<div class="circle"></div>
									</div>
									<div class="circle-clipper right">
										<div class="circle"></div>
									</div>
								</div>

							</div>
							<h6>Please Wait...</h6>
						</div>

					</div>
				</div>
			</div>

		</div>
	</div>

</body>
</html>