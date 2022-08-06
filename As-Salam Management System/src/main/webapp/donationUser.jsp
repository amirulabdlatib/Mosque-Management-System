<%@ page language="java" contentType="text/html; charset=windows-1256" pageEncoding="windows-1256"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="java.text.DecimalFormat" %>

<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>As-Salam Management System</title>
  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
  <link rel="stylesheet" href="css/swiper-bundle.min.css">
  <link rel="stylesheet" href="css/style2.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
  <script src="js/jquery.js"></script> 
  <style>
  /*============ Google fonts ============*/
@import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');

/*======= CSS variables =======*/
:root{
  --white-color: #fff;
  --dark-color: #222;
  --body-bg-color: #fff;
  --section-bg-color:#527ABF;
  --section2-bg-color:#AC78A9;
  --navigation-item-hover-color: #3b5378;

  --text-shadow: 0 5px 25px rgba(0, 0, 0, 0.1);
  --box-shadow: 0 5px 25px rgb(0 0 0 / 20%);

  --scroll-bar-color: #fff;
  --scroll-thumb-color: #282f4e;
  --scroll-thumb-hover-color: #454f6b;
}

/*======= Scroll bar =======*/
::-webkit-scrollbar{
  width: 11px;
  background: var(--scroll-bar-color);
}

::-webkit-scrollbar-thumb{
  width: 100%;
  background: var(--scroll-thumb-color);
  border-radius: 2em;
}

::-webkit-scrollbar-thumb:hover{
  background: var(--scroll-thumb-hover-color);
}

/*======= Main CSS =======*/
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}

body{
  background: black;
}

section{
  position: relative;
  overflow: auto;
}

.donation{
  color: var(--white-color);
  background: black;
  padding: 35px 200px;
  transition: 0.3s ease;
  height:100vh;
}

/*======= Header =======*/
ul{
    list-style: none;
}

a{
    text-decoration: none;
}

header{
    position: sticky;
    top: 0px;
    background: linear-gradient(225deg, #527ABF, #AC78A9);
    width: 100%;
    z-index: 1000;
}

.container{
    max-width: 65rem;
    padding: 0 2rem;
    margin: 0 auto;
    display: flex;
    position: relative;
}
		
.content-table {
  	border-collapse: collapse;
	margin: auto;
	font-size: 0.9em;
	min-width: 400px;
	border-radius: 5px 5px 0 0;
	overflow: hidden;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

.content-table thead tr {
  background: linear-gradient(45deg, #527ABF, #AC78A9);
  color: #ffffff;
  text-align: left;
  font-weight: bold;
}

.content-table th,
.content-table td {
  padding: 12px 15px;
}

.content-table tbody tr {
  border-bottom: 1px solid #dddddd;
  background-color: #f3f3f3;
  color: black;
}

.content-table tbody tr:last-of-type {
  border-bottom: 2px solid #AC78A9;
}

/*======= Donation section =======*/
.donation h2{
  font-size: 3em;
  font-weight: 600;
  text-align: center;
}

/* Rounded border */
hr.rounded {
  border-top: 8px solid #527ABF;
  margin: auto;
  width: 10%;
  border-radius: 5px;
}

.donation p{
  margin: 25px 0;
  text-align: center;
}

.container-button { 
  height: 100px;
  position: relative;
}

.center-button {
  margin: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
}
      
  
  </style>
</head>
<body>

 <section class="donation" id="view1">
    <h2>Donation</h2>
    <hr class="rounded">
    <!-- Donation Section -->
    <p class="w3-opacity"><i>“Sedekah dapat menghapus dosa sebagaimana air memadamkan api.” <br>(Riwayat al-Tirmizi)</i></p>
    
    	<table class="content-table" border = "1">
    	
    		<thead>
    		<tr>
    		  <th>Donation name</th>
    		  <th>Total Donation(RM)</th>
    		  <th>Donation Month</th>
    		</tr>
    		</thead>
    	<tbody>
    	<c:forEach items="${donationList}" var="donate">
    			<tr>
    				<td><c:out value="${donate.donationName}"></c:out></td>
    				<td><c:out value="${donate.totalDonation}"></c:out></td>
    				<td><c:out value="${donate.donationMonth}"></c:out></td>
    			</tr>
    		</c:forEach>
    	</tbody>
</table>
			<div class="container-button">
  				<div class="center-button">
    				<button onclick="location.href='index.jsp'" class="back">Back</button>
  				</div>
			</div>
</section>
  
 
  <script src="js/swiper-bundle.min.js"></script>
  <script src="js/main.js"></script>
  

</body>
</html>