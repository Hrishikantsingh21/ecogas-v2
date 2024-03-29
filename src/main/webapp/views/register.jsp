<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register||Ecogas</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
</head>
<body>
    <div class="container">
    
        <div class="login">
            <div class="login-content">
                <h1>Let's you Sign up</h1>
                <h3>Welcome to our page <span><a href="/user/login">Sign In</a></span></h3>
                <h3>${ra }</h3>
                <% session.setAttribute("ra", " "); %>
                
                <form method="post" action ="/user/RegisterUser">
                    <input type="text" name="username" placeholder="Username" required>
                    <input type="text" name="name" placeholder="name" required>
                    <input type="email" name="email" placeholder="Email id" required>
                    <input type="text" name="add" placeholder="address" required>
                   	<blockquote class="options">
                   		<label for="usertype">User Type:</label>
						<select id="usertype" name="usertype">
					  		<option value="user">User</option>
					  		<option value="owner">Plant Owner</option>
						</select>
                   	</blockquote>
                    <input type="number" name="mobile"  class="email" pattern="[6-9]{1}[0-9]{9}"  placeholder ="mobile No." required/>
                   <input type="password" name="pass"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" placeholder ="password" required/>
                    <input type="password" name="repass"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" placeholder ="re-enter password" required/>
                    <input class="sign-btn" type="submit" value = "sign up" >
                </form>
            </div>
        </div>
        <div class="image">
            <img src="/views/images/login.png" alt="leaf">
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
    font-family: 'Poppins', sans-serif;
}
.container{
    width: 100vw;
    height: 100vh;
    display: flex;
}
.login{
    width: 50%;
    height: 100%;
    float: left;
    background-color: #4F772D;
    color: aliceblue;
}
.login .login-content{
    width: 80%;
    height: 100%;
    margin: 0 auto;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}
.login-content h1{
    font-size: 50px;
    font-weight: lighter;
}
.login-content h3{
    font-size: 25px;
    margin-bottom: 20px;
    font-weight: lighter;
}
.login-content form{
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}
.login-content form input{
    width: 300px;
    height: 40px;
    margin: 10px 0;
    border: none;
    border-radius: 5px;
    padding: 0 10px;
}
.options{
	display: flex;
	align-items: center;
	width: 300px;
	justify-content: space-between;
}
.options select {
	width: 60%;
	height: 30px;
	border-radius: 5px;
}
.image{
    width: 50%;
    display: flex;
    justify-content: center;
    align-items: center;
}
.image img{
    width: 80%;
}
.sign-btn{
    width: 300px;
    height: 40px;
    border: none;
    border-radius: 5px;
    background-color: #ECF39E;
    color: rgb(52, 8, 8);
    font-size: 20px;
    font-weight: bold;
    margin-top: 20px;
    cursor: pointer;
    box-shadow: 0 0 10px rgba(0,0,0,0.5);
}
.sign-btn:hover{
    background-color: #b1b774;
}
@media screen and (max-width: 768px){
    .container{
        flex-direction: column;
    }
    .login{
        width: 100%;
        height: 100%;
    }
    .image{
        display: none ;
    }
    .login-content form input{
        width: 80vw;
        max-width: 300px;
    }
    .options{
    	width: 80vw;
    	max-width: 300px;
    }
    .sign-btn{
        width: 80vw;
        max-width: 300px;
    }
}

</style>
</html>