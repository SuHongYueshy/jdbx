<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="科大讯飞教育设备报修平台">
    <meta name="author" content="zjy">
    <link rel="icon" href="/jdbx_war_exploded/img/favicon.ico">

    <title>科大讯飞教育设备报修平台</title>
	<link href="/jdbx_war_exploded/css/common.css" rel="stylesheet">
    <!-- Bootstrap core CSS -->
    <link href="/jdbx_war_exploded/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug 
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
	-->
	
    <!-- Custom styles for this template -->
    <link href="/jdbx_war_exploded/css/user/signin.css" rel="stylesheet">
    
  </head>

  <body>
    <div class="container">
      <form class="form-signin" action="/jdbx_war_exploded/LoginServlet" method="post">
	      <c:if test="${error != null }">
	      	<div class="alert alert-danger" role="alert">
		        <strong>Error!</strong> ${error}
		    </div>
	      </c:if>
        <h2 class="form-signin-heading">科大讯飞教育设备报修平台</h2>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="text" name="username" id="inputEmail" class="form-control" value="${cookie.username.value }" placeholder="用户名" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" name="password" id="inputPassword" value="${cookie.password.value}"  class="form-control" placeholder="密码" required>
        <input class="form-control" type="text" style="width:300px;display:inline-block;" placeholder="验证码" name="image"> 
        <img src="/jdbx_war_exploded/VerifyCodeServlet" style="border-radius: 4px;" onclick="flushVerityCode()" id="VerifyCodeServlet">
        <div class="checkbox">
          <label style="color:#FFF">
            <input type="checkbox" name="rememberMe" value="yes" <c:if test='${cookie.username!=null}' >checked="true"</c:if>> 记住我
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
      </form>
    </div> <!-- /container -->
  </body>
</html>


<script type="text/javascript" src="/jdbx_war_exploded/js/jquery.js"></script>
<script type="text/javascript" src="/jdbx_war_exploded/js/bootstrap.min.js"></script>


<script type="text/javascript">
function flushVerityCode(){
	document.getElementById("VerifyCodeServlet").src = '/jdbx_war_exploded/VerifyCodeServlet?'+Math.random();
}
</script>