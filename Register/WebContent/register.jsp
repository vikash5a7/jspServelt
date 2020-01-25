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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body
	style="background: url('img/background.jpg'); background-size: cover; background-attachment: fixed;">
	<div class="container" style="margin-top: 10%;">
		<div class="row">
			<div class="col m6 offset-m3 ">
				<div class="card">
					<div class="card-content">
						<h3 style="margin-top: 10px; align-items: center;">Register
							Here..!</h3>
						<!-- Creating form here -->
						<div class="form center-align">
							<form action="Register" method="post" id="myForm">
								<input type="text" name="user_name"
									placeholder="Enter your name" /> <input type="password"
									name="user_pass" placeholder="Enter your password" /> <input
									type="email" name="user_email" placeholder="Enter your mail" />
	
								<button type="submit" class="btn #7b1fa2 purple darken-2">Submit</button>
							</form>

						</div>


						<!-- Loader Here -->
						<div class="loader center-align"
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
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"
		integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
		crossorigin="anonymous"></script>

	<script>
  $(document).ready(function()
		  {
	  console.log("page is Ready....")
	  
	   $("#myForm").on('submit',function(event)
			   {
				event.preventDefault();	 
 				var f =(this).serialize();
  				console.log(f);
				 $.ajax(
		  	{
			  url:"Register",
			  data:f,
			  type:'POST',
			  sucess: function(data,textStatus, jqXHR)
			  {
				  console.log(data);
				  cosole.log("sucess....");
			  },
			  error: function (jqXHR, textStatus, errorThrown) {
				  console.log(data);
				  cosole.log("error....");
				
			}
		  });
		  })
		  
  
 </script>


</body>
</html>