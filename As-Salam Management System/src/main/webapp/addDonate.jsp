<!DOCTYPE html>
<html>
  <head>
    <title>Register Donation</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <style>
      @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap');
      
      *{
      	margin: 0;
      	padding: 0;
      	box-sizing: border-box;
      	font-family: 'Poppins', sans-serif;
      }
      
      section{
      	position: relative;
      	width: 100%;
      	height: 100vh;
      	display: flex;
      }
      
      section .imgBx{
      	position: relative;
      	width: 50%;
      	height: 100%;
      }
      
      section .imgBx:before{
      	content: '';
      	position: absolute;
      	top:0;
      	left: 0;
      	width: 100%;
      	height: 100%;
      	background: linear-gradient(225deg, #527ABF, #AC78A9);
      	z-index: 1;
      	mix-blend-mode: screen;
      }
      
      section .imgBx img{
      	position: absolute;
      	top: 0;
      	left: 0;
      	width: 100%;
      	height: 100%;
      	object-fit: cover;
      }
      
      section .contentBx{
      	display: flex;
      	justify-content: center;
      	align-items: center;
      	width: 50%;
      	height: 100%;
      }
      
      section .contentBx .formBx{
      	width: 50%;
      }
      
      section .contentBx .formBx h2{
      	color: #607d8b;
      	font-weight: 600;
      	font-size: 1.5em;
      	text-transform: uppercase;
      	margin-bottom: 20px;
      	border-bottom: 4px solid #AC78A9;
      	display: inline-block;
      	letter-spacing: 1px;
      }
      
      section .contentBx .formBx .inputBx{
      	margin-bottom: 20px;
      }
      
      section .contentBx .formBx .backBx{
      	margin-bottom: 20px;
      }
      
      section .contentBx .formBx .inputBx button{
      	width: 100%;
      	padding: 10px 20px;
      	outline: none;
		font-weight: 400;
		border: 1px solid #607d8b;
      	font-size: 16px;
      	letter-spacing: 1px;
      	color: #607db8;
      	background: transparent;
      	border-radius: 30px;
      }
      
      section .contentBx .formBx .backBx button{
      	width: 100%;
      	padding: 10px 20px;
      	outline: none;
		font-weight: 400;
		border: 1px solid #607d8b;
      	font-size: 16px;
      	letter-spacing: 1px;
      	color: #607db8;
      	background: transparent;
      	border-radius: 30px;
      }
      
      section .contentBx .formBx .inputBx .insert{
      	width: 100%;
      	padding: 10px 20px;
      	outline: none;
		font-weight: 400;
		border: 1px solid #607d8b;
      	font-size: 16px;
      	letter-spacing: 1px;
      	color: #607db8;
      	background: transparent;
      	border-radius: 30px;
      }
      
      section .contentBx .formBx .inputBx .insert input{
      	width: 90%;
      	border: none;
      	outline: none;
      	background: transparent;
      }
      
      .insert i {
    	color: #888;
    	transition: color 0.4s;
      }
      
      .insert:focus ~ i {
      	color: #843bc7;
      }
      
      section .contentBx .formBx .inputBx button{
      	background: linear-gradient(to right, #527ABF, #AC78A9);
      	color: #fff;
      	outline: none;
      	border: none;
      	font-weight: 500;
      	cursor: pointer;
      	transition: opacity 0.4s;
      }
      
      section .contentBx .formBx .inputBx button:hover{
      	opacity: 0.9;
      }
      
      section .contentBx .formBx .backBx button:hover{
      	opacity: 0.9;
      }
      
      @media (max-width: 768px){
      	section .imgBx{
      		position: absolute;
      		top: 0;
      		left: 0;
      		width: 100%;
      		height: 100%;
      	}
      	
      	section .contentBx{
      		display: flex;
      		justify-content: center;
      		align-items: center;
      		width: 100%;
      		height: 100%;
      		z-index: 1;
     	}
     	
     	section .contentBx .formBx{
      		width: 50%;
      		padding: 40px;
      		background: rgb(255 255 255 / 0.9);
      		margin: 50px;
      		border-radius: 30px;
      	}
      }
      
    </style>
  </head>
  <body>
  
  <%
			int id = (int) session.getAttribute("userid");
			

		%>
  
    <section>
    	<div class="imgBx">
    		<img src="images/derma1.png">
    	</div>
    	<div class="contentBx">
    		<div class="formBx">
    			<h2>Donation registration</h2>
    			<form action="AddDonationServlet" method="post">
    				<div class="inputBx">
    					<div class="insert">
    						<i class="fas fa-address-card"></i>
    						<input id="userID" type="number"  name="userID" placeholder="Your user ID" value = <%=id%> readonly />
    					</div>
    				</div>
    				<div class="inputBx">
    					<div class="insert">
    						<i class="fas fa-pen"></i>
	  						<input id="dName" type="text" name="donationName" placeholder="Donation name" required="required">
    					</div>
    				</div>
    				<div class="inputBx">
    					<div class="insert">
    						<i class="fas fa-calculator"></i>
	  						<input id="dTotal" type="text" min = "0.00" name="donationTotal" placeholder="Total donation" required="required">
    					</div>
    				</div>
    				<div class="inputBx">
    					<div class="insert">
    						<i class="fas fa-calendar-alt"></i>
	  						<input id="dMonth" type="number" min = "1"  max = "12" name="donationMonth" placeholder="Month" required="required">
    					</div>
    				</div>
    				<div class="inputBx">
    					<button class="submit">Submit</button>
    				</div>
    				<div class="backBx">
    					<button onclick="history.back()" class="back">Back</button>
    				</div>
    			</form>
    		</div>
    	</div>
    </section>
  </body>
</html>