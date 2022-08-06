<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Donation Page</title>

<style>
body {
  margin: auto;
  background: black;  
  font-family: 'Open Sans', sans-serif;
}

.info p {
  text-align:center;
  color: #fff;
  text-transform:none;
  font-weight:600;
  font-size:15px;
  margin-top:2px;
}

.info i {
  color:#F6AA93;
}
form h1 {
  font-size: 18px;
  background: #527ABF none repeat scroll 0% 0%;
  color: rgb(255, 255, 255);
  padding: 22px 25px;
  border-radius: 5px 5px 0px 0px;
  margin: auto;
  text-shadow: none; 
  text-align:left;
}

form {
  border-radius: 5px;
  max-width:700px;
  width:100%;
  margin: 5% auto;
  background-color: #FFFFFF;
  overflow: hidden;
}

p span {
  color: #F00;
}

p {
  margin: 0px;
  font-weight: 500;
  line-height: 2;
  color:#333;
}

h1 {
  text-align:center; 
  color: #fff;
  text-shadow: 1px 1px 0px #FFF;
  margin:50px 0px 0px 0px
}

input {
  border-radius: 0px 5px 5px 0px;
  border: 1px solid #eee;
  margin-bottom: 15px;
  width: 75%;
  height: 40px;
  float: left;
  padding: 0px 15px;
}

a {
  text-decoration:inherit
}

textarea {
  border-radius: 0px 5px 5px 0px;
  border: 1px solid #EEE;
  margin: 0;
  width: 75%;
  height: 130px; 
  float: left;
  padding: 0px 15px;
}

.form-group {
  overflow: hidden;
  clear: both;
}

.icon-case {
  width: 35px;
  float: left;
  border-radius: 5px 0px 0px 5px;
  background:#eeeeee;
  height:42px;
  position: relative;
  text-align: center;
  line-height:40px;
}

i {
  color:#555;
}

.contentform {
  padding: 10px 30px;
}

.bouton-contact{
  background-color: #527ABF;
  color: #FFF;
  text-align: center;
  width: 100%;
  border:0;
  padding: 17px 25px;
  border-radius: 0px 0px 5px 5px;
  cursor: pointer;
  margin-top: 40px;
  font-size: 18px;
}

.leftcontact {
  width:100%; 
  float:left;
  box-sizing: border-box;
  padding: 0px 15px 0px 0px;
}

.validation {
  display:none;
  margin: 0 0 10px;
  font-weight:400;
  font-size:13px;
  color: #DE5959;
}

#sendmessage {
  border:1px solid #fff;
  display:none;
  text-align:center;
  margin:10px 0;
  font-weight:600;
  margin-bottom:30px;
  background-color: #EBF6E0;
  color: #5F9025;
  border: 1px solid #B3DC82;
  padding: 13px 40px 13px 18px;
  border-radius: 3px;
  box-shadow: 0px 1px 1px 0px rgba(0, 0, 0, 0.03);
}

#sendmessage.show,.show  {
  display:block;
}
</style>


</head>
<body>

	<body>
	  <h1>${donate.donationName}</h1>
   <div class="info"><a href="https://www.grandvincent-marion.fr" target="_blank"><p> Updated by Masjid As-Salam </p></a></div>
  
  <form>
	    <h1>Information of Individual Donation :</h1>
	    
    <div class="contentform">
    	<div id="sendmessage"> Your message has been sent successfully. Thank you. </div>

    	<div class="leftcontact">
			      <div class="form-group">
			        <p>Donation ID</p>
			        <span class="icon-case"><i class="fa fa-male"></i></span>
				    <input type="text" value = <c:out value="${donate.donationID}"></c:out> name="nom" id="nom" data-rule="required" data-msg="Vérifiez votre saisie sur les champs : Le champ 'Nom' doit être renseigné." readonly/>
                	<div class="validation"></div>
       			</div> 

            <div class="form-group">
            <p>User ID</p>
            <span class="icon-case"><i class="fa fa-user"></i></span>
				<input type="text" value = <c:out value="${donate.userID}"></c:out> name="prenom" id="prenom" data-rule="required" data-msg="Vérifiez votre saisie sur les champs : Le champ 'Prénom' doit être renseigné." readonly/>
                <div class="validation"></div>
			</div>

			<div class="form-group">
            <p>Donation Name</p>
            <span class="icon-case"><i class="fa fa-user"></i></span>
				<input type="text" value="${donate.donationName}" name="prenom" id="prenom" data-rule="required" data-msg="Vérifiez votre saisie sur les champs : Le champ 'Prénom' doit être renseigné." readonly/>
                <div class="validation"></div>
			</div>

			<div class="form-group">
			<p>Total Donation(RM)</p>
			<span class="icon-case"><i class="fa fa-home"></i></span>
				<input type="text" value="${donate.totalDonation}" name="prenom" id="prenom" data-rule="required" data-msg="Vérifiez votre saisie sur les champs : Le champ 'Prénom' doit être renseigné." readonly/>
                <div class="validation"></div>
			</div>

			<div class="form-group">
			<p>Donation Month </p>
			<span class="icon-case"><i class="fa fa-location-arrow"></i></span>
				<input type="text" value="${donate.donationMonth}" name="prenom" id="prenom" data-rule="required" data-msg="Vérifiez votre saisie sur les champs : Le champ 'Prénom' doit être renseigné." readonly/>
                <div class="validation"></div>
			</div>
	</div>
	</div>

	
</form>	

  <button onclick="history.back()" type="submit" class="bouton-contact">Back</button>
</body>
</html>		

    				
</body>
</html>