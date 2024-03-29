<%@page import="com.ecogas.user.User"%>
<%@page import="com.ecogas.Plant.PlantDetails"%>
<%@page import="com.ecogas.booking.Booking"%>
<%@ page language="java"
contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <% 
    	Booking b = (Booking)session.getAttribute("ob");
    User u = (User)session.getAttribute("ou");
    	
    %>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Details | Ecogas</title>
  </head>
  <body>
    <%@include file="navowner.jsp" %>

    <div class="container">
      <div class="info-details">
        <h1>booking details</h1>
        <div class="info-box">
        <h3>order id: <%=b.getOrderId() %></h3>
        <h3>Item: <%=b.getType() %></h3>
        <h3>Amount: <%=b.getAmount() %></h3>
        <h3>Status: <%=b.getStatus() %></h3>
        <h3>User name: <%=u.getName() %></h3>
        <h3>User Mobile: <%=u.getMobile() %></h3>
        <h3>User add: <%=u.getAdd() %></h3>
        
         
        </div>
      </div>
      <div class="info-body">
        
        	<img alt="No image" src="/views/images/pic1.png">
       
      </div>
    </div>
  </body>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    body {
      font-family: "Poppins", sans-serif;
    }
    .container {
      width: 100vw;
      min-height: calc(100vh - 55px) !important;
      display: flex;
      background: rgb(19, 42, 19);
      background: linear-gradient(
        145deg,
        rgb(41, 19, 42) 15%,
        rgb(87, 44, 81) 68%
      );
      flex-wrap: wrap;
      color: aliceblue;
    }
    .info-details {
      margin-top: 40px;
      width: 50%;
      height: 90%;
      display: flex;
      flex-direction: column;
      align-items: left;
      padding: 30px;
      text-align: center;
    }
    .info-form {
      display: flex;
      width: 100%;
      flex-direction: column;
      align-items: center;
    }
    .info-box {
      position: relative;
      width: 100%;
      box-shadow: 20px 20px 50px rgba(0, 0, 0, 0.5);
      border-radius: 15px;
      background: rgba(255, 255, 255, 0.1);
      overflow: hidden;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: flex-start;
      border-top: 1px solid;
      border-top: 1px solid rgba(255, 255, 255, 0.5);
      border-left: 1px solid rgba(255, 255, 255, 0.5);
      backdrop-filter: blur(5px);
      color: aliceblue;
      padding: 20px;
    }
    .info-box h3 {
      font-size: 20px !important;
    }
    .info-details h1 {
      font-size: 40px;
      font-weight: 600;
      margin-bottom: 20px;
    }
    .info-details h3 {
      font-size: 36px;
      font-weight: 400;
      margin-bottom: 20px;
    }
    .info-body {
      margin-top: 40px;
      width: 50%;
      padding: 30px;
      display: flex;
      flex-direction: column;
      flex-wrap: wrap;
      align-items: center;
    }
   
    
   
    
    @media screen and (max-width: 768px) {
      .info-details {
        width: 100%;
        height: 100%;
        margin-top: 0;
        padding: 20px;
      }
      .info-body img{
       display: none;
      }
      .info-input {
        width: 90%;
      }
    }
  </style>
</html>
